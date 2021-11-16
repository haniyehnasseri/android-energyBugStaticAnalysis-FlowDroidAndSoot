package soot.jimple.infoflow.android.Analysis.WTGAnalysis;

import soot.SootClass;
import soot.SootMethod;

public class WTGEdge {
    private SootClass srcClass;
    private SootClass targetClass;
    private SootMethod initiatingCallback;

    public SootClass getSrcClass() {
        return srcClass;
    }

    public void setSrcClass(SootClass srcClass) {
        this.srcClass = srcClass;
    }

    public SootClass getTargetClass() {
        return targetClass;
    }

    public void setTargetClass(SootClass targetClass) {
        this.targetClass = targetClass;
    }

    public SootMethod getInitiatingCallback() {
        return initiatingCallback;
    }

    public void setInitiatingCallback(SootMethod initiatingCallback) {
        this.initiatingCallback = initiatingCallback;
    }

    @Override
    public String toString() {
        return "WTGEdge{" +
                "srcClass=" + srcClass +
                ", targetClass=" + targetClass +
                ", initiatingCallback=" + initiatingCallback +
                '}';
    }
}
