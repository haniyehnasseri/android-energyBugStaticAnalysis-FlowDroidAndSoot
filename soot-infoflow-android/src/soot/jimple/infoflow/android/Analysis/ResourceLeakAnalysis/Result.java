package soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis;

import javafx.util.Pair;
import soot.*;
import soot.jimple.InterfaceInvokeExpr;
import soot.jimple.InvokeExpr;
import soot.jimple.VirtualInvokeExpr;
import soot.jimple.infoflow.android.haniyehUtil;
import soot.jimple.internal.AbstractInvokeExpr;
import soot.toolkits.graph.ClassicCompleteUnitGraph;
import soot.toolkits.graph.UnitGraph;

import java.io.FileNotFoundException;
import java.util.List;
import java.util.Objects;

public class Result {

    private String type;
    private SootClass callBackClass;
    private SootMethod callBackMethod;
    //private List<Pair<Unit, SootMethod>> pathMethods;
    private SootMethod finalMethod;
    private SootMethod finalParentMethod;
    private Unit finalUnit;

    public SootMethod getFinalParentMethod() {
        return finalParentMethod;
    }

    public void setFinalParentMethod(SootMethod finalParentMethod) {
        this.finalParentMethod = finalParentMethod;
    }

    public Unit getFinalUnit() {
        return finalUnit;
    }

    public void setFinalUnit(Unit finalUnit) {
        this.finalUnit = finalUnit;
    }
    /*public List<Value> getArgs() {
        return args;
    }

    public void setArgs(List<Value> args) {
        this.args = args;
    }

    //
    private List<Value> args;*/

    public InvokeExpr getFinalInvokeExpr() {
        return finalInvokeExpr;
    }

    public void setFinalInvokeExpr(InvokeExpr finalInvokeExpr) {
        this.finalInvokeExpr = finalInvokeExpr;
    }


    private InvokeExpr finalInvokeExpr;



    private List<Object> finalResource;

    public List<Object> getFinalResource() {
        return finalResource;
    }

    public void setFinalResource(List<Object> finalResource) {
        this.finalResource = finalResource;
    }

//    private List<Value> args;
//
//    public List<Value> getArgs() {
//        return args;
//    }
//
//    public void setArgs(List<Value> args) {
//        this.args = args;
//    }

    private Value viewValue = null;
    private String viewId = null;
    //



    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public SootClass getCallBackClass() {
        return callBackClass;
    }

    public void setCallBackClass(SootClass callBackClass) {
        this.callBackClass = callBackClass;
    }

    public SootMethod getCallBackMethod() {
        return callBackMethod;
    }

    public void setCallBackMethod(SootMethod callBackMethod) {
        this.callBackMethod = callBackMethod;
    }

//    public List<Pair<Unit, SootMethod>> getPathMethods() {
//        return pathMethods;
//    }
//
//    public void setPathMethods(List<Pair<Unit, SootMethod>> pathMethods) {
//        this.pathMethods = pathMethods;
//    }

    public SootMethod getFinalMethod() {
        return finalMethod;
    }

    public void setFinalMethod(SootMethod finalMethod) {
        this.finalMethod = finalMethod;
    }

//    public List<Value> getArgs() {
//        return args;
//    }
//
//    public void setArgs(List<Value> args) {
//        this.args = args;
//    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Result result = (Result) o;
        
        ///
        boolean resourceEquality = false;
        if(resourceLeakAnalysis.getResource().type.equals("type1")){
            resourceEquality = resourceLeakAnalysis.compareRef(this.getFinalResource(),result.getFinalResource(),"strict");
        }
        else if(resourceLeakAnalysis.getResource().type.equals("type2")){
            try {
                UnitGraph graph = new ClassicCompleteUnitGraph(this.getFinalParentMethod().retrieveActiveBody());
                resourceEquality = haniyehUtil.getInstance().compareRefTypeTwo((Local)this.getFinalResource().get(0), this.getFinalUnit(), this.getFinalParentMethod(), (Local) result.getFinalResource().get(0), result.getFinalUnit(), result.getFinalParentMethod(), (UnitGraph) graph);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        ////
        
        return Objects.equals(type, result.type) &&
                Objects.equals(finalMethod, result.finalMethod) &&
                //Objects.equals(finalParentMethod, result.finalParentMethod) &&
                Objects.equals(finalInvokeExpr, result.finalInvokeExpr) &&
                resourceEquality;
    }

    @Override
    public int hashCode() {
        //return Objects.hash(type, finalMethod, finalParentMethod, finalResource);
        return Objects.hash(type, finalMethod, finalInvokeExpr);
    }
}
