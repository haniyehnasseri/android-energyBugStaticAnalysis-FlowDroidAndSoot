package soot.jimple.infoflow.android.Analysis.AliasAnalysis;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import soot.Local;
import soot.RefLikeType;
import soot.Unit;
import soot.Value;
import soot.ValueBox;
import soot.jimple.Stmt;
import soot.toolkits.graph.StronglyConnectedComponentsFast;
import soot.toolkits.graph.UnitGraph;


public class StrongLocalMustAliasAnalysis extends LocalMustAliasAnalysis {

    protected Set<Integer> invalidInstanceKeys;

    public StrongLocalMustAliasAnalysis(UnitGraph g) {
        super(g);
        invalidInstanceKeys = new HashSet<Integer>();
        /*
         * Find all SCCs, then invalidate all instance keys for variable defined within an SCC.
         */
        StronglyConnectedComponentsFast<Unit> sccAnalysis = new StronglyConnectedComponentsFast<Unit>(g);
        for (List<Unit> scc : sccAnalysis.getTrueComponents()) {
            for (Unit unit : scc) {
                for (ValueBox vb : unit.getDefBoxes()) {
                    Value defValue = vb.getValue();
                    if (defValue instanceof Local) {
                        Local defLocal = (Local) defValue;
                        if (defLocal.getType() instanceof RefLikeType) {
                            Object instanceKey = getFlowBefore(unit).get(defLocal);
                            // if key is not already UNKNOWN
                            if (instanceKey instanceof Integer) {
                                Integer intKey = (Integer) instanceKey;
                                invalidInstanceKeys.add(intKey);
                            }
                            instanceKey = getFlowAfter(unit).get(defLocal);
                            // if key is not already UNKNOWN
                            if (instanceKey instanceof Integer) {
                                Integer intKey = (Integer) instanceKey;
                                invalidInstanceKeys.add(intKey);
                            }
                        }
                    }
                }
            }
        }
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean mustAlias(Local l1, Stmt s1, Local l2, Stmt s2) {
        Object l1n = getFlowBefore(s1).get(l1);
        Object l2n = getFlowBefore(s2).get(l2);

        if (l1n == null || l2n == null || invalidInstanceKeys.contains(l1n) || invalidInstanceKeys.contains(l2n)) {
            return false;
        }

        return l1n == l2n;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String instanceKeyString(Local l, Stmt s) {
        Object ln = getFlowBefore(s).get(l);
        if (invalidInstanceKeys.contains(ln)) {
            return "UNKNOWN";
        }
        return super.instanceKeyString(l, s);
    }

}