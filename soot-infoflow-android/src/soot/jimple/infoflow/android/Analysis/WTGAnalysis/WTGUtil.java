package soot.jimple.infoflow.android.Analysis.WTGAnalysis;

import soot.*;
import soot.jimple.infoflow.android.Analysis.AliasAnalysis.AndroidPointsToAnalysis;
import soot.jimple.infoflow.android.haniyehUtil;
import soot.jimple.infoflow.results.DataFlowResult;
import soot.jimple.toolkits.callgraph.CallGraph;

import java.io.FileNotFoundException;
import java.util.*;

public class WTGUtil {
    private static WTGUtil instance;
    public  List<WTGEdge> WTG = new ArrayList<>();
    public Map<DataFlowResult,String> dataFlowResult = new HashMap<>();



    public static CallGraph cg;
    public static WTGUtil getInstance() {
        if(instance == null){
            instance = new WTGUtil();
            cg = Scene.v().getCallGraph();
        }
        return instance;


    }

    public void handleWTG(String type) throws FileNotFoundException {
        if(type.equals("non-strict")){
            for(String tempClassName : AndroidPointsToAnalysis.foundedClasses){
                String str = tempClassName.substring(2, tempClassName.length() - 2);
                SootClass sc = extractAbsoluteClassFromIntent(str);
                addWindowTransmission(sc, haniyehUtil.getInstance().currentActivity, haniyehUtil.getInstance().currentCallback);

            }

            for(String tempClassName : AndroidPointsToAnalysis.susFoundedClasses){
                String str = tempClassName.substring(2, tempClassName.length() - 2);
                SootClass sc = extractAbsoluteClassFromIntent(str);
                addWindowTransmission(sc, haniyehUtil.getInstance().currentActivity, haniyehUtil.getInstance().currentCallback);

            }

        }
    }




    public  boolean addWindowTransmission(SootClass targetClass, SootClass srcClass, SootMethod method){
        boolean found = false;
        for(WTGEdge edge : WTG){
            if(edge.getSrcClass().equals(srcClass) && edge.getTargetClass().equals(targetClass) &&
            edge.getInitiatingCallback().equals(method)){
                found = true;
                break;
            }

        }
        if(!found){
            WTGEdge wtgEdge = new WTGEdge();
            wtgEdge.setSrcClass(srcClass);
            wtgEdge.setTargetClass(targetClass);
            wtgEdge.setInitiatingCallback(method);
            WTG.add(wtgEdge);
            return true;
        }
        return false;

    }

    public  SootClass extractAbsoluteClassFromIntent(String tempClassName)  {

        //String tempClassName = classArg.toString().substring(8,classArg.toString().length() - 2);
        String mainClassName = tempClassName.replace('/','.');


        return Scene.v().getSootClass(mainClassName);
    }


}
