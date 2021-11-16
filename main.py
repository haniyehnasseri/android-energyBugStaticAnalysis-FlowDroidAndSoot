import os
import sys
from pathlib import Path
import shutil

apkPath = sys.argv[1]
apkName = sys.argv[2]
destDir = os.path.join(os.getcwd(), sys.argv[3])
# -------------------------------------decompile----------------------------
print(apkPath)
print(destDir)
apktool = "apktool.jar"
if os.path.exists(destDir) and os.path.isdir(destDir):
    shutil.rmtree(destDir)


os.system("java -jar " + apktool + " d " + apkPath  + " --output " + destDir + "\\" +apkName)