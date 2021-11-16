package soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis;




import javafx.util.Pair;
import soot.*;
import soot.jimple.*;
import soot.jimple.infoflow.android.Analysis.AliasAnalysis.AndroidPointsToAnalysis;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.DialogMenuViewSearch.ViewUtil;
import soot.jimple.infoflow.android.haniyehUtil;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.DirectedGraph;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.ForwardFlowAnalysis;
import soot.util.ArraySet;

import java.io.FileNotFoundException;
import java.util.*;


public class resourceLeakAnalysis extends ForwardFlowAnalysis<Unit, LeakFlowSet> {

    // GPS
    private static ResourceInfo resourceInfo;
    public SootMethod parentMethod;
    public Unit currentUnit;
    public resourceLeakAnalysis(DirectedGraph graph, SootMethod parentMethod) {
        super(graph);
        this.parentMethod = parentMethod;
    }

    public static void setResource(ResourceInfo r){
        resourceInfo = r;
    }

    public static ResourceInfo getResource(){
        return resourceInfo;
    }

    public void start(){
        doAnalysis();
    }



    /**
     * Returns a flow set representing the initial set of the entry
     * node. In our case the entry node is the last node and it
     * should contain the empty set.
     * @return an empty set
     */
    @Override
    protected LeakFlowSet entryInitialFlow() {
        return new LeakFlowSet();
    }

