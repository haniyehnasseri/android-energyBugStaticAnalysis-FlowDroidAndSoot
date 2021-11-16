package soot.jimple.infoflow.android.GraphUtil;

import soot.SootMethod;
import soot.Value;

import java.util.List;

public class StackElement {
    private SootMethod method;
    private List<Value> args;

    public SootMethod getMethod() {
        return method;
    }

    public void setMethod(SootMethod method) {
        this.method = method;
    }

    public List<Value> getArgs() {
        return args;
    }

    public void setArgs(List<Value> args) {
        this.args = args;
    }
}
