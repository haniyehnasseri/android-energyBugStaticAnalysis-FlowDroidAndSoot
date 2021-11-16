package soot.jimple.infoflow.android.GraphUtil;

import soot.*;
import soot.jimple.FieldRef;
import soot.jimple.Stmt;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.resourceLeakAnalysis;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.Result;
import soot.jimple.infoflow.android.haniyehUtil;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.UnitGraph;

import java.io.FileNotFoundException;
import java.util.*;

public class PathGraph<T> {

    // We use Hashmap to store the edges in the graph
    private Map<T, List<T> > map = new HashMap<>();
    private SootClass sootClass;

    // This function adds a new vertex to the graph
    public void addVertex(T s)
    {
        map.put(s, new LinkedList<T>());
    }
    public void setSootClass(SootClass sc){
        sootClass = sc;
    }

    // This function adds the edge
    // between source to destination
    public void addEdge(T source,
                        T destination,
                        boolean bidirectional)
    {

        if (!map.containsKey(source))
            addVertex(source);

        if (!map.containsKey(destination))
            addVertex(destination);

        map.get(source).add(destination);
        if (bidirectional == true) {
            map.get(destination).add(source);
        }
    }

    // This function gives the count of vertices
    public void getVertexCount()
    {
        System.out.println("The graph has "
                + map.keySet().size()
                + " vertex");
    }

    // This function gives the count of edges
    public void getEdgesCount(boolean bidirection)
    {
        int count = 0;
        for (T v : map.keySet()) {
            count += map.get(v).size();
        }
        if (bidirection == true) {
            count = count / 2;
        }
        System.out.println("The graph has "
                + count
                + " edges.");
    }

    // This function gives whether
    // a vertex is present or not.
    public void hasVertex(T s)
    {
        if (map.containsKey(s)) {
            System.out.println("The graph contains "
                    + s + " as a vertex.");
        }
        else {
            System.out.println("The graph does not contain "
                    + s + " as a vertex.");
        }
    }

    // This function gives whether an edge is present or not.
    public void hasEdge(T s, T d)
    {
        if (map.get(s).contains(d)) {
            System.out.println("The graph has an edge between "
                    + s + " and " + d + ".");
        }
        else {
            System.out.println("The graph has no edge between "
                    + s + " and " + d + ".");
        }
    }

    // Prints the adjancency list of each vertex.
    @Override
    public String toString()
    {
        StringBuilder builder = new StringBuilder();

        for (T v : map.keySet()) {
            builder.append(v.toString() + ": ");
            for (T w : map.get(v)) {
                builder.append(w.toString() + " ");
            }
            builder.append("\n");
        }

        return (builder.toString());
    }



    public void printAllPaths(T s, T d) throws FileNotFoundException {
        //boolean[] isVisited = new boolean[map.keySet().size()];
        Map<T, Boolean> isVisited= new HashMap<>();

        ArrayList<T> pathList = new ArrayList<>();
        List<Result> stack = new ArrayList<>();

        // add source to path[]
        pathList.add(s);
        // Call recursive utility
        printAllPathsUtil(s, d, isVisited, pathList, stack);
    }

    // A recursive function to print
    // all paths from 'u' to 'd'.
    // isVisited[] keeps track of
    // vertices in current path.
    // localPathList<> stores actual
    // vertices in the current path

