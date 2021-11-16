package soot.jimple.infoflow.android;

import javafx.util.Pair;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.graphstream.ui.swingViewer.Viewer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xmlpull.v1.XmlPullParserException;
import soot.*;
import soot.jimple.Stmt;
import soot.jimple.infoflow.android.Analysis.AliasAnalysis.AndroidPointsToAnalysis;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.ResourceInfo;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.resourceLeakAnalysis;
import soot.jimple.infoflow.android.Analysis.WTGAnalysis.WTGEdge;
import soot.jimple.infoflow.android.Analysis.WTGAnalysis.WTGUtil;
import soot.jimple.infoflow.android.AndroidConfigs.AndroidUtil;
import soot.jimple.infoflow.android.Excel.ExcelUtil;
import soot.jimple.infoflow.android.apktool.apktoolUtil;
import soot.jimple.infoflow.results.DataFlowResult;
import soot.jimple.infoflow.results.InfoflowResults;
import soot.jimple.toolkits.callgraph.CallGraph;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.util.*;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import org.graphstream.graph.*;
import soot.util.IterableNumberer;


public class haniyehTest {

    private static final Logger logger = LoggerFactory.getLogger(haniyehTest.class);
    public static Graph graph;
    public static Viewer viewer;
    public static String apk_name;
    public static String SDK;
    public  static  SetupApplication app;
    public static String packageName = "";
    public static String apk = "";




