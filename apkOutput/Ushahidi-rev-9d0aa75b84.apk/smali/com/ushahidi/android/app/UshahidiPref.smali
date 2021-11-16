.class public Lcom/ushahidi/android/app/UshahidiPref;
.super Ljava/lang/Object;
.source "UshahidiPref.java"


# static fields
.field public static AutoFetch:Z = false

.field public static AutoUpdateDelay:I = 0x0

.field public static final NOTIFICATION_ID:I = 0x1

.field public static final PREFS_NAME:Ljava/lang/String; = "UshahidiService"

.field public static activeDeployment:I

.field public static categoriesResponse:Ljava/lang/String;

.field public static countries:I

.field public static deploymentLatitude:Ljava/lang/String;

.field public static deploymentLongitude:Ljava/lang/String;

.field public static domain:Ljava/lang/String;

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field public static email:Ljava/lang/String;

.field public static fileName:Ljava/lang/String;

.field public static firstname:Ljava/lang/String;

.field public static flashLed:Z

.field public static httpRunning:Z

.field public static incidentsResponse:Ljava/lang/String;

.field public static isCheckinEnabled:I

.field public static lastname:Ljava/lang/String;

.field public static ringtone:Z

.field public static savePath:Ljava/lang/String;

.field private static settings:Landroid/content/SharedPreferences;

.field public static totalReports:Ljava/lang/String;

.field public static totalReportsFetched:Ljava/lang/String;

.field public static vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    sput-boolean v1, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z

    .line 12
    sput-boolean v1, Lcom/ushahidi/android/app/UshahidiPref;->AutoFetch:Z

    .line 14
    sput-boolean v1, Lcom/ushahidi/android/app/UshahidiPref;->vibrate:Z

    .line 16
    sput-boolean v1, Lcom/ushahidi/android/app/UshahidiPref;->ringtone:Z

    .line 18
    sput-boolean v1, Lcom/ushahidi/android/app/UshahidiPref;->flashLed:Z

    .line 20
    sput v1, Lcom/ushahidi/android/app/UshahidiPref;->countries:I

    .line 22
    sput v1, Lcom/ushahidi/android/app/UshahidiPref;->AutoUpdateDelay:I

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->incidentsResponse:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->categoriesResponse:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->email:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->totalReports:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    .line 46
    sput v1, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    .line 48
    sput v1, Lcom/ushahidi/android/app/UshahidiPref;->activeDeployment:I

    .line 50
    const-string v0, "0.0"

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    .line 52
    const-string v0, "0.0"

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLongitude:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->totalReportsFetched:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 62
    const-string v3, "UshahidiService"

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 64
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v3, ""

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "path":Ljava/lang/String;
    const-string v3, "savePath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    .line 69
    const-string v3, "Domain"

    sget-object v4, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    .line 70
    const-string v3, "Firstname"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    .line 71
    const-string v3, "Lastname"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    .line 72
    const-string v3, "Email"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->email:Ljava/lang/String;

    .line 73
    const-string v3, "Countries"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ushahidi/android/app/UshahidiPref;->countries:I

    .line 74
    const-string v3, "AutoUpdateDelay"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ushahidi/android/app/UshahidiPref;->AutoUpdateDelay:I

    .line 75
    const-string v3, "AutoFetch"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/ushahidi/android/app/UshahidiPref;->AutoFetch:Z

    .line 76
    const-string v3, "TotalReports"

    const-string v4, "20"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->totalReports:Ljava/lang/String;

    .line 77
    const-string v3, "CheckinEnabled"

    sget v4, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    .line 78
    const-string v3, "ActiveDeployment"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ushahidi/android/app/UshahidiPref;->activeDeployment:I

    .line 79
    const-string v3, "DeploymentLatitude"

    const-string v4, "0.0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    .line 80
    const-string v3, "DeploymentLongitude"

    const-string v4, "0.0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLongitude:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 86
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v0, "UshahidiService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->settings:Landroid/content/SharedPreferences;

    .line 90
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->editor:Landroid/content/SharedPreferences$Editor;

    .line 91
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "Domain"

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CheckinEnabled"

    sget v2, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ActiveDeployment"

    sget v2, Lcom/ushahidi/android/app/UshahidiPref;->activeDeployment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DeploymentLatitude"

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DeploymentLongitude"

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLongitude:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method
