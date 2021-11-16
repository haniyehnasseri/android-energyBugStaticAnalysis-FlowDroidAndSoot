package soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.DialogMenuViewSearch;






import javafx.util.Pair;
import soot.*;
import soot.jimple.*;
import soot.jimple.infoflow.android.Analysis.AliasAnalysis.AndroidPointsToAnalysis;

import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.ResourceInfo;

import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.Result;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.resourceLeakAnalysis;
import soot.jimple.infoflow.android.haniyehUtil;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.DirectedGraph;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.ForwardFlowAnalysis;
import soot.util.ArraySet;

import java.io.FileNotFoundException;
import java.util.*;

//public class ViewSearchAnalysis extends ForwardFlowAnalysis<Unit, ViewFlowSet> {
//
//    // GPS
//    private static ResourceInfo resourceInfo;
//    public SootMethod parentMethod;
//    public Unit currentUnit;
//    //public ViewFlowSet emptySet;
//    public ViewSearchAnalysis(DirectedGraph graph, SootMethod parentMethod) {
//        super(graph);
//        //emptySet = new ViewFlowSet();
//        this.parentMethod = parentMethod;
//    }
//
//    public static void setResource(ResourceInfo r){
//        resourceInfo = r;
//    }
//
//    public static ResourceInfo getResource(){
//        return resourceInfo;
//    }
//
//    public void start(){
//        //newInitialFlow();
//
//        doAnalysis();
//    }
//
//
//
//    /**
//     * Returns a flow set representing the initial set of the entry
//     * node. In our case the entry node is the last node and it
//     * should contain the empty set.
//     * @return an empty set
//     */
//    @Override
//    protected ViewFlowSet entryInitialFlow() {
//        return new ViewFlowSet();
//    }
//
//    // this method iterates over units of method and calls generate func for the unit
//    // to see if it's got a new ViewResult (release/acquire)
//    // -> before checking this unit, first copy all ViewResults reached to it(inSet) to its output ViewResults(outSet)
//    @Override
//    protected void flowThrough(ViewFlowSet inSet, Unit unit, ViewFlowSet outSet) {
//
//        this.currentUnit = unit;
//
//        inSet.copy(outSet);
//
//
//        try {
//            generate(inSet, unit, outSet);
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        }
//
//    }
//
//
//    @Override
//    protected ViewFlowSet newInitialFlow() {
//        return new ViewFlowSet();
//    }
//
//
//
//
//    // merge ViewResults of branches that are here at a same point ! (union used for acquires and containBothPathsRelease
//    // is called for gathering release ViewResults of the branches -> check the description of this method above !
//    @Override
//    public void merge(ViewFlowSet inSet1, ViewFlowSet inSet2, ViewFlowSet outSet) {
//
//        //inSet1.union(inSet2, outSet);
//
//        outSet.clear();
//
//        ViewFlowSet tempSet = new ViewFlowSet();
//
//        inSet1.union(inSet2, tempSet);
//
//        for(ViewResult ViewResult1 : tempSet){
//            boolean found = false;
//            for(ViewResult outRes : outSet)
//                if(outRes.equals(ViewResult1)){
//                    found = true;
//                    break;
//                }
//            if(!found)
//                outSet.add(ViewResult1);
//
//        }
//
//
//
//        // false alarm or not ?
////        try {
////            containBothPathsRelease(inSet1,inSet2,outSet);
////        } catch (FileNotFoundException e) {
////            e.printStackTrace();
////        }
//
//    }
//
//
//
//
//    // copies ViewResult set source in ViewResult set dest
//    @Override
//    protected void copy(ViewFlowSet source, ViewFlowSet dest){
//
//        source.copy(dest);
//
//    }
//
//    // checks if important parameters/args of two acquire/release calls are the same
//    // ex : acquire(r0) == release(x,r0) in parameter r0 tht is important for us
//    public static boolean compareRef(List<Object> res1, List<Object> res2, String type){
//        if(type.equals("strict")){
//            return res1.equals(res2);
//        }
//        if(type.equals("non-strict")){
//
//            for(int i = 0; i < res1.size(); i++){
//                boolean can = false;
//                if(res1.get(i) instanceof List<?>){
//                    for(Object integer : (List<?>) res1.get(i)){
//                        if(((List<?>)res2.get(i)).contains(integer)){
//                            can = true;
//                            break;
//                        }
//
//                    }
//                }
//                else{
//                    can = res1.get(i).equals(res2.get(i));
//                }
//
//                if(!can)
//                    return false;
//
//            }
//            return true;
//
//        }
//        return true;
//    }
//
//
//
//
//
//    // a new release ViewResult removes previous acquires in its path,
//    // also a new acquire ViewResult removes prev release ViewResults in its path
//    public ViewFlowSet checkAndRemove(ViewFlowSet outSet, ViewResult newViewResult, String remove, String add) throws FileNotFoundException {
//
//
//        List<Object> args1 = new ArrayList<>();
//        List<Object> args2 = new ArrayList<>();
//
//        int bool = 0;
//
//        int setSize = outSet.size();
//        while(setSize != 0) {
//            ViewResult res = outSet.toList().get(setSize - 1);
//            if(res.getType().equals(remove)){
//
//
//                if(add.equals("release")){
////                    if(resourceInfo.type.equals("type1")){
////                        if(compareRef(res.getFinalResource(),newViewResult.getFinalResource(),"strict")){
////                            // CAUTION !
////                            outSet.remove(res);
////                        }
////                    }
//                    if(resourceInfo.type.equals("type2")){
//
//                        //UnitGraph unitGraph = new ClassicCompleteUnitGraph(res.getFinalParentMethod().retrieveActiveBody());
//                        if(haniyehUtil.getInstance().compareRefTypeTwo((Local)res.getFinalResource().get(0), res.getFinalUnit(), res.getFinalParentMethod(), (Local) newViewResult.getFinalResource().get(0), newViewResult.getFinalUnit(), newViewResult.getFinalParentMethod(), (UnitGraph) graph)){
//                            // CAUTION !
//                            //outSet.remove(res);
//                        }
//                    }
//                }
//
//            }
//
//            setSize -= 1;
//
//        }
//
//        return outSet;
//    }
//
//
//
//    public ViewResult updateViewResult(ViewResult res, InvokeExpr invokeExpr, Unit unit) throws FileNotFoundException {
//
//        if(resourceInfo.getImportantArgs().contains(invokeExpr.getMethod().getReturnType().toString())){
//            if(unit instanceof DefinitionStmt){
//
//                List<Object> targets = getNewUnitAndValue((UnitGraph) graph,unit);
//                Local targetValue = (Local) targets.get(0);
//                Unit targetUnit = (Unit) targets.get(1);
//
//                res.setFinalUnit(targetUnit);
//                List<Object> resources =  new ArrayList<Object>();
//                resources.add(targetValue);
//                res.setFinalResource(resources);
//                res.setFinalParentMethod(parentMethod);
//            }
//            return res;
//        }
//
//        Pair<Value, Unit> foundedParam = null;
//        for(Pair<Value, Unit> p : haniyehUtil.getInstance().getMethodParameters(invokeExpr.getMethod())){
//            if(resourceInfo.getImportantArgs().contains(p.getKey().getType().toString())){
//                foundedParam = p;
//                break;
//            }
//
//        }
//        if(foundedParam != null){
//            UnitGraph unitGraph = new ClassicCompleteUnitGraph(invokeExpr.getMethod().retrieveActiveBody());
//            if(haniyehUtil.getInstance().compareRefTypeTwo((Local)res.getFinalResource().get(0), res.getFinalUnit(), invokeExpr.getMethod(), (Local) foundedParam.getKey(), foundedParam.getValue(), invokeExpr.getMethod(), (UnitGraph) unitGraph)){
//                res.setFinalParentMethod(parentMethod);
//                res.setFinalUnit(unit);
//                for(Value v : invokeExpr.getArgs())
//                    if(resourceInfo.getImportantArgs().contains(v.getType().toString())){
//                        List<Object> resources =  new ArrayList<Object>();
//                        resources.add(v);
//                        res.setFinalResource(resources);
//                    }
//
//            }
//        }
//        return res;
//    }
//
//
//    // for invokeExpr , check if it's currently being analyzed (1) or it is not analyzed yet (2) or it's been analyzed before (3)
//    // if 1 -> return
//    // if 2 -> start its analysis by calling its start and save the ViewResults gathered after merge in ViewResults dic
//    // after doing 2 or directly 3 -> for all ViewResults in ViewResults dic, first do checkAndRemove (previously explained) and
//    // then add them to outSet !
//    public ViewFlowSet checkMethodStatus(Unit unitt, InvokeExpr invokeExpr, ViewFlowSet outSet) throws FileNotFoundException {
//
//
//        SootMethod sootMethod = invokeExpr.getMethod();
//
//        String acquireSignature = resourceInfo.getAcquireMethod();
//        String releaseSignature = resourceInfo.getReleaseMethod();
//        if(haniyehUtil.getInstance().beingVisitedMethods.contains(sootMethod.getSignature())){
//            return null;
//        }
//        if(haniyehUtil.getInstance().notVisitedMethodToAnalysis.containsKey(sootMethod.getSignature())) {
//
//            ViewSearchAnalysis ra = (ViewSearchAnalysis) haniyehUtil.getInstance().notVisitedMethodToAnalysis.get(sootMethod.getSignature());
//            haniyehUtil.getInstance().notVisitedMethodToAnalysis.remove(sootMethod.getSignature());
//            haniyehUtil.getInstance().beingVisitedMethods.add(sootMethod.getSignature());
//            ra.start();
//            haniyehUtil.getInstance().beingVisitedMethods.remove(sootMethod.getSignature());
//            List<Unit> lastUnits = ra.graph.getTails();
//            List<Result> methodViewResults = new ArrayList<>();
//
//
//            ViewFlowSet out = ra.getFlowAfter(lastUnits.get(0));
//            if (lastUnits.size() > 1) {
//                for (int i = 1; i < lastUnits.size(); i++) {
//                    merge(ra.getFlowAfter(lastUnits.get(i)), out, out);
//
//                }
//            }
//
//            for (ViewResult finalViewResult : out) {
//                methodViewResults.add(finalViewResult);
//            }
//
//            if(!haniyehUtil.getInstance().results.containsKey(sootMethod.getSignature()))
//                haniyehUtil.getInstance().results.put(sootMethod.getSignature(), new Pair<>(methodViewResults, ra));
//
//        }
//
//
//        if(haniyehUtil.getInstance().results.containsKey(sootMethod.getSignature())) {
//
//            List<ViewResult> newViewResults = new ArrayList<>();
//            for (Result rs : haniyehUtil.getInstance().results.get(sootMethod.getSignature()).getKey()) {
//
//                String remove = "";
//                String add = "";
//                if (rs.getType().equals("acquire")) {
//                    remove = "release";
//                    add = "acquire" ;
//                }
//                else {
//                    remove = "acquire";
//                    add = "release";
//                }
//
//                ViewResult newViewResult = new ViewResult();
//                newViewResult.setType(rs.getType());
//                newViewResult.setFinalResource(rs.getFinalResource());
//                newViewResult.setFinalMethod(rs.getFinalMethod());
//                newViewResult.setFinalInvokeExpr(rs.getFinalInvokeExpr());
//                newViewResult.setFinalUnit(rs.getFinalUnit());
//                newViewResult.setFinalParentMethod(rs.getFinalParentMethod());
//                if(resourceInfo.type.equals("type2")){
//                    newViewResult = updateViewResult(newViewResult, invokeExpr, unitt);
//                }
//
//                outSet = checkAndRemove(outSet, newViewResult, remove, add);
//                newViewResults.add(newViewResult);
//
//            }
//
//            for(ViewResult newViewResult :newViewResults){
////                boolean f = false;
////                for(ViewResult oldRes : outSet) {
////                    if (newViewResult.equals(oldRes)) {
////                        f = true;
////                        break;
////                    }
////                }
//                if(checkNonRepetitiveViewResult(outSet, newViewResult))
//                    outSet.add(newViewResult);
//            }
//        }
//        return outSet;
//
//    }
//
//    protected void kill(ViewFlowSet inSet, Unit unit, ViewFlowSet outSet) throws FileNotFoundException {
//
//    }
//
//
//    public List<Object> getNewUnitAndValue(UnitGraph graph,Unit unit){
//        Local targetValue = (Local) ((DefinitionStmt) unit).getLeftOp();
//        Unit targetUnit = unit;
//        boolean found =  false;
//        for(Unit afterUnit : graph.getSuccsOf(unit)){
//
//            List<Unit> susUnits = new ArrayList<Unit>();
//            susUnits.add(afterUnit);
//            for(UnitBox ubx : afterUnit.getUnitBoxes())
//                susUnits.add(ubx.getUnit());
//            for(Unit afterUnit_x :susUnits){
//                for(ValueBox vbx : afterUnit_x.getUseBoxes()) {
//                    if (vbx.getValue().equivTo(((DefinitionStmt) unit).getLeftOp())) {
//                        targetValue = (Local) vbx.getValue();
//                        targetUnit = afterUnit_x;
//                        found = true;
//                        break;
//                    }
//                }
//                if(found){
//                    break;
//                }
//            }
//            if(found){
//                break;
//            }
//        }
//        List<Object> targets = new ArrayList<Object>();
//        targets.add((Local) targetValue);
//        targets.add((Unit) targetUnit);
//        return targets;
//    }
//
//    // produces a new ViewResult (See class ViewResult in the directory)
//    public ViewResult produceNewViewResult(Unit unit, InvokeExpr invokeExpr) throws FileNotFoundException {
//
//        ViewResult ViewResult =  new ViewResult();
//        ViewResult.setFinalMethod(invokeExpr.getMethod());
//        ViewResult.setFinalInvokeExpr(invokeExpr);
//        ViewResult.setFinalParentMethod(parentMethod);
//        ViewResult.setFinalUnit(unit);
//
//        List<Object> finalResource = new ArrayList<>();
//        if(resourceInfo.isRelease(invokeExpr)){
//            ViewResult.setType("release");
//            if(resourceInfo.type.equals("type1")){
//                for(Integer i : resourceInfo.getReleaseMethodIndexes()){
//                    Value v = invokeExpr.getArg(i);
//                    if(i == -1)
//                        v = ((InstanceInvokeExpr)invokeExpr).getBase();
//                    if(v instanceof Local){
//                        List<Integer> t = haniyehUtil.getInstance().getSourceOf((Local) v);
//                        finalResource.add(new HashSet<Integer>(t));
//                    }
//                    else{
//                        finalResource.add(invokeExpr.getArg(i));
//                    }
//
//                }
//            }
//            else if(resourceInfo.type.equals("type2")){
//                if(invokeExpr instanceof InterfaceInvokeExpr){
//                    finalResource.add((Local) ((InstanceInvokeExpr) invokeExpr).getBase());
//                }
//            }
//        }
//        else{
//            ViewResult.setType("acquire");
//            if(resourceInfo.type.equals("type1")){
//                for(Integer i : resourceInfo.getAcquireMethodIndexes()){
//                    Value v = invokeExpr.getArg(i);
//                    if(i == -1)
//                        v = ((InstanceInvokeExpr)invokeExpr).getBase();
//                    if(v instanceof Local){
//                        List<Integer> t = haniyehUtil.getInstance().getSourceOf((Local) v);
//                        finalResource.add(new HashSet<Integer>(t));
//                    }
//                    else{
//                        finalResource.add(invokeExpr.getArg(i));
//                    }
//                }
//            }
//            else if(resourceInfo.type.equals("type2")){
//                if(unit instanceof DefinitionStmt){
//                    ///
//                    List<Object> targets = getNewUnitAndValue((UnitGraph) graph,unit);
//                    Local targetValue = (Local) targets.get(0);
//                    Unit targetUnit = (Unit) targets.get(1);
//                    ////
//
//                    ViewResult.setFinalUnit(targetUnit);
//                    finalResource.add(targetValue);
//                }
//                else{
//                    return null;
//                }
//            }
//        }
//        ViewResult.setFinalResource(finalResource);
//        //System.out.println(ViewResult.getFinalUnit() + " dust " + ViewResult.getFinalResource().get(0) + " dust " + unit);
//        return ViewResult;
//    }
//
//
//    // this method + doSearchWidget + findCallBackMethodForWidget -> for finding the view an onClick is defined for and
//    // add (view,onClick callback) to view dictionary!
//    private void addWidget(Pair<Unit,SootMethod> targetPair, Unit mainUnit) throws FileNotFoundException {
//
//        Unit targetUnit = targetPair.getKey();
//        if(((AssignStmt) targetUnit).getInvokeExpr().getArgCount() > 0){
//            Value i = ((AssignStmt) targetUnit).getInvokeExpr().getArg(0);
//
//            if(i.getType() instanceof IntType){
//                String id = i.toString();
//                if(AndroidPointsToAnalysis.callBack != ""){
//
//                    SootMethod callBackMethod = findCallBackMethodForWidget(AndroidPointsToAnalysis.callBack.substring(4));
//                    if(callBackMethod != null)
//                        haniyehUtil.getInstance().views.put(id,callBackMethod);
//
//                    AndroidPointsToAnalysis.callBack = "";
//                }
//
//
//            }
//        }
//    }
//
//    private Pair<Unit,SootMethod> doSearchWidget(Unit currentUnit, Value target, SootMethod sootMethod, List<SootMethod> seenMethods) throws FileNotFoundException {
//        seenMethods.add(sootMethod);
//        UnitGraph tempGraph = new ClassicCompleteUnitGraph(sootMethod.retrieveActiveBody());
//        //List<Pair<Unit,SootMethod>> ViewResults = new ArrayList<>();
//        Map<Unit, Boolean> visited = new HashMap<Unit, Boolean>();
//        LinkedList<Unit> queue = new LinkedList<Unit>();
//        visited.put(currentUnit, true);
//        queue.add(currentUnit);
//        while(queue.size() != 0){
//            Unit u = queue.poll();
//            if(((Stmt) u).containsInvokeExpr() && ((Stmt) u).getInvokeExpr().getMethod().getName().contains("findViewById")){
//                //System.out.println("viewFound " + u);
//                return new Pair<>(u, sootMethod);
//            }
//            else if(((Stmt) u).containsInvokeExpr() && (!((Stmt) u).getInvokeExpr().getMethod().getName().contains("findViewById")) &&
//                    haniyehUtil.getInstance().isHealthyMethod(((Stmt) u).getInvokeExpr().getMethod()) && (!seenMethods.contains(((Stmt) u).getInvokeExpr().getMethod()))) {
//
//                // this is not good
//                UnitGraph ug = new ClassicCompleteUnitGraph(((Stmt) u).getInvokeExpr().getMethod().retrieveActiveBody());
//                for(Unit tail : ug.getTails()){
//                    Pair<Unit,SootMethod> tempViewResult = doSearchWidget(tail, null, ((Stmt) u).getInvokeExpr().getMethod(), seenMethods);
//                    if(tempViewResult != null)
//                        return tempViewResult;
//                }
//
//            }
//
//            Iterator<Unit> preds = tempGraph.getPredsOf(u).listIterator();
//            while (preds.hasNext())
//            {
//                Unit temp = preds.next();
//                if (visited.get(temp) == null)
//                {
//                    visited.put(temp,true);
//                    queue.add(temp);
//                }
//            }
//        }
//
//        seenMethods.remove(sootMethod);
//
//        return null;
//
//    }
//
//
//
//    private SootMethod findCallBackMethodForWidget(String str) throws FileNotFoundException {
//        for(SootMethod sm : haniyehUtil.getInstance().callbackMethods.get(haniyehUtil.getInstance().currentActivity)){
//            if(sm.getDeclaringClass().getName().equals(str)  ){
//                return sm;
//
//            }
//        }
//
//        return null;
//    }
//
//    public boolean checkNonRepetitiveViewResult(ViewFlowSet outSet, ViewResult newViewResult){
//        for(ViewResult ViewResult : outSet){
//            if(ViewResult.equals(newViewResult))
//                return false;
//        }
//        return true;
//    }
//
//
//    // check this method call
//    // 1) if it itself is a acquire/release method, produce a new ViewResults ( produceNewViewResult ) -
//    // steps : first, produce new ViewResult, second remove opposite ViewResults in its path so far, third add it to output(outSet)!
//    // 2) else, if it's another method, check its ViewResults and add them (in checkMethodStatus)
//
//    protected void generate(ViewFlowSet inSet, Unit unit, ViewFlowSet outSet) throws FileNotFoundException {
//
//        if(((Stmt)unit).containsInvokeExpr()){
//            //InvokeExpr invokeExpr = ((Stmt)unit).getInvokeExpr();
//
//            if(((Stmt) unit).getInvokeExpr().getMethod().getDeclaringClass().hasSuperclass() &&
//                ((Stmt) unit).getInvokeExpr().getMethod().getDeclaringClass().getSuperclass().getName().equals("android.app.Dialog")){
//
//                AndroidPointsToAnalysis.unitt =(Unit) unit;
//                AndroidPointsToAnalysis.main(new String[] {"dialogClick"});
//                SootMethod callBackMethod = findCallBackMethodForWidget(AndroidPointsToAnalysis.callBack.substring(4));
//                haniyehUtil.getInstance().views.put(((Stmt) unit).getInvokeExpr().getArg(0).toString(), callBackMethod);
//            }
////            else if(resourceInfo.isAcquire(invokeExpr)){
////                ViewResult newViewResult = produceNewViewResult(unit, invokeExpr);
////                if(newViewResult != null){
////                    outSet = checkAndRemove(outSet,newViewResult,"release", "acquire");
////                    if(checkNonRepetitiveViewResult(outSet, newViewResult)){
////                        outSet.add(newViewResult);
////                    }
////                }
////            }
////            else{
////                outSet = checkMethodStatus(unit, invokeExpr, outSet);
////            }
//        }
//
////        // find view related to this onClick (it can be a new analysis later!)
////        if(unit.toString().startsWith("virtualinvoke") && (unit.toString().contains("setOnClickListener"))){
////            AndroidPointsToAnalysis.unitt =(Unit) unit;
////            AndroidPointsToAnalysis.main(new String[] {"viewClick"});
////            List<SootMethod> seenMethods = new ArrayList<>();
////            Pair<Unit, SootMethod> findViewById = doSearchWidget(unit, ((InstanceInvokeExpr)((Stmt)unit).getInvokeExpr()).getBase(), parentMethod, seenMethods);
////            if(findViewById != null){
////                addWidget(findViewById, unit);
////            }
////        }
////
////        // find the new activity that current activity has a path to through this callback
////        if (unit.toString().startsWith("virtualinvoke") && (unit.toString().contains("startActivity")
////                || unit.toString().contains("startActivityIfNeeded") || unit.toString().contains("startService") || unit.toString().contains("startForegroundService") )) {
////
////            AndroidPointsToAnalysis.unitt =(Unit) unit;
////            AndroidPointsToAnalysis.main(new String[] {"intentInit"});
////
////        }
//
//
//
//    }
//
//}

