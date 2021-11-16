package soot.jimple.infoflow.android.LoopHandler;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import soot.Body;
import soot.Unit;
import soot.jimple.Stmt;
import soot.jimple.infoflow.android.LoopHandler.Loop;
import soot.toolkits.graph.ExceptionalUnitGraph;
import soot.toolkits.graph.MHGDominatorsFinder;
import soot.toolkits.graph.UnitGraph;

public class LoopFinder  {

    private Set<Loop> loops;

    public LoopFinder() {
        loops = null;
    }

    public void internalTransform(Body b) {
        getLoops(b);
    }

    public Set<Loop> getLoops(Body b) {
        if (loops != null) {
            return loops;
        }
        return getLoops(new ExceptionalUnitGraph(b));
    }

    public Set<Loop> getLoops(UnitGraph g) {
        if (loops != null) {
            return loops;
        }

        MHGDominatorsFinder<Unit> a = new MHGDominatorsFinder<Unit>(g);
        Map<Stmt, List<Stmt>> loops = new HashMap<Stmt, List<Stmt>>();

        for (Unit u : g.getBody().getUnits()) {
            List<Unit> succs = g.getSuccsOf(u);
            List<Unit> dominaters = a.getDominators(u);
            List<Stmt> headers = new ArrayList<Stmt>();

            for (Unit succ : succs) {
                if (dominaters.contains(succ)) {
                    // header succeeds and dominates s, we have a loop
                    headers.add((Stmt) succ);
                }
            }

            for (Unit header : headers) {
                List<Stmt> loopBody = getLoopBodyFor(header, u, g);
                if (loops.containsKey(header)) {
                    // merge bodies
                    List<Stmt> lb1 = loops.get(header);
                    loops.put((Stmt) header, union(lb1, loopBody));
                } else {
                    loops.put((Stmt) header, loopBody);
                }
            }
        }

        Set<Loop> ret = new HashSet<Loop>();
        for (Map.Entry<Stmt, List<Stmt>> entry : loops.entrySet()) {
            ret.add(new Loop(entry.getKey(), entry.getValue(), g));
        }

        this.loops = ret;
        return ret;
    }

    public List<Stmt> getLoopBodyFor(Unit header, Unit node, UnitGraph g) {
        List<Stmt> loopBody = new ArrayList<Stmt>();
        Deque<Unit> stack = new ArrayDeque<Unit>();

        loopBody.add((Stmt) header);
        stack.push(node);

        while (!stack.isEmpty()) {
            Stmt next = (Stmt) stack.pop();
            if (!loopBody.contains(next)) {
                // add next to loop body
                loopBody.add(0, next);
                // put all preds of next on stack
                for (Unit u : g.getPredsOf(next)) {
                    stack.push(u);
                }
            }
        }

        assert (node == header && loopBody.size() == 1) || loopBody.get(loopBody.size() - 2) == node;
        assert loopBody.get(loopBody.size() - 1) == header;

        return loopBody;
    }

    public List<Stmt> union(List<Stmt> l1, List<Stmt> l2) {
        for (Stmt next : l2) {
            if (!l1.contains(next)) {
                l1.add(next);
            }
        }
        return l1;
    }
}
