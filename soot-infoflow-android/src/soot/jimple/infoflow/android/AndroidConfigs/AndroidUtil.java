package soot.jimple.infoflow.android.AndroidConfigs;

import org.xmlpull.v1.XmlPullParserException;
import soot.SootClass;
import soot.SootMethod;
import soot.jimple.infoflow.InfoflowConfiguration;
import soot.jimple.infoflow.android.manifest.ProcessManifest;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class AndroidUtil {

    public static String getPackageName(String apkPath) {
        String packageName = "";
        try {
            ProcessManifest manifest = new ProcessManifest(apkPath);
            packageName = manifest.getPackageName();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            e.printStackTrace();
        }
        return packageName;
    }

    public static boolean isAndroidClass(SootClass sootClass){
        List<String> androidPrefixPkgNames = Arrays.asList("android.", "com.google.android", "androidx.");
        for(String androidPrefixPkgName : androidPrefixPkgNames)
            if(sootClass.getName().startsWith(androidPrefixPkgName))
                return true;

        return false;

    }

    public static boolean isAndroidMethod(SootMethod sootMethod){
        String clsSig = sootMethod.getDeclaringClass().getName();
        List<String> androidPrefixPkgNames = Arrays.asList("android.", "com.google.android", "androidx.");
        return androidPrefixPkgNames.stream().map(clsSig::startsWith).reduce(false, (res, curr) -> res || curr);
    }

    public static InfoflowAndroidConfiguration getFlowDroidConfig(String apkPath, String androidJar) {
        return getFlowDroidConfig(apkPath, androidJar, InfoflowConfiguration.CallgraphAlgorithm.SPARK);
    }

    public static InfoflowAndroidConfiguration getFlowDroidConfig(String apkPath, String androidJar, InfoflowConfiguration.CallgraphAlgorithm cgAlgorithm) {
        final InfoflowAndroidConfiguration config = new InfoflowAndroidConfiguration();
        config.getAnalysisFileConfig().setTargetAPKFile(apkPath);
        config.getAnalysisFileConfig().setAndroidPlatformDir(androidJar);
        config.setCodeEliminationMode(InfoflowConfiguration.CodeEliminationMode.NoCodeElimination);
        config.setEnableReflection(true);
        config.setCallgraphAlgorithm(cgAlgorithm);

//        config.getCallbackConfig().setEnableCallbacks(true);
//        config.getCallbackConfig().setMaxAnalysisCallbackDepth(100);
//        config.getCallbackConfig().setMaxCallbacksPerComponent(100);

        //config.getSourceSinkConfig().setEnableLifecycleSources(true);
        //config.getAccessPathConfiguration().setAccessPathLength(50);
        //config.getAccessPathConfiguration().setUseRecursiveAccessPaths(true);


        //config.setIncrementalResultReporting(true);
        //config.setLogSourcesAndSinks(true);
        //config.setEnableTypeChecking(true);
        //config.setInspectSinks(true);
        //config.setInspectSources(true);



        config.setFlowSensitiveAliasing(true);
        config.setAliasingAlgorithm(InfoflowConfiguration.AliasingAlgorithm.FlowSensitive);
//        config.setImplicitFlowMode(InfoflowConfiguration.ImplicitFlowMode.AllImplicitFlows);
//        config.getAccessPathConfiguration().setAccessPathLength(20);
//        config.getPathConfiguration().setMaxPathLength(20);
        config.getPathConfiguration().setPathBuildingAlgorithm(InfoflowConfiguration.PathBuildingAlgorithm.ContextSensitive);
        config.getPathConfiguration().setPathReconstructionMode(InfoflowConfiguration.PathReconstructionMode.Fast);
        //config.getIccConfig().setIccModel("C:\\Users\\haniye\\OneDrive\\Desktop\\flowdroid2\\FlowDroid\\soot-infoflow-android\\iccta_testdata_ic3_results\\de.ecspride_1.txt");
//        config.getCallbackConfig().setMaxCallbacksPerComponent(100);
//        config.getCallbackConfig().setMaxAnalysisCallbackDepth(1000);
        return config;
    }
}