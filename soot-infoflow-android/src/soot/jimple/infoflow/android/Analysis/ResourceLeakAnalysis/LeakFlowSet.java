package soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis;

import soot.jimple.infoflow.collect.ConcurrentHashSet;
import soot.toolkits.scalar.AbstractBoundedFlowSet;
import soot.toolkits.scalar.AbstractFlowSet;
import soot.toolkits.scalar.ArraySparseSet;
import soot.toolkits.scalar.FlowSet;

import java.util.*;
import java.util.stream.Collectors;

public class LeakFlowSet extends AbstractFlowSet<Result> {

    private Set<Result> resources = new ConcurrentHashSet<>();

    public LeakFlowSet() {
        super();
    }
    @Override
    public LeakFlowSet clone() {
        LeakFlowSet myClone = new LeakFlowSet();
        myClone.resources.addAll(this.resources);
        return myClone;
    }

    @Override
    public boolean isEmpty() {
        return resources.isEmpty();
    }

    @Override
    public int size() {
        return resources.size();
    }

    @Override
    public void add(Result result) {
        this.resources.add(result);
    }

//    public void addAll(List<Result> results){
//        resources.addAll(results);
//    }

    @Override
    public void remove(Result result) {
        if(this.resources.contains(result))
            this.resources.remove(result);
    }

    @Override
    public boolean contains(Result result) {
        return this.resources.contains(result);
    }

    @Override
    public Iterator<Result> iterator() {
        return this.resources.iterator();
    }

    @Override
    public List<Result> toList() {
        return this.resources.stream().collect(Collectors.toList());
    }
}
