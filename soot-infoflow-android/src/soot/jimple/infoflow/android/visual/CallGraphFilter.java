package soot.jimple.infoflow.android.visual;

public interface CallGraphFilter {
    boolean isValidEdge(soot.jimple.toolkits.callgraph.Edge edge);
}