    public static void doAnalysis(String resource) throws IOException, XmlPullParserException {
        switch (resource){
            case "android.location.LocationListener":
                ResourceInfo resourceInfo = new ResourceInfo();
                resourceInfo.setName(resource);
                resourceInfo.setAcquireMethod
                        ("<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener)>");
                resourceInfo.setReleaseMethod
                        ("<android.location.LocationManager: void removeUpdates(android.location.LocationListener)>");
                List<Integer> acquireIndexes =  new ArrayList<>();
                acquireIndexes.add(3);
                resourceInfo.setAcquireMethodIndexes(acquireIndexes);
                List<Integer> releaseIndexes =  new ArrayList<>();
                releaseIndexes.add(0);
                resourceInfo.setReleaseMethodIndexes(releaseIndexes);
                List<String> importantArgs = new ArrayList<>();
                importantArgs.add("android.location.LocationListener");
                resourceInfo.setImportantArgs(importantArgs);
                resourceInfo.setType("type1");
                resourceLeakAnalysis.setResource(resourceInfo);
                break;

            case "android.database.Cursor":
                ResourceInfo resourceInfoo = new ResourceInfo();
                resourceInfoo.setName(resource);
                resourceInfoo.setAcquireMethod("query-rawQuery");
                resourceInfoo.setReleaseMethod("<android.database.Cursor: void close()>");
                List<String> importantArgss = new ArrayList<>();
                importantArgss.add("android.database.Cursor");
                resourceInfoo.setImportantArgs(importantArgss);
                resourceInfoo.setType("type2");
                resourceLeakAnalysis.setResource(resourceInfoo);
                break;

            case "android.database.sqlite.SQLiteDatabase":
                ResourceInfo resourceInfooo = new ResourceInfo();
                resourceInfooo.setName(resource);
                resourceInfooo.setAcquireMethod("");
                resourceInfooo.setReleaseMethod("<android.database.sqlite.SQLiteDatabase: void close()>");
                List<String> importantArgsss = new ArrayList<>();
                importantArgsss.add("android.database.sqlite.SQLiteDatabase");
                resourceInfooo.setImportantArgs(importantArgsss);
                resourceInfooo.setType("type2");
                resourceLeakAnalysis.setResource(resourceInfooo);
                break;
            case "android.hardware.Camera":
                ResourceInfo resourceInfoooo = new ResourceInfo();
                resourceInfoooo.setName(resource);
                resourceInfoooo.setAcquireMethod("open-lock");
                resourceInfoooo.setReleaseMethod("<android.hardware.Camera: void release()>-<android.hardware.Camera: void unlock()>");
                List<String> importantArgssss = new ArrayList<>();
                importantArgssss.add("android.hardware.Camera");
                resourceInfoooo.setImportantArgs(importantArgssss);
                resourceInfoooo.setType("type2");
                resourceLeakAnalysis.setResource(resourceInfoooo);
                break;
            case "android.media.MediaPlayer":
                ResourceInfo resourceInfooooo = new ResourceInfo();
                resourceInfooooo.setName(resource);
                resourceInfooooo.setAcquireMethod("<android.media.MediaPlayer: void start()>");
                resourceInfooooo.setReleaseMethod("<android.media.MediaPlayer: void stop()>");
                List<String> importantArgsssss = new ArrayList<>();
                importantArgsssss.add("android.media.MediaPlayer");
                resourceInfooooo.setImportantArgs(importantArgsssss);
                resourceInfooooo.setType("type1");
                List<Integer> releaseIndexess =  new ArrayList<>();
                releaseIndexess.add(-1);
                resourceInfooooo.setReleaseMethodIndexes(releaseIndexess);
                List<Integer> acquireIndexess =  new ArrayList<>();
                acquireIndexess.add(-1);
                resourceInfooooo.setAcquireMethodIndexes(acquireIndexess);
                resourceLeakAnalysis.setResource(resourceInfooooo);
                break;
            case "android.net.http.AndroidHttpClient":
                ResourceInfo resourceInfoooooo = new ResourceInfo();
                resourceInfoooooo.setName(resource);
                resourceInfoooooo.setAcquireMethod("newInstance");
                resourceInfoooooo.setReleaseMethod("<android.net.http.AndroidHttpClient: void close()>");
                List<String> importantArgssssss = new ArrayList<>();
                importantArgssssss.add("android.net.http.AndroidHttpClient");
                resourceInfoooooo.setImportantArgs(importantArgssssss);
                resourceInfoooooo.setType("type2");
                resourceLeakAnalysis.setResource(resourceInfoooooo);
                break;
            case "android.os.PowerManager.WakeLock":
                ResourceInfo resourceInfooooooo = new ResourceInfo();
                resourceInfooooooo.setName(resource);
                resourceInfooooooo.setAcquireMethod("<android.os.PowerManager$WakeLock: void acquire()>-<android.os.PowerManager$WakeLock: void acquire(long)>");
                resourceInfooooooo.setReleaseMethod("<android.os.PowerManager$WakeLock: void release()>");
                List<String> importantArgsssssss = new ArrayList<>();
                importantArgsssssss.add("android.os.PowerManager$WakeLock");
                resourceInfooooooo.setImportantArgs(importantArgsssssss);
                resourceInfooooooo.setType("type1");
                List<Integer> releaseIndexesss =  new ArrayList<>();
                releaseIndexesss.add(-1);
                resourceInfooooooo.setReleaseMethodIndexes(releaseIndexesss);
                List<Integer> acquireIndexesss =  new ArrayList<>();
                acquireIndexesss.add(-1);
                resourceInfooooooo.setAcquireMethodIndexes(acquireIndexesss);
                resourceLeakAnalysis.setResource(resourceInfooooooo);
                break;
            case "android.os.Parcel":
                ResourceInfo resourceInfoooooooo = new ResourceInfo();
                resourceInfoooooooo.setName(resource);
                resourceInfoooooooo.setAcquireMethod("obtain");
                resourceInfoooooooo.setReleaseMethod("<android.os.Parcel: void recycle()>");
                List<String> importantArgssssssss = new ArrayList<>();
                importantArgssssssss.add("android.os.Parcel");
                resourceInfoooooooo.setImportantArgs(importantArgssssssss);
                resourceInfoooooooo.setType("type2");
                resourceLeakAnalysis.setResource(resourceInfoooooooo);
                break;

            case "android.os.ParcelFileDescriptor":
                ResourceInfo resourceInfooooooooo = new ResourceInfo();
                resourceInfooooooooo.setName(resource);
                resourceInfooooooooo.setAcquireMethod("open");
                resourceInfooooooooo.setReleaseMethod("<android.os.ParcelFileDescriptor: void close()>");
                List<String> importantArgsssssssss = new ArrayList<>();
                importantArgsssssssss.add("android.os.ParcelFileDescriptor");
                resourceInfooooooooo.setImportantArgs(importantArgsssssssss);
                resourceInfooooooooo.setType("type2");
                resourceLeakAnalysis.setResource(resourceInfooooooooo);
                break;

            case "java.net.Socket":
                ResourceInfo resourceInfoooooooooo = new ResourceInfo();
                resourceInfoooooooooo.setName(resource);
                resourceInfoooooooooo.setAcquireMethod("bind");
                resourceInfoooooooooo.setReleaseMethod("<java.net.Socket: void close()>");
                List<String> importantArgssssssssss = new ArrayList<>();
                importantArgssssssssss.add("java.net.Socket");
                resourceInfoooooooooo.setImportantArgs(importantArgssssssssss);
                resourceInfoooooooooo.setType("type1");
                List<Integer> releaseIndexessssssss =  new ArrayList<>();
                releaseIndexessssssss.add(-1);
                resourceInfoooooooooo.setReleaseMethodIndexes(releaseIndexessssssss);
                List<Integer> acquireIndexessssssss =  new ArrayList<>();
                acquireIndexessssssss.add(-1);
                resourceInfoooooooooo.setAcquireMethodIndexes(acquireIndexessssssss);
                resourceLeakAnalysis.setResource(resourceInfoooooooooo);
                break;
            case "java.util.concurrent.Semaphore":
                ResourceInfo resourceInfooooooooooo = new ResourceInfo();
                resourceInfooooooooooo.setName(resource);
                resourceInfooooooooooo.setAcquireMethod("acquire");
                resourceInfooooooooooo.setReleaseMethod("<java.util.concurrent.Semaphore: void release()>");
                List<String> importantArgsssssssssss = new ArrayList<>();
                importantArgsssssssssss.add("java.util.concurrent.Semaphore");
                resourceInfooooooooooo.setImportantArgs(importantArgsssssssssss);
                resourceInfooooooooooo.setType("type1");
                List<Integer> releaseIndexessss =  new ArrayList<>();
                releaseIndexessss.add(-1);
                resourceInfooooooooooo.setReleaseMethodIndexes(releaseIndexessss);
                List<Integer> acquireIndexessss =  new ArrayList<>();
                acquireIndexessss.add(-1);
                resourceInfooooooooooo.setAcquireMethodIndexes(acquireIndexessss);
                resourceLeakAnalysis.setResource(resourceInfooooooooooo);
                break;
        }

        if(resource.startsWith("java.io")){
            ResourceInfo resourceInfoooooooooo = new ResourceInfo();
            resourceInfoooooooooo.setName(resource);
            resourceInfoooooooooo.setAcquireMethod("<init>");
            resourceInfoooooooooo.setReleaseMethod("<" +resource+":" +" void close()>");
            List<String> importantArgssssssssss = new ArrayList<>();
            importantArgssssssssss.add(resource);
            resourceInfoooooooooo.setImportantArgs(importantArgssssssssss);
            resourceInfoooooooooo.setType("type1");
            List<Integer> releaseIndexessss =  new ArrayList<>();
            releaseIndexessss.add(-1);
            resourceInfoooooooooo.setReleaseMethodIndexes(releaseIndexessss);
            List<Integer> acquireIndexessss =  new ArrayList<>();
            acquireIndexessss.add(-1);
            resourceInfoooooooooo.setAcquireMethodIndexes(acquireIndexessss);
            resourceLeakAnalysis.setResource(resourceInfoooooooooo);
        }

        logger.info("  Starting phase 1 ...  ");

        // for each activity founded, first check for callbacks and do analysis of its callback
        // second, save all path found
        //List<String> activityNames = haniyehUtil.getInstance().getMainActivityName(apk_name);
        for(SootClass mainActivityClass : haniyehUtil.getInstance().applicationClasses){
            haniyehUtil.getInstance().analyzeActivityForResources(mainActivityClass);
            haniyehUtil.getInstance().preparePaths(mainActivityClass);
            haniyehUtil.getInstance().results.clear();
        }

        System.out.println("\n");

       // print and save leaks found in this activity in excel
       System.out.println("Final Results for Single Activity Depth -> Resource : " + resource);
        for(String finalRes : haniyehUtil.getInstance().finalResults){
            //System.out.println(Arrays.toString(finalRes.split("&")));
            System.out.println(finalRes.split("&")[2]);
        }
        System.out.println("\n");
        ExcelUtil.main(new String[] {});



    }

