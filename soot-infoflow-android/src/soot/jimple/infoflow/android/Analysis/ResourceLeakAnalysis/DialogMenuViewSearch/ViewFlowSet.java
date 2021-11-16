package soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.DialogMenuViewSearch;


import soot.jimple.infoflow.collect.ConcurrentHashSet;
import soot.toolkits.scalar.AbstractBoundedFlowSet;
import soot.toolkits.scalar.AbstractFlowSet;
import soot.toolkits.scalar.ArraySparseSet;
import soot.toolkits.scalar.FlowSet;

import java.util.*;
import java.util.stream.Collectors;

public class ViewFlowSet extends AbstractFlowSet<ViewResult> {

    private Set<ViewResult> resources = new ConcurrentHashSet<>();
    //private Map<ViewResult, Integer> orders = new HashMap<>();
    public ViewFlowSet() {
        super();
    }
    @Override
    public ViewFlowSet clone() {
        ViewFlowSet myClone = new ViewFlowSet();
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
    public void add(ViewResult ViewResult) {
        resources.add(ViewResult);
        //orders.put(ViewResult, resources.size());
    }

//    public void addAll(List<ViewResult> ViewResults){
//        resources.addAll(ViewResults);
//    }

    @Override
    public void remove(ViewResult ViewResult) {
        if(resources.contains(ViewResult))
            resources.remove(ViewResult);
    }

    @Override
    public boolean contains(ViewResult ViewResult) {
        return resources.contains(ViewResult);
    }

    @Override
    public Iterator<ViewResult> iterator() {
        return resources.iterator();
    }

    @Override
    public List<ViewResult> toList() {
        return resources.stream().collect(Collectors.toList());
    }
}