    private void printAllPathsUtil(T u, T d,
                                   Map<T, Boolean> isVisited,
                                   ArrayList<T>  localPathList, List<Result> stack) throws FileNotFoundException {




        isVisited.put(u,true);
        SootMethod sm = haniyehUtil.getInstance().checkHasCallBackMethod((String)u, sootClass);
        if(!(u.equals("onStop") || u.equals("onPause") || u.equals("onDestroy"))){
            changeStack(stack, sm);
        }

        if(u.equals("onCreate")){
            SootMethod sm2 = haniyehUtil.getInstance().checkHasCallBackMethod("onRestart", sootClass);
            changeStack(stack, sm2);
        }

        if( u.equals("onStop")){
            for(Result result: stack){
                if(result.getType().equals("acquire")){
                    if(result.getCallBackMethod() != null){
                        String badMethod = result.getCallBackMethod().getSignature();
                        String newResult = sootClass.getName() + "&" + badMethod + "-" + result.getFinalParentMethod().getSignature() + "&" + "SW**" + sootClass.getName() + "," + badMethod + ",HOME";
                        if(!haniyehUtil.getInstance().finalResults.contains(newResult))
                            haniyehUtil.getInstance().finalResults.add(newResult);
                    }

                }
            }
        }
        if( u.equals("onDestroy")){

            for(Result result: stack){
                if(result.getType().equals("acquire")){
                    if(result.getCallBackMethod() != null){
                        String badMethod = result.getCallBackMethod().getSignature();
                        String newResult = sootClass.getName() + "&" + badMethod + "-" + result.getFinalParentMethod().getSignature() +"&" +"LW**" + sootClass.getName() + "," + badMethod + ",BACK";
                        if(!haniyehUtil.getInstance().finalResults.contains(newResult))
                            haniyehUtil.getInstance().finalResults.add(newResult);
                    }
                }
            }
        }



        for (T i : map.get(u)) {
            if (isVisited.get(i) == null || !isVisited.get(i)) {
                // store current node
                // in path[]
                localPathList.add(i);
                printAllPathsUtil(i, d, isVisited, localPathList, stack);

                // remove current NODE
                // in path[]
                localPathList.remove(i);
            }
        }

        // Mark the current node
        isVisited.replace(u,false);
    }

    private List<Result> changeStack(List<Result> stack, SootMethod sm) throws FileNotFoundException {

        if(sm != null){

            for(Result rs: haniyehUtil.getInstance().results.get(sm.getSignature()).getKey()){
                if(rs.getType().equals("release")){

                    while(!stack.isEmpty()){
                        Result rss = stack.remove(0);

                        if(rss.getType().equals("acquire")){

                            if(resourceLeakAnalysis.getResource().type.equals("type1"))
                                if(resourceLeakAnalysis.compareRef(rs.getFinalResource(),rss.getFinalResource(), "strict")){
                                    System.out.println("Delete ! ");
                                    stack.remove(rss);
                                }


//                            else if(resourceLeakAnalysis.getResource().type.equals("type2")) {
//
//                                    // release
//                                    UnitGraph unitGraph = new ClassicCompleteUnitGraph(rs.getFinalParentMethod().retrieveActiveBody());
//                                    Unit newTargetUnit_release = rs.getFinalUnit();
//                                    boolean found = false;
//                                    for (Unit beforeUnit : unitGraph.getPredsOf(rs.getFinalUnit())) {
//                                        for (ValueBox vbx : beforeUnit.getDefBoxes())
//                                            if (vbx.getValue().equivTo((Local) rs.getFinalResource().get(0))) {
//                                                newTargetUnit_release = beforeUnit;
//                                                found = true;
//                                                break;
//                                            }
//                                        if (found)
//                                            break;
//                                    }
//                                    if (((Stmt) rs.getFinalUnit()).containsFieldRef())
//                                        newTargetUnit_release = rs.getFinalUnit();
//
//                                    // acquire
//                                    Unit newTarget_acquire = rss.getFinalUnit();
//                                    if (((Stmt) newTarget_acquire).containsFieldRef() && ((Stmt) newTargetUnit_release).containsFieldRef()) {
//                                        SootField fr1 = ((Stmt) newTarget_acquire).getFieldRef().getField();
//                                        SootField fr2 = ((Stmt) newTargetUnit_release).getFieldRef().getField();
//                                        if (fr1.equals(fr2))
//                                            stack.remove(rss);
//                                    }
//
//
//                            }

                        }
                    }
                }
            }

            for(Result rs: haniyehUtil.getInstance().results.get(sm.getSignature()).getKey()){
                if(rs.getType().equals("acquire")){
                    stack.add(rs);
                }
            }

        }
        return stack;
    }
}