    public static void main(String[] args) throws IOException, XmlPullParserException, InterruptedException {

        // ResourceInfo object is used to save resource information (see the class)
        // Result is the object in which we save the information about the unit that has caused acquire/release
        // resourceLeakAnalysis is the main analysis which searches for the results above in each method
        // haniyehTest and haniyehUtil startpoint and util calss in order
        // WTGUtil used to save activity to activity paths (WTGEdge)
        // AndroidUtil + InfoflowAndroidConfiguration for soot and flowdroid setups and initializations
        // AndroidPointsToAnalysis + LocalMustAliasAnalysis for finding local roots and taint analysis!
        // ExcelUtil for providing excel result
        // Loop + LoopFinder + LoopUnroller for removing unknown iteration number loops
        // apktoolUtil for running apktool on the app and map hex ids to string ids
        //... let's start! ...
        // C:\Users\haniye\OneDrive\Desktop\flowdroid2\apps\DroidLeaks\apps\CSipSimple-rev-0a2a1f1d37.apk

        apk_name = "C:\\Users\\haniye\\OneDrive\\Desktop\\flowdroid2\\apps\\DroidLeaks\\apps\\Ushahidi-rev-9d0aa75b84.apk";
        //
        String[] directories = apk_name.split(Pattern.quote(FileSystems.getDefault().getSeparator()));
        apk = directories[directories.length - 1];
        //
        SDK = "C:\\Users\\haniye\\AppData\\Local\\Android\\Sdk\\platforms";
        String sourceAndSink = "C:\\Users\\haniye\\OneDrive\\Desktop\\flowdroid2\\FlowDroid\\soot-infoflow-android\\SourcesAndSinks.txt";
        Map<String, Set<String>> map = new HashMap<String, Set<String>>();
        app = new SetupApplication(AndroidUtil.getFlowDroidConfig(apk_name, SDK));
        app.getConfig().setMergeDexFiles(true);
        InfoflowResults infoflowResults = app.runInfoflow(sourceAndSink);
        soot.PointsToAnalysis pointsToAnalysis = Scene.v().getPointsToAnalysis();
        CallGraph callGraph = Scene.v().getCallGraph();
        packageName = AndroidUtil.getPackageName(apk_name);


        /*List<SootClass> Source_To_Sink_Classes = new ArrayList<>();

        for(DataFlowResult df :infoflowResults.getResultSet()){
            System.out.println(df.getSink() + " <- " + df.getSource());
            //System.out.println(Arrays.toString(df.getSource().getPath()));
            for(Stmt stmt : df.getSource().getPath()){
                if(stmt.containsInvokeExpr()){
                    SootClass sc = stmt.getInvokeExpr().getMethod().getDeclaringClass();
                    Source_To_Sink_Classes.add(sc);
                }
            }
        }*/

        logger.info("  CallGraph construct finished ...  ");

        // initialize AndroidPointsToAnalysis
        logger.info("  initializing AndroidPointsToAnalysis ...  ");
        AndroidPointsToAnalysis.apkPath = apk_name;
        AndroidPointsToAnalysis.androidJar = SDK;

        haniyehUtil.getInstance().setAnalyzer(app);

        haniyehUtil.getInstance().setCallGraph(callGraph);

        // gather activity callbacks
        haniyehUtil.getInstance().gatherActivityCallBacks(apk_name);


        // one or more resources hare
        System.out.println("\n\n Resource :  android.location.LocationListener \n\n");
        doAnalysis("android.location.LocationListener");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.database.Cursor \n\n");
        doAnalysis("android.database.Cursor");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.database.sqlite.SQLiteDatabase\n\n");
        doAnalysis("android.database.sqlite.SQLiteDatabase");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.hardware.Camera\n\n");
        doAnalysis("android.hardware.Camera");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.media.MediaPlayer\n\n");
        doAnalysis("android.media.MediaPlayer");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.net.http.AndroidHttpClient \n\n");
        doAnalysis("android.net.http.AndroidHttpClient");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.os.PowerManager.WakeLock \n\n");
        doAnalysis("android.os.PowerManager.WakeLock");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.os.Parcel \n\n");
        doAnalysis("android.os.Parcel");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  android.os.ParcelFileDescriptor \n\n");
        doAnalysis("android.os.ParcelFileDescriptor");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.InputStream\n\n");
        doAnalysis("java.io.InputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.InputStream\n\n");
        doAnalysis("java.io.InputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.BufferedOutputStream\n\n");
        doAnalysis("java.io.BufferedOutputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.BufferedReader \n\n");
        doAnalysis("java.io.BufferedReader");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.BufferedWriter \n\n");
        doAnalysis("java.io.BufferedWriter");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.ByteArrayOutputStream \n\n");
        doAnalysis("java.io.ByteArrayOutputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.DataOutputStream \n\n");
        doAnalysis("java.io.DataOutputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.FileInputStream \n\n");
        doAnalysis("java.io.FileInputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.FileOutputStream \n\n");
        doAnalysis("java.io.FileOutputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.FilterInputStream \n\n");
        doAnalysis("java.io.FilterInputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.FilterOutputStream \n\n");
        doAnalysis("java.io.FilterOutputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.InputStreamReader \n\n");
        doAnalysis("java.io.InputStreamReader");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.ObjectInputStream \n\n");
        doAnalysis("java.io.ObjectInputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.OutputStream \n\n");
        doAnalysis("java.io.OutputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.OutputStreamWriter \n\n");
        doAnalysis("java.io.OutputStreamWriter");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.io.PipedOutputStream \n\n");
        doAnalysis("java.io.PipedOutputStream");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.net.Socket \n\n");
        doAnalysis("java.net.Socket");
        haniyehUtil.getInstance().reset();

        System.out.println("\n\n Resource :  java.util.concurrent.Semaphore \n\n");
        doAnalysis("java.util.concurrent.Semaphore");
        haniyehUtil.getInstance().reset();






        // Just buttons already added !
        System.out.println("VIEW result : ");

        apktoolUtil.main(new String[] {apk_name});

        Map <String, Pair<SootMethod, String> > newViews = new HashMap<>();
        for(Map.Entry<String, Pair<SootMethod, String>> entry : haniyehUtil.getInstance().views.entrySet()){
            String realID = apktoolUtil.getID(entry.getKey());
            String dialogTtile = apktoolUtil.getID(entry.getValue().getValue());
            if(!realID.equals("NOT INTEGER")){
                if(!dialogTtile.equals("NOT INTEGER"))
                    newViews.put(realID, new Pair<>(entry.getValue().getKey(), dialogTtile));
                else
                    newViews.put(realID, entry.getValue());
            }
            else{
                if(!dialogTtile.equals("NOT INTEGER"))
                    newViews.put(entry.getKey(), new Pair<>(entry.getValue().getKey(), dialogTtile));
                else
                    newViews.put(entry.getKey(), entry.getValue());
            }
        }
        haniyehUtil.getInstance().views.clear();

        for(Map.Entry<String, Pair<SootMethod, String>> entry : newViews.entrySet()){
            haniyehUtil.getInstance().views.put(entry.getKey(), entry.getValue());

        }

        for(Map.Entry<String, Pair<SootMethod, String>> entry : haniyehUtil.getInstance().views.entrySet()){
            System.out.println(entry.toString());
        }


        System.out.println("\n");


        // activity connections !
        System.out.println("WTG result : ");

        for(WTGEdge wtg : WTGUtil.getInstance().WTG){
            System.out.println(wtg);
        }

        String pyPath =  System.getProperty("user.dir") +"\\results.xlsx";
        FileInputStream excelFile = new FileInputStream(new File(pyPath));
        Workbook workbook = new XSSFWorkbook(excelFile);
        Sheet datatypeSheet = workbook.getSheetAt(0);
        Iterator<Row> iterator = datatypeSheet.iterator();

        // Add additional column for results
        while (iterator.hasNext()) {
            Row currentRow = iterator.next();
            if(currentRow.getCell(currentRow.getLastCellNum() - 1).toString().startsWith("id"))
                continue;
            String callbackSig = currentRow.getCell(3).toString();
            Cell cell = currentRow.createCell(currentRow.getLastCellNum(), CellType.STRING);
            if(currentRow.getRowNum() == 0)
                cell.setCellValue("id");
            else{
                List<Map.Entry<String, Pair<SootMethod, String>>> entrySet = haniyehUtil.getInstance().views.entrySet().stream().filter(entry -> entry.getValue().getKey().getSignature().equals(callbackSig)).collect(Collectors.toList());
                if(!entrySet.isEmpty()){
                    StringBuilder val = new StringBuilder("id = ");
                    for(Map.Entry<String, Pair<SootMethod, String>> entry : entrySet)
                        val.append(entry.getKey()).append("/");
                    cell.setCellValue("id = " + val);
                }
                else
                    cell.setCellValue("id = " + "not found");
            }
        }

        FileOutputStream outputStream = new FileOutputStream(pyPath);
        workbook.write(outputStream);
        workbook.close();
        outputStream.close();


    }
}
