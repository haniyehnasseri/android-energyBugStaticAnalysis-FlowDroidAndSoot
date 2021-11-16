package soot.jimple.infoflow.android.Analysis.AliasAnalysis;



import soot.*;
import soot.jimple.*;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.ResourceInfo;
import soot.jimple.infoflow.android.haniyehUtil;
import soot.jimple.internal.JSpecialInvokeExpr;
import soot.jimple.spark.pag.*;
import soot.jimple.spark.sets.DoublePointsToSet;
import soot.jimple.spark.sets.P2SetVisitor;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.UnitGraph;

import java.io.FileNotFoundException;
import java.util.*;

public class AndroidPointsToAnalysis {

    public static ResourceInfo resourceInfo;
    public static String androidJar;
    public static String apkPath;
    public static String intermediaryMethodSignature;
    public static Unit unitt;
    public static List<String> susFoundedClasses =  new ArrayList<>();
    public static List<String> foundedClasses = new ArrayList<>();
    public static String callBack = "";
    public static PointsToAnalysis p;



    public static InvokeExpr findTarget(String type, int nodeNum, SootMethod targetMethod ) throws FileNotFoundException {
        final InvokeExpr[] found = {null};
        UnitGraph unitGraph = new ClassicCompleteUnitGraph(targetMethod.retrieveActiveBody());
        for (Iterator<Unit> units = unitGraph.iterator(); units.hasNext(); ) {
            Unit unit = units.next();
            if (type.equals("intentInit")) {
                if (((Stmt) unit).containsInvokeExpr() && ((Stmt) unit).getInvokeExpr().getMethod().getDeclaringClass().getName().equals("android.content.Intent") &&
                        ((Stmt) unit).getInvokeExpr().getMethod().getName().equals("<init>")) {

                    Value target = ((SpecialInvokeExpr) ((Stmt) unit).getInvokeExpr()).getBase();
                    if(p.reachingObjects((Local) target) instanceof DoublePointsToSet){
                        ((DoublePointsToSet) p.reachingObjects((Local) target)).getOldSet().forall(new P2SetVisitor() {

                            @Override
                            public void visit(Node node) {
                                if (node.getNumber() == nodeNum) {
                                    found[0] = (InvokeExpr) ((Stmt) unit).getInvokeExpr();
                                }

                            }
                        });
                    }
                }
            }
            if (found[0] != null)
                break;

        }
        return found[0];
    }


    public static void handleSource(InvokeExpr target, String type, SootMethod sootMethod, PAG pag) throws FileNotFoundException {
        if (type.equals("intentInit")) {
            for (int i = 0; i < target.getArgs().size(); i++) {
                Value arg = target.getArg(i);
                if (arg.getType().toString().equals("java.lang.Class") && i > 0) {
                    if(arg.toString().startsWith("class ")){
                        foundedClasses.add(arg.toString().substring(6));
                        return;
                    }
                    if(p.reachingObjects((Local) arg) instanceof DoublePointsToSet) {
                        ((DoublePointsToSet) p.reachingObjects((Local) arg)).getOldSet().forall(new P2SetVisitor() {
                            @Override
                            public void visit(Node node) {

                                if(node instanceof ClassConstantNode) {
                                    if(!foundedClasses.contains(((ClassConstantNode) node).getClassConstant().toString()))
                                        susFoundedClasses.add(((ClassConstantNode) node).getClassConstant().toString());
                                }
                            }
                        });
                    }
                }
            }
        }

    }

    public static void main(String[] args) throws FileNotFoundException {

        p = haniyehUtil.getInstance().pointToAnalysis.get(haniyehUtil.getInstance().currentActivity);

        String type = args[0];
        Value targetArg = null;
        if(type.equals("intentInit")) {
            for (Value arg : ((Stmt) unitt).getInvokeExpr().getArgs()) {
                if (arg instanceof Local && (((Local) arg).getType().toString().equals("android.content.Intent")))
                    targetArg = arg;
            }
        }
        else if(type.equals("viewClick")){
            targetArg =((VirtualInvokeExpr) ((Stmt) unitt).getInvokeExpr()).getArg(0);
        }
        else if(type.equals("dialogClick")){
            targetArg = null;
            for(Value arg : ( ((Stmt) unitt).getInvokeExpr()).getArgs()){

                if(arg.getType().toString().contains("$")){
                    targetArg = arg;
                }

            }
            if(targetArg == null){
                callBack  = "";
                return;
            }

        }


        Value finalTargetArg = targetArg;
        assert finalTargetArg instanceof Local;

        if(finalTargetArg instanceof NullConstant)
            return;

        if(p.reachingObjects((Local) finalTargetArg) instanceof DoublePointsToSet){

            
            ((DoublePointsToSet)p.reachingObjects((Local) finalTargetArg)).getOldSet().forall(new P2SetVisitor() {
                @Override
                public void visit(Node n) {

                    if(n instanceof AllocNode){

                        if(type.equals("intentInit")){

                            SootMethod sootMethod = ((AllocNode) n).getMethod();
                            InvokeExpr target = null;
                            try {
                                target = findTarget(type, n.getNumber(),sootMethod);
                            } catch (FileNotFoundException e) {
                                e.printStackTrace();
                            }
                            try {
                                handleSource(target,type,sootMethod,n.getPag());
                            } catch (FileNotFoundException e) {
                                e.printStackTrace();
                            }
                        }
                        if(type.equals("viewClick") || type.equals("dialogClick")){
                            callBack = ((AllocNode) n).getNewExpr().toString();
                        }

                    }

                }

            });
        }
    }

}