    // this method iterates over units of method and calls generate func for the unit
    // to see if it's got a new result (release/acquire)
    // -> before checking this unit, first copy all results reached to it(inSet) to its output results(outSet)
    @Override
    protected void flowThrough(LeakFlowSet inSet, Unit unit, LeakFlowSet outSet) {

        this.currentUnit = unit;
        inSet.copy(outSet);

        try {
            generate(inSet, unit, outSet);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        try {
            kill(inSet, unit, outSet);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

    }


    @Override
    protected LeakFlowSet newInitialFlow() {
        return new LeakFlowSet();
    }


    // merge release results of branches that are going to be one (reach a same point)
    // we need only those release results that are in all branches ->
    // (if a branch does not have that release, we can have a dirty path then!)
    public void containBothPathsRelease(LeakFlowSet inSet1,LeakFlowSet inSet2,LeakFlowSet outSet) throws FileNotFoundException {

        for(Result result1: inSet1){
            if(result1.getType().equals("release"))
                outSet.remove(result1);
        }
        for(Result result2: inSet2){
            if(result2.getType().equals("release"))
                outSet.remove(result2);
        }
        for(Result result1: inSet1){
            for(Result result2: inSet2){
                if( result1.getType().equals("release") &&
                        result2.getType().equals("release") ){
                    if(resourceInfo.type.equals("type2")){
                        if(haniyehUtil.getInstance().compareRefTypeTwo((Local)result1.getFinalResource().get(0), result1.getFinalUnit(), result1.getFinalParentMethod(), (Local) result2.getFinalResource().get(0), result2.getFinalUnit(), result2.getFinalParentMethod(), (UnitGraph) graph)){
                            if(!outSet.contains(result1))
                                outSet.add(result1);
                            if(!outSet.contains(result2))
                                outSet.add(result2);
                            break;
                        }
                    }
                    else if(resourceInfo.type.equals("type1")){
                        if(compareRef(result1.getFinalResource(),result2.getFinalResource(),"strict")){
                            if(!outSet.contains(result1))
                                outSet.add(result1);
                            if(!outSet.contains(result2))
                                outSet.add(result2);
                            break;
                        }
                    }
                }
            }
        }
    }


    public LeakFlowSet myunion (LeakFlowSet set1, LeakFlowSet set2, LeakFlowSet set3) throws FileNotFoundException {

        set3.clear();
        LeakFlowSet tempSet = new LeakFlowSet();
        set1.union(set2, tempSet);
        for(Result result : tempSet){
            boolean found = false;
            for(Result outRes : set3){
                if(outRes.equals(result)){
                    found = true;
                    break;
                }
            }
            if(!found)
                set3.add(result);
        }
        containBothPathsRelease(set1,set2,set3);
        return set3;
    }

    // merge results of branches that are here at a same point ! (union used for acquires and containBothPathsRelease
    // is called for gathering release results of the branches -> check the description of this method above !
    @Override
    public void merge(LeakFlowSet inSet1, LeakFlowSet inSet2, LeakFlowSet outSet) {

        /*outSet.clear();

        LeakFlowSet tempSet = new LeakFlowSet();

        inSet1.union(inSet2, tempSet);

        for(Result result1 : tempSet){
            boolean found = false;
            for(Result outRes : outSet)
                if(outRes.equals(result1)){
                    found = true;
                    break;
                }
            if(!found)
                outSet.add(result1);

        }*/

        inSet1.union(inSet2, outSet);

        //false alarm or not ?
        try {
            containBothPathsRelease(inSet1,inSet2,outSet);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

    }




    // copies result set source in result set dest
    @Override
    protected void copy(LeakFlowSet source, LeakFlowSet dest){
        source.copy(dest);
    }

    // checks if important parameters/args of two acquire/release calls are the same
    // ex : acquire(r0) == release(x,r0) in parameter r0 tht is important for us
    public static boolean compareRef(List<Object> res1, List<Object> res2, String type){
        if(type.equals("strict")){
            Set<Object> set1 = new HashSet<>(res1);
            Set<Object> set2 = new HashSet<>(res2);
            return set1.equals(set2);
        }
        if(type.equals("non-strict")){

            for(int i = 0; i < res1.size(); i++){
                boolean can = false;
                if(res1.get(i) instanceof List<?>){
                    for(Object integer : (List<?>) res1.get(i)){
                        if(((List<?>)res2.get(i)).contains(integer)){
                            can = true;
                            break;
                        }

                    }
                }
                else{
                    can = res1.get(i).equals(res2.get(i));
                }

                if(!can)
                    return false;

            }
            return true;

        }
        return false;
    }





    // a new release result removes previous acquires in its path,
    // also a new acquire result removes prev release results in its path
    public LeakFlowSet checkAndRemove(LeakFlowSet outSet, Result newResult, String remove, String add) throws FileNotFoundException {

        int setSize = outSet.size();
        while(setSize != 0) {
            Result res = outSet.toList().get(setSize - 1);
            if(res.getType().equals(remove)){

                if(add.equals("acquire")){
                    if(resourceInfo.type.equals("type1")){
                        if(compareRef(newResult.getFinalResource(),res.getFinalResource(),"non-strict")){
                            // CAUTION !
                            outSet.remove(res);
                        }
                    }
                    else if(resourceInfo.type.equals("type2")){
                        if(haniyehUtil.getInstance().compareRefTypeTwo((Local)newResult.getFinalResource().get(0), newResult.getFinalUnit(), newResult.getFinalParentMethod(), (Local) res.getFinalResource().get(0), res.getFinalUnit(), res.getFinalParentMethod(), (UnitGraph) graph)){
                            // CAUTION !
                            outSet.remove(res);
                        }
                    }
                }
                else{
                    if(resourceInfo.type.equals("type1")){
                        if(compareRef(res.getFinalResource(),newResult.getFinalResource(),"strict")){
                            // CAUTION !
                            outSet.remove(res);
                        }
                    }
                    else if(resourceInfo.type.equals("type2")){
                        if(haniyehUtil.getInstance().compareRefTypeTwo((Local)res.getFinalResource().get(0), res.getFinalUnit(), res.getFinalParentMethod(), (Local) newResult.getFinalResource().get(0), newResult.getFinalUnit(), newResult.getFinalParentMethod(), (UnitGraph) graph)){
                            // CAUTION !
                            outSet.remove(res);
                        }
                    }
                }

            }
            setSize -= 1;
        }
        return outSet;
    }



    public Result updateResult(Result res, InvokeExpr invokeExpr, Unit unit) throws FileNotFoundException {

        if(resourceInfo.importantArgs.contains(invokeExpr.getMethod().getReturnType().toString())){
            if(unit instanceof DefinitionStmt){

                List<Object> targets = getNewUnitAndValue((UnitGraph) graph,unit);
                Local targetValue = (Local) targets.get(0);
                Unit targetUnit = (Unit) targets.get(1);

                res.setFinalUnit(targetUnit);
                List<Object> resources =  new ArrayList<Object>();
                resources.add(targetValue);
                res.setFinalResource(resources);
                res.setFinalParentMethod(parentMethod);
            }
        }
        return res;
    }


    // for invokeExpr , check if it's currently being analyzed (1) or it is not analyzed yet (2) or it's been analyzed before (3)
    // if 1 -> return
    // if 2 -> start its analysis by calling its start and save the results gathered after merge in results dic
    // after doing 2 or directly 3 -> for all results in results dic, first do checkAndRemove (previously explained) and
    // then add them to outSet !
    public void checkMethodStatus(Unit unitt, InvokeExpr invokeExpr, LeakFlowSet outSet) throws FileNotFoundException {


        SootMethod sootMethod = invokeExpr.getMethod();
        String acquireSignature = resourceInfo.getAcquireMethod();
        String releaseSignature = resourceInfo.getReleaseMethod();
        if(haniyehUtil.getInstance().beingVisitedMethods.contains(sootMethod.getSignature())){
            return;
        }
        if(haniyehUtil.getInstance().notVisitedMethodToAnalysis.containsKey(sootMethod.getSignature())) {

            resourceLeakAnalysis ra = (resourceLeakAnalysis) haniyehUtil.getInstance().notVisitedMethodToAnalysis.get(sootMethod.getSignature());
            haniyehUtil.getInstance().notVisitedMethodToAnalysis.remove(sootMethod.getSignature());
            haniyehUtil.getInstance().beingVisitedMethods.add(sootMethod.getSignature());
            ra.start();
            haniyehUtil.getInstance().beingVisitedMethods.remove(sootMethod.getSignature());
            List<Unit> lastUnits = ra.graph.getTails();

            List<Result> methodResults = new ArrayList<>();

            LeakFlowSet out = ra.getFlowAfter(lastUnits.get(0));
            if (lastUnits.size() > 1) {
                for (int i = 1; i < lastUnits.size(); i++) {
                    out = myunion(out, ra.getFlowAfter(lastUnits.get(i)), out);
                }
            }



            for (Result finalResult : out) {
                methodResults.add(finalResult);
            }

            if(!haniyehUtil.getInstance().results.containsKey(sootMethod.getSignature())){
                haniyehUtil.getInstance().results.put(sootMethod.getSignature(), new Pair<>(methodResults, ra));
            }


        }

        if(haniyehUtil.getInstance().results.containsKey(sootMethod.getSignature())) {

            List<Result> newResults = new ArrayList<>();
            for (Result rs : haniyehUtil.getInstance().results.get(sootMethod.getSignature()).getKey()) {
                String remove = "";
                String add = "";
                if (rs.getType().equals("acquire")) {
                    remove = "release";
                    add = "acquire" ;
                }
                else {
                    remove = "acquire";
                    add = "release";
                }


                Result newResult = new Result();
                newResult.setType(rs.getType());
                newResult.setFinalResource(rs.getFinalResource());
                newResult.setFinalMethod(rs.getFinalMethod());
                newResult.setFinalInvokeExpr(rs.getFinalInvokeExpr());
                newResult.setFinalUnit(rs.getFinalUnit());
                newResult.setFinalParentMethod(rs.getFinalParentMethod());
                if(resourceInfo.type.equals("type2")){
                    newResult = updateResult(newResult, invokeExpr, unitt);
                }

                outSet = checkAndRemove(outSet, newResult, remove, add);
                newResults.add(newResult);

            }

            for(Result newResult :newResults){
                if(checkNonRepetitiveResult(outSet, newResult)){
                    outSet.add(newResult);
                }

            }
        }

    }

    protected void kill(LeakFlowSet inSet, Unit unit, LeakFlowSet outSet) throws FileNotFoundException {
    }


    public List<Object> getNewUnitAndValue(UnitGraph graph,Unit unit){
        Local targetValue = (Local) ((DefinitionStmt) unit).getLeftOp();
        Unit targetUnit = unit;
        boolean found =  false;
        for(Unit afterUnit : graph.getSuccsOf(unit)){

            List<Unit> susUnits = new ArrayList<Unit>();
            susUnits.add(afterUnit);
            for(UnitBox ubx : afterUnit.getUnitBoxes())
                susUnits.add(ubx.getUnit());
            for(Unit afterUnit_x :susUnits){
                for(ValueBox vbx : afterUnit_x.getUseBoxes()) {
                    if (vbx.getValue().equivTo(((DefinitionStmt) unit).getLeftOp())) {
                        targetValue = (Local) vbx.getValue();
                        // doubt !
                        targetUnit = afterUnit_x;
                        found = true;
                        break;
                    }
                }
                if(found){
                    break;
                }
            }
            if(found){
                break;
            }
        }
        List<Object> targets = new ArrayList<Object>();
        targets.add((Local) targetValue);
        targets.add((Unit) targetUnit);
        return targets;
    }

    // produces a new result (See class Result in the directory)
    public Result produceNewResult(Unit unit, InvokeExpr invokeExpr) throws FileNotFoundException {

        Result result =  new Result();
        result.setFinalMethod(invokeExpr.getMethod());
        result.setFinalInvokeExpr(invokeExpr);
        result.setFinalParentMethod(parentMethod);
        result.setFinalUnit(unit);

        List<Object> finalResource = new ArrayList<>();
        if(resourceInfo.isRelease(invokeExpr)){
            result.setType("release");
            if(resourceInfo.type.equals("type1")){
                for(Integer i : resourceInfo.releaseMethodIndexes){
                    Value v;
                    if(i == -1)
                        v = ((InstanceInvokeExpr)invokeExpr).getBase();
                    else
                        v = invokeExpr.getArg(i);
                    if(v instanceof Local){
                        List<Integer> t = haniyehUtil.getInstance().getSourceOf((Local) v);
                        finalResource.add(t);
                    }
                    else{
                        finalResource.add(invokeExpr.getArg(i));
                    }

                }
            }
            else if(resourceInfo.type.equals("type2")){
                if(invokeExpr instanceof InstanceInvokeExpr){
                    finalResource.add((Local) ((InstanceInvokeExpr) invokeExpr).getBase());
                }
            }
        }
        else{
            result.setType("acquire");
            if(resourceInfo.type.equals("type1")){
                for(Integer i : resourceInfo.acquireMethodIndexes){
                    Value v;
                    if(i == -1)
                        v = ((InstanceInvokeExpr)invokeExpr).getBase();
                    else
                        v = invokeExpr.getArg(i);
                    if(v instanceof Local){
                        List<Integer> t = haniyehUtil.getInstance().getSourceOf((Local) v);
                        finalResource.add(t);
                    }
                    else{
                        finalResource.add(invokeExpr.getArg(i));
                    }
                }
            }
            else if(resourceInfo.type.equals("type2")){
                if(unit instanceof DefinitionStmt){
                    ///
                    List<Object> targets = getNewUnitAndValue((UnitGraph) graph,unit);
                    Local targetValue = (Local) targets.get(0);
                    Unit targetUnit = (Unit) targets.get(1);
                    ////

                    result.setFinalUnit(targetUnit);
                    finalResource.add(targetValue);
                }
                else{
                    return null;
                }
            }
        }
        result.setFinalResource(finalResource);

        System.out.println("new result : " + result.getFinalInvokeExpr() + "/" + result);
        return result;
    }




    public boolean checkNonRepetitiveResult(LeakFlowSet outSet, Result newResult){
        for(Result result : outSet){
            if(result.equals(newResult))
                return false;
        }
        return true;
    }


    // check this method call
    // 1) if it itself is a acquire/release method, produce a new results ( produceNewResult ) -
    // steps : first, produce new result, second remove opposite results in its path so far, third add it to output(outSet)!
    // 2) else, if it's another method, check its results and add them (in checkMethodStatus)

    protected void generate(LeakFlowSet inSet, Unit unit, LeakFlowSet outSet) throws FileNotFoundException {

        if(((Stmt)unit).containsInvokeExpr()){
            InvokeExpr invokeExpr = ((Stmt)unit).getInvokeExpr();

            if(resourceInfo.isRelease(invokeExpr)){
                Result newResult = produceNewResult(unit, invokeExpr);
                if(newResult != null){
                    outSet = checkAndRemove(outSet,newResult,"acquire", "release");
                    if(checkNonRepetitiveResult(outSet, newResult)){
                        outSet.add(newResult);
                    }
                }
            }
            else if(resourceInfo.isAcquire(invokeExpr)){
                Result newResult = produceNewResult(unit, invokeExpr);
                if(newResult != null){
                    outSet = checkAndRemove(outSet,newResult,"release", "acquire");
                    if(checkNonRepetitiveResult(outSet, newResult)){
                        outSet.add(newResult);
                    }
                }
            }
            else{
                checkMethodStatus(unit, invokeExpr, outSet);
            }
        }

        // dialog
        /*if(((Stmt)unit).containsInvokeExpr() && ((Stmt) unit).getInvokeExpr().getMethod().getDeclaringClass().hasSuperclass() &&
                ((Stmt) unit).getInvokeExpr().getMethod().getDeclaringClass().getSuperclass().getName().equals("android.app.Dialog")){

            AndroidPointsToAnalysis.unitt =(Unit) unit;
            AndroidPointsToAnalysis.main(new String[] {"dialogClick"});
            if(AndroidPointsToAnalysis.callBack != ""){
                SootMethod callBackMethod = findCallBackMethodForWidget(AndroidPointsToAnalysis.callBack.substring(4));
                if(callBackMethod != null){
                    final String[] targ = {((Stmt) unit).getInvokeExpr().getArg(0).toString()};
                    if(((Stmt) unit).getInvokeExpr().getArg(0) instanceof Local){
                        Local v = (Local) ((Stmt) unit).getInvokeExpr().getArg(0);
                        if(haniyehUtil.getInstance().pointToAnalysis.get(haniyehUtil.getInstance().currentActivity).reachingObjects((Local) v) instanceof DoublePointsToSet){
                            ((DoublePointsToSet)haniyehUtil.getInstance().pointToAnalysis.get(haniyehUtil.getInstance().currentActivity).reachingObjects((Local) v)).getOldSet().forall(new P2SetVisitor() {
                                @Override
                                public void visit(Node n) {
                                    if(n instanceof  AllocNode){
                                        targ[0] = ((AllocNode) n).getNewExpr().toString();
                                    }
                                }
                            });
                        }
                    }
                    String dislogText = "";
                    if(((Stmt)unit).getInvokeExpr() instanceof InstanceInvokeExpr){
                        List<SootMethod> seenMethods = new ArrayList<>();
                        Pair<Unit, SootMethod> setTitle = doSearchWidget(unit, ((InstanceInvokeExpr)((Stmt)unit).getInvokeExpr()).getBase(), parentMethod, seenMethods, "setTitle");
                        dislogText = ((Stmt)setTitle.getKey()).getInvokeExpr().getArg(0).toString();
                    }
                    haniyehUtil.getInstance().views.put(targ[0], new Pair<>(callBackMethod, dislogText));
                }

            }
        }*/

        // find view related to this onClick (it can be a new analysis later!)
        if(unit.toString().startsWith("virtualinvoke") && (unit.toString().contains("setOnClickListener"))){
            AndroidPointsToAnalysis.unitt =(Unit) unit;
            AndroidPointsToAnalysis.main(new String[] {"viewClick"});
            List<SootMethod> seenMethods = new ArrayList<>();
            Pair<Unit, SootMethod> findViewById = ViewUtil.getInstance().doSearchWidget(unit, ((InstanceInvokeExpr)((Stmt)unit).getInvokeExpr()).getBase(), parentMethod, seenMethods, "findViewById");
            if(findViewById != null){
                ViewUtil.getInstance().addWidget(findViewById, unit);
            }
        }

        // find the new activity that current activity has a path to through this callback
        if (unit.toString().startsWith("virtualinvoke") && (unit.toString().contains("startActivity")
                || unit.toString().contains("startActivityIfNeeded") || unit.toString().contains("startService") || unit.toString().contains("startForegroundService") )) {

            AndroidPointsToAnalysis.unitt =(Unit) unit;
            AndroidPointsToAnalysis.main(new String[] {"intentInit"});

        }

    }

}

