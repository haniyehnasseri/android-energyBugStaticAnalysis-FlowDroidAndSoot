package soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis;

import soot.Scene;
import soot.SootClass;
import soot.Value;
import soot.jimple.InterfaceInvokeExpr;
import soot.jimple.InvokeExpr;
import soot.jimple.VirtualInvokeExpr;

import java.util.Arrays;
import java.util.List;

public class ResourceInfo {
    // List Of Acquire/Release
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String acquireMethod;
    private String releaseMethod;
    List<String> importantArgs;
    List<Integer> acquireMethodIndexes;
    List<Integer> releaseMethodIndexes;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String type;
    public boolean isImportant(String type){

        SootClass sootClass = Scene.v().getSootClassUnsafe(type);
        if(sootClass != null){
            for(String importantArg : importantArgs){

                if(sootClass.getName().equals(importantArg)){
                    return true;
                }
                for(SootClass interfaceClass : sootClass.getInterfaces()){
                    if(interfaceClass.getName().equals(importantArg)){
                        return true;
                    }
                    return isImportant(interfaceClass.getName());
                }
                if(sootClass.hasSuperclass()){
                    SootClass superClass = sootClass.getSuperclass();
                    if(superClass.getName().equals(importantArg)){
                        return true;
                    }
                    return isImportant(superClass.getName());
                }

            }

        }
        return false;
    }

    public String getAcquireMethod() {
        return acquireMethod;
    }

    public void setAcquireMethod(String acquireMethod) {
        this.acquireMethod = acquireMethod;
    }

    public String getReleaseMethod() {
        return releaseMethod;
    }

    public void setReleaseMethod(String releaseMethod) {
        this.releaseMethod = releaseMethod;
    }

    public List<String> getImportantArgs() {
        return importantArgs;
    }

    public void setImportantArgs(List<String> importantArgs) {
        this.importantArgs = importantArgs;
    }

    public List<Integer> getAcquireMethodIndexes() {
        return acquireMethodIndexes;
    }

    public void setAcquireMethodIndexes(List<Integer> acquireMethodIndexes) {
        this.acquireMethodIndexes = acquireMethodIndexes;
    }

    public List<Integer> getReleaseMethodIndexes() {
        return releaseMethodIndexes;
    }

    public void setReleaseMethodIndexes(List<Integer> releaseMethodIndexes) {
        this.releaseMethodIndexes = releaseMethodIndexes;
    }

    public  boolean isAcquire(InvokeExpr invokeExpr){
        List<String> acMethods = Arrays.asList(acquireMethod.split("-"));
        if(this.type.equals("type1")){

            return acMethods.contains(invokeExpr.getMethod().getSignature()) || (acMethods.contains(invokeExpr.getMethod().getName()) && invokeExpr.getMethod().getDeclaringClass().getName().equals(name)) ;
        }
        else if(this.type.equals("type2")){
            boolean ac = invokeExpr instanceof VirtualInvokeExpr && importantArgs.contains(((VirtualInvokeExpr) invokeExpr).getMethod().getReturnType().toString());
            if(acquireMethod.equals(""))
                return ac;
            else{
                return ac && acMethods.contains(invokeExpr.getMethod().getName());

            }
        }
        return false;
    }

    public  boolean isRelease(InvokeExpr invokeExpr){

        List<String> releaseMethods = Arrays.asList(releaseMethod.split("-"));
        if(this.type.equals("type2") ){

            return releaseMethods.contains(invokeExpr.getMethod().getSignature()) ;

        }
        if(this.type.equals("type1") ){

            return releaseMethods.contains(invokeExpr.getMethod().getSignature()) || (releaseMethods.contains(invokeExpr.getMethod().getName()) && invokeExpr.getMethod().getDeclaringClass().getName().equals(name));

        }
        return false;
    }
}
