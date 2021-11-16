package soot.jimple.infoflow.android;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import javafx.util.Pair;
import org.xmlpull.v1.XmlPullParserException;
import soot.*;
import soot.jimple.*;
import soot.jimple.infoflow.android.Analysis.AliasAnalysis.AndroidPointsToAnalysis;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.LeakFlowSet;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.resourceLeakAnalysis;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.Result;
import soot.jimple.infoflow.android.Analysis.WTGAnalysis.WTGUtil;

import soot.jimple.infoflow.android.AndroidConfigs.AndroidUtil;
import soot.jimple.infoflow.android.GraphUtil.PathGraph;
import soot.jimple.infoflow.android.LoopHandler.Loop;
import soot.jimple.infoflow.android.LoopHandler.LoopFinder;
import soot.jimple.infoflow.android.axml.AXmlAttribute;
import soot.jimple.infoflow.android.axml.AXmlHandler;
import soot.jimple.infoflow.android.axml.AXmlNode;
import soot.jimple.infoflow.android.callbacks.AndroidCallbackDefinition;
import soot.jimple.infoflow.android.manifest.ProcessManifest;
import soot.jimple.infoflow.util.SystemClassHandler;
import soot.jimple.spark.pag.Node;
import soot.jimple.spark.sets.DoublePointsToSet;
import soot.jimple.spark.sets.P2SetVisitor;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Edge;
import soot.jimple.toolkits.pointer.LocalMustAliasAnalysis;
import soot.jimple.toolkits.pointer.StrongLocalMustAliasAnalysis;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.ForwardFlowAnalysis;
import soot.util.HashMultiMap;
import soot.util.MultiMap;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.*;

public class haniyehUtil {


    public static Local l1, l2;
    public static List<String> componentCallBacks = new ArrayList<>();



    private static haniyehUtil instance;
    public List<String> launcherActivities = new ArrayList<>();
    private SetupApplication analyzer;
    //public PointsToAnalysis pointsToAnalysis;
    public List<String> paths = new ArrayList<>();
    public MultiMap<SootClass, SootMethod> callbackMethods = new HashMultiMap<>();
    public Map<SootClass,PointsToAnalysis> pointToAnalysis = new HashMap<>();
    public CallGraph cg;
    public List<SootMethod> Queue = new ArrayList<>();

    public Map<String, ForwardFlowAnalysis> notVisitedMethodToAnalysis =  new HashMap<>();
    public List<String> beingVisitedMethods = new ArrayList<>();
    public Map<String, Pair<List<Result>, ForwardFlowAnalysis> > results = new HashMap<>();

    public Map<String, Pair<SootMethod, String> >views = new HashMap<>();
    public static ArrayList<String> AndroidCallBackList = new ArrayList<>();
    public List<String> finalResults = new ArrayList<>();
    //public MultiMap<Pair<SootClass,SootClass>, String> WTG = new HashMultiMap<>();
    public  Map<SootClass, Integer> classDepths = new HashMap<>();
    // NEW
    public List<SootClass> applicationClasses = new ArrayList<>();



    public boolean hasJumpToWindow = false;
    public boolean hasEventListener = false;
    public SootClass currentActivity = null;
    public SootMethod currentCallback = null;

    //public static Integer rank = 0;
    //public MultiMap<Pair<SootClass,>>


