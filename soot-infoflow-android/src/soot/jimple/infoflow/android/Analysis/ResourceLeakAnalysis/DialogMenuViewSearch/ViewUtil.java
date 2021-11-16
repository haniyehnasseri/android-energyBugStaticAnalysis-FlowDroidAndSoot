package soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.DialogMenuViewSearch;

import javafx.util.Pair;
import soot.IntType;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.jimple.AssignStmt;
import soot.jimple.Stmt;
import soot.jimple.infoflow.android.Analysis.AliasAnalysis.AndroidPointsToAnalysis;
import soot.jimple.infoflow.android.haniyehUtil;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.UnitGraph;

import java.io.FileNotFoundException;
import java.util.*;

public class ViewUtil {
    public static ViewUtil instance;
    public static ViewUtil getInstance() {
        if(instance == null){
            instance = new ViewUtil();
        }
        return instance;
    }

    public static void setInstance(ViewUtil instance) {
        ViewUtil.instance = instance;
    }

    // this method + doSearchWidget + findCallBackMethodForWidget -> for finding the view an onClick is defined for and
    // add (view,onClick callback) to view dictionary!
    public void addWidget(Pair<Unit, SootMethod> targetPair, Unit mainUnit) throws FileNotFoundException {

        Unit targetUnit = targetPair.getKey();
        if(((AssignStmt) targetUnit).getInvokeExpr().getArgCount() > 0){
            Value i = ((AssignStmt) targetUnit).getInvokeExpr().getArg(0);

            if(i.getType() instanceof IntType){
                String id = i.toString();
                if(AndroidPointsToAnalysis.callBack != ""){

                    SootMethod callBackMethod = findCallBackMethodForWidget(AndroidPointsToAnalysis.callBack.substring(4));
                    if(callBackMethod != null)
                        haniyehUtil.getInstance().views.put(id,new Pair<>(callBackMethod, ""));

                    AndroidPointsToAnalysis.callBack = "";
                }


            }
        }
    }

    public Pair<Unit,SootMethod> doSearchWidget(Unit currentUnit, Value target, SootMethod sootMethod, List<SootMethod> seenMethods, String targetString) throws FileNotFoundException {
        //seenMethods.add(sootMethod);
        UnitGraph tempGraph = new ClassicCompleteUnitGraph(sootMethod.retrieveActiveBody());
        Map<Unit, Boolean> visited = new HashMap<Unit, Boolean>();
        LinkedList<Unit> queue = new LinkedList<Unit>();
        visited.put(currentUnit, true);
        queue.add(currentUnit);
        while(queue.size() != 0){
            Unit u = queue.poll();
            if(((Stmt) u).containsInvokeExpr() && ((Stmt) u).getInvokeExpr().getMethod().getName().contains(targetString)){
                return new Pair<>(u, sootMethod);
            }
            Iterator<Unit> preds = tempGraph.getPredsOf(u).listIterator();
            while (preds.hasNext())
            {
                Unit temp = preds.next();
                if (visited.get(temp) == null)
                {
                    visited.put(temp,true);
                    queue.add(temp);
                }
            }
        }

        seenMethods.remove(sootMethod);
        return null;
    }



    private SootMethod findCallBackMethodForWidget(String str) throws FileNotFoundException {
        for(SootMethod sm : haniyehUtil.getInstance().callbackMethods.get(haniyehUtil.getInstance().currentActivity)){
            if(sm.getDeclaringClass().getName().equals(str)  ){
                return sm;
            }
        }

        return null;
    }

}