    static {
        Scanner s = null;
        try {
            s = new Scanner(new File("C:\\Users\\haniye\\OneDrive\\Desktop\\flowdroid2\\FlowDroid\\soot-infoflow-android\\AndroidCallbacks.txt"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        while (s.hasNextLine()){
            AndroidCallBackList.add(s.nextLine());
        }
        s.close();
        componentCallBacks.add("onCreate");
        componentCallBacks.add("onStart");
        componentCallBacks.add("onResume");
        componentCallBacks.add("onPause");
        componentCallBacks.add("onStop");
        componentCallBacks.add("onDestroy");
        componentCallBacks.add("onRestart");
    }


    public haniyehUtil(){
        //cg = Scene.v().getCallGraph();
        //WTGUtil.setCallGraph(cg);
    }

    public static haniyehUtil getInstance() throws FileNotFoundException {
        if(instance == null){
            instance = new haniyehUtil();

        }
        return instance;
    }

    public SetupApplication getAnalyzer() {
        return analyzer;
    }

    public void setAnalyzer(SetupApplication analyzer) {
        this.analyzer = analyzer;
    }
//    public void setPointsToAnalysis(PointsToAnalysis pointsToAnalysis) {
//        this.pointsToAnalysis = pointsToAnalysis;
//    }
    public void setCallGraph(CallGraph callGraph) {
        this.cg = callGraph;
    }

    public  void setRank(SootClass sc, Integer rank){
        classDepths.put(sc, rank);
    }


    public void temp(SootMethod sm){
        LoopFinder l = new LoopFinder();
        Set<Loop> res = l.getLoops(sm.retrieveActiveBody());
        for(Loop loop : res){
            Stmt targ = loop.getBackJumpStmt();
            sm.getActiveBody().getUnits().remove(targ);
        }

    }

    public void gatherActivityCallBacks(String apk_name) throws IOException, XmlPullParserException {
        List<String> activityNames = getMainActivityName(apk_name);
        //List<SootClass> neededActivities = new ArrayList<>();
        for(String ActivityName : activityNames) {
            SootClass activity = Scene.v().getSootClass(ActivityName);
            if(!applicationClasses.contains(activity))
                applicationClasses.add(activity);
        }

        /*for(SootClass sc : Scene.v().getApplicationClasses()){
            if(sc.getName().contains(haniyehTest.packageName) && !sc.getName().contains("$")){
                if(!applicationClasses.contains(sc))
                    applicationClasses.add(sc);
            }


        }*/


        for(SootClass activity: applicationClasses){
            analyzer.calculateCallbacks(null,activity);
            pointToAnalysis.put(activity, Scene.v().getPointsToAnalysis());
            for(Iterator<AndroidCallbackDefinition> ad = analyzer.callbackMethods.get(activity).iterator(); ad.hasNext();){
                AndroidCallbackDefinition androidCallbackDefinition = ad.next();
                if(!AndroidUtil.isAndroidClass(androidCallbackDefinition.getTargetMethod().getDeclaringClass())){
                    callbackMethods.put(activity,androidCallbackDefinition.getTargetMethod());
                }
            }
        }

    }

    public void preparePaths(SootClass sc) throws FileNotFoundException {
        // Object of graph is created.
        PathGraph<String> g = new PathGraph<String>();
        g.setSootClass(sc);


        g.addEdge("onCreate", "onStart", false);
        //g.addEdge("onRestart", "onStart", false);
        g.addEdge("onStart", "onResume", false);
        for(SootMethod sm: callbackMethods.get(sc)){
            if(!componentCallBacks.contains(sm.getName())){

                g.addEdge("onResume", sm.getSignature(), false);
                g.addEdge(sm.getSignature(), "onPause", false);

            }
        }
        g.addEdge("onPause", "onResume", false);
        g.addEdge("onPause", "onCreate", false);
        g.addEdge("onPause", "onStop", false);
        g.addEdge("onStop", "onCreate", false);
        g.addEdge("onStop", "onRestart", false);
        g.addEdge("onStop", "onDestroy", false);

        g.printAllPaths("onCreate", "onDestroy");

    }

    // should be corrected !
    public boolean findSameRef(List<Value> args1, List<Value> args2, String type) {

        boolean res1 = true;
        boolean res2 = false;
        // strict -> if both args have same possible source node nums and nums are the same in the order
        // non-strict -> if at least for one of the arg1(acquire) args, there be a source with the same number in arg2(release)
        for (int i = 0; i < args1.size(); i++) {

            Value arg1 = args1.get(i);
            Value arg2 = args2.get(i);
            List<Integer> arg1Numbers = getSourceOf((Local) arg1);
            List<Integer> arg2Numbers = getSourceOf((Local) arg2);

            if (type.equals("strict")) {
                if(!arg1Numbers.equals(arg2Numbers))
                    res1 = false;
            }
            else if (type.equals("non-strict")) {
                for(Integer integer : arg1Numbers){
                    if(arg2Numbers.contains(integer)){
                        res2 = true;
                        break;
                    }

                }
            }


        }
        if(type.equals("strict"))
            return  res1;
        else
            return res2;
    }



    // iterate over activity callbacks and call analyzeCallBackMethod(sm) for each callback : sm
    public void analyzeActivityForResources(SootClass activity) throws IOException, XmlPullParserException {

        currentActivity = activity;

        System.out.println("Analyzing " + activity.getName() + " Started ...");

        // print activity callbacks
        System.out.println("Activity " +activity.getName()+ " Callbacks : ");
        int ind = 1;
        for(SootMethod sm: callbackMethods.get(activity)){
            System.out.println("Callback Number " + String.valueOf(ind) + " : " +sm.toString());
            ind += 1;
            Queue.clear();
            notVisitedMethodToAnalysis.clear();
            beingVisitedMethods.clear();


            WTGUtil.getInstance().dataFlowResult.replaceAll( (k,v)->v="" );
            analyzeCallBackMethod(sm);
        }
        System.out.println("Analyzing " + activity.getName() + " Finished ...");

        System.out.println("\n");

        System.out.println("----------------------------------------------");

        System.out.println("\n");
    }


    // for this callback(sm), find all reachable methods (Using bfs) and make a resourceLeakAnalysis for each
    // at last, call analyzeUnitGraph2(sootCallBackMethodGraph,sm) for this callback : sm
    public void analyzeCallBackMethod (SootMethod sm) throws FileNotFoundException {
            currentCallback = sm;

            AndroidPointsToAnalysis.susFoundedClasses.clear();
            AndroidPointsToAnalysis.foundedClasses.clear();

            // new
            AndroidPointsToAnalysis.callBack = "";
            Queue.add(sm);
            while(!Queue.isEmpty()){
                SootMethod sootMethod = Queue.remove(0);
                temp(sootMethod);

                UnitGraph unitGraph = new ClassicCompleteUnitGraph( sootMethod.retrieveActiveBody());
                resourceLeakAnalysis resourceLeakAnalysis = new resourceLeakAnalysis(unitGraph, sootMethod);
                notVisitedMethodToAnalysis.put(sootMethod.getSignature(), resourceLeakAnalysis);
                for(Iterator<Edge> children =  cg.edgesOutOf(sootMethod); children.hasNext();){
                    Edge child = children.next();
                    if((child.tgt() != null) && (!child.tgt().isJavaLibraryMethod()) && (child.tgt().hasActiveBody()) && (!notVisitedMethodToAnalysis.containsKey(child.tgt().getSignature()))
                    && (!Queue.contains(child.tgt())) && (child.tgt().isConcrete()) && (!AndroidUtil.isAndroidMethod(child.tgt()))){
                        Queue.add(child.tgt());
                    }
                }
            }


            UnitGraph sootCallBackMethodGraph = new ClassicCompleteUnitGraph( sm.retrieveActiveBody());
            analyzeUnitGraph2(sootCallBackMethodGraph,sm);

            WTGUtil.getInstance().handleWTG("non-strict");


    }


    // a method to find all roots a local can point to (using PointsToAnalysis)
    public List<Integer> getSourceOf(Local v){
        List<Integer> nodeNumbers = new ArrayList<Integer>();
        //System.out.println(v);
        if(v.toString().contains("r0")){
            nodeNumbers.add(1);
            //System.out.println(nodeNumbers);
            return nodeNumbers;
        }
        try{
            if(pointToAnalysis.get(currentActivity).reachingObjects((Local) v) instanceof DoublePointsToSet){
                ((DoublePointsToSet)pointToAnalysis.get(currentActivity).reachingObjects((Local) v)).getOldSet().forall(new P2SetVisitor() {
                    @Override
                    public void visit(Node n) {
                        nodeNumbers.add(n.getNumber());
                        //System.out.println(String.format("Local %s in intermediaryMethod is allocated at %s", v, n));
                    }
                });
            }
            //System.out.println(nodeNumbers);
            return nodeNumbers;
        }
        catch (Exception e) {
            //System.out.println(nodeNumbers);
            return nodeNumbers;
        }

    }


    // a method to check if two locals in a method can be the same
    public boolean compareRefTypeTwo(Local l1, Unit u1, SootMethod sm1, Local l2, Unit u2, SootMethod sm2 , UnitGraph graph){

            if(sm1.equals(sm2)){

                if(l1.toString().equals("r0") && l2.toString().equals("r0"))
                    return  true;

                StrongLocalMustAliasAnalysis s = new StrongLocalMustAliasAnalysis(graph);
                return s.mustAlias(l1, (Stmt) u1, l2,(Stmt) u2);

            }

        return false;
    }


    // for callback : sm, run its resourceLeakAnalysis instance (by calling start method)
    // at last, merge results of its last units and save final results of this callback in results dictionary
    // and print them in console
    public void analyzeUnitGraph2(UnitGraph unitGraph, SootMethod sm) throws FileNotFoundException {

        if(notVisitedMethodToAnalysis.containsKey(sm.getSignature())) {
            resourceLeakAnalysis ra = (resourceLeakAnalysis) notVisitedMethodToAnalysis.get(sm.getSignature());
            notVisitedMethodToAnalysis.remove(sm.getSignature());
            beingVisitedMethods.add(sm.getSignature());
            ra.start();
            beingVisitedMethods.remove(sm.getSignature());

            List<Unit> lastUnits = unitGraph.getTails();
            List<Result> methodResults = new ArrayList<>();

            LeakFlowSet out = ra.getFlowAfter(lastUnits.get(0));
            if (lastUnits.size() > 1) {
                for (int i = 1; i < lastUnits.size(); i++) {
                    out = ra.myunion(ra.getFlowAfter(lastUnits.get(i)), out, out);
//                    // new !
//                    try {
//                        ra.containBothPathsRelease(ra.getFlowAfter(lastUnits.get(i)),out,out);
//                    } catch (FileNotFoundException e) {
//                        e.printStackTrace();
//                    }
                }
            }


            for(Result rs: out){

                    rs.setCallBackClass(sm.getDeclaringClass());
                    rs.setCallBackMethod(sm);
                    if(!methodResults.contains(rs))
                        methodResults.add(rs);

            }

            if(!results.containsKey(sm.getSignature())){
                results.put(sm.getSignature(), new Pair<>(methodResults, ra));
            }

        }

        // Print results of this callback:

        if(results.get(sm.getSignature()).getKey().size() > 0){
            System.out.println("Resource Leak Results of callback " + sm.getSignature() + " : ");

            int resultNum  = 1;
            for(Result rs: results.get(sm.getSignature()).getKey()){
                System.out.println("Result number " + String.valueOf(resultNum) + " is " + rs.getFinalInvokeExpr() +" in method " + rs.getFinalParentMethod() +  " with type " + rs.getType());

                resultNum += 1;
//                int ind = 1;
//                Collections.reverse(rs.getPathMethods());
//                for(Pair<Unit, SootMethod> p : rs.getPathMethods()){
//                    System.out.println(String.valueOf(ind) + " : " + p.getKey().toString() + " in " + p.getValue().toString());
//                    ind += 1;
//                }
            }
        }
        else {
            System.out.println("No Result for this method callback.");
        }

        System.out.println("\n");
    }


    // prints application call graph
    public static void dumpCallGraph(CallGraph cg){
        Iterator<Edge> itr = cg.iterator();
        Map<String, Set<String>> map = new HashMap<String, Set<String>>();

        while(itr.hasNext()){
            Edge e = itr.next();
            String srcSig = "";
            String destSig = "";
            if (e.getSrc() != null){
                srcSig = e.getSrc().toString();
            }
            if (e.getTgt() != null){
                destSig = e.getTgt().toString();
            }
            Set<String> neighborSet;
            if(map.containsKey(srcSig)){
                neighborSet = map.get(srcSig);
            }
            else{
                neighborSet = new HashSet<String>();
            }
            neighborSet.add(destSig);
            map.put(srcSig, neighborSet );

        }
        Gson gson = new GsonBuilder().disableHtmlEscaping().create();
        String json = gson.toJson(map);
        System.out.println(json);

    }

    public List<Unit> getEndPoints(UnitPatchingChain units){
        List<Unit> endUnits = new ArrayList<>();
        for(Unit unit: units){

            if(unit.toString().contains("return")){
                endUnits.add(unit);
            }
        }
        return endUnits;
    }


    // checks if activity : sc has a callback with name name
    public SootMethod checkHasCallBackMethod(String name, SootClass sc){
        for(SootMethod sm: callbackMethods.get(sc)){
            if(sm.getName().equals(name) || sm.getSignature().equals(name)){
                return sm;
            }
        }
        return null;
    }

    // a method to read all activities of the app from its manifest file
    public List<String> getMainActivityName(String apkFileLocation) {
        List<String> mainActivityName = new ArrayList<>();
        try {
            ProcessManifest pm = new ProcessManifest(apkFileLocation);
            AXmlHandler axmlh = pm.getAXml();
            List<AXmlNode> anodes = axmlh.getNodesWithTag("activity");
            for (AXmlNode an : anodes) {
                boolean hasMain = false;
                boolean hasLauncher = false;
                AXmlNode filter = null;
                AXmlAttribute aname = an.getAttribute("name");
                String aval = (String) aname.getValue();
                for (AXmlNode ch : an.getChildren()) {
                }
                List<AXmlNode> fnodes = an.getChildrenWithTag("intent-filter");
                for (AXmlNode fn : fnodes) {
                    hasMain = false;
                    hasLauncher = false;
                    // check action
                    List<AXmlNode> acnodes = fn.getChildrenWithTag("action");
                    for (AXmlNode acn : acnodes) {
                        AXmlAttribute acname = acn.getAttribute("name");
                        String acval = (String) acname.getValue();
                        //System.out.println("action: " + acval);
                        if (acval.equals("android.intent.action.MAIN")) {
                            hasMain = true;
                        }
                    }
                    // check category
                    List<AXmlNode> catnodes = fn.getChildrenWithTag("category");
                    for (AXmlNode catn : catnodes) {
                        AXmlAttribute catname = catn.getAttribute("name");
                        String catval = (String) catname.getValue();
                        if (catval.equals("android.intent.category.LAUNCHER")) {
                            hasLauncher = true;
                            filter = fn;
                        }
                    }

                    if(hasLauncher && hasMain){
                        launcherActivities.add(aval);
                    }
                    /*if (hasLauncher) {
                        break;
                    }*/
                }
                mainActivityName.add(aval);
                /*if (hasLauncher) {
                    filter.exclude();
                    //mainActivityName = aval;
                    mainActivityName.add(aval);
                    //break;
                }*/
            }
        }
         catch (XmlPullParserException | IOException e) {
            e.printStackTrace();
        }
        return mainActivityName;
    }

    // checks if a method is written by developer ( not an android or java library method) ) +
    // is correct and has an active body
    public boolean isHealthyMethod(SootMethod sm){
        return (sm.hasActiveBody()) && (sm.isConcrete()) && (!AndroidUtil.isAndroidMethod(sm) && (!sm.getName().equals("<init>")) && (!sm.getName().equals("<cinit>")));
    }

    // sus to be wrong
    // a method to return local parameters of a given method ( input :func(A a, B b), output : A a, B b) )
    public List<Pair<Value , Unit>> getMethodParameters(SootMethod sootMethod){
        List<Pair<Value , Unit>> importantParameters = new ArrayList<>();
        UnitGraph unitGraph = new ClassicCompleteUnitGraph( sootMethod.retrieveActiveBody());
        int count = sootMethod.getParameterCount();
        for(Iterator<Unit> it = unitGraph.iterator(); it.hasNext(); ) {
            Unit u = it.next();
            if (u.toString().contains("@parameter")) {
                for (ValueBox vb : u.getDefBoxes()) {
                    importantParameters.add(new Pair<>(vb.getValue(), u));
                }
                count -= 1;
            }
            if (count == 0)
                break;
        }
        return importantParameters;
    }

    public void reset(){
        Queue.clear();
        notVisitedMethodToAnalysis.clear();
        beingVisitedMethods.clear();
        results.clear();
        finalResults.clear();
    }


}