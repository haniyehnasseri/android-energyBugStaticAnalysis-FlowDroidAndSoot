.class public Lcom/ushahidi/android/app/UshahidiService;
.super Landroid/app/Service;
.source "UshahidiService.java"


# static fields
.field public static AutoFetch:Z = false

.field public static AutoUpdateDelay:I = 0x0

.field public static final NEW_USHAHIDI_REPORT_FOUND:Ljava/lang/String; = "New_Ushahidi_Report_Found"

.field public static final NOTIFICATION_ID:I = 0x1

.field public static final PREFS_NAME:Ljava/lang/String; = "UshahidiService"

.field private static final TAG:Ljava/lang/String; = "Ushahidi - New Updates"

.field public static categoriesResponse:Ljava/lang/String;

.field public static countries:I

.field public static domain:Ljava/lang/String;

.field public static email:Ljava/lang/String;

.field public static fileName:Ljava/lang/String;

.field public static firstname:Ljava/lang/String;

.field public static flashLed:Z

.field public static httpRunning:Z

.field public static final httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public static incidentsResponse:Ljava/lang/String;

.field public static lastname:Ljava/lang/String;

.field public static mNewIncidentsImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNewIncidentsThumbnails:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ringtone:Z

.field public static savePath:Ljava/lang/String;

.field public static totalReports:Ljava/lang/String;

.field public static total_reports:Ljava/lang/String;

.field public static vibrate:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDoTask:Ljava/util/TimerTask;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mT:Ljava/util/Timer;

.field private newUshahidiReportNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/ushahidi/android/app/UshahidiService;->httpRunning:Z

    .line 57
    sput-boolean v0, Lcom/ushahidi/android/app/UshahidiService;->AutoFetch:Z

    .line 59
    sput-boolean v0, Lcom/ushahidi/android/app/UshahidiService;->vibrate:Z

    .line 61
    sput-boolean v0, Lcom/ushahidi/android/app/UshahidiService;->ringtone:Z

    .line 63
    sput-boolean v0, Lcom/ushahidi/android/app/UshahidiService;->flashLed:Z

    .line 65
    sput v0, Lcom/ushahidi/android/app/UshahidiService;->countries:I

    .line 67
    sput v0, Lcom/ushahidi/android/app/UshahidiService;->AutoUpdateDelay:I

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->incidentsResponse:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->categoriesResponse:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->savePath:Ljava/lang/String;

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->domain:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->firstname:Ljava/lang/String;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->lastname:Ljava/lang/String;

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->email:Ljava/lang/String;

    .line 87
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->totalReports:Ljava/lang/String;

    .line 89
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->fileName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->total_reports:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsImages:Ljava/util/Vector;

    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsThumbnails:Ljava/util/Vector;

    .line 99
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/UshahidiService;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mT:Ljava/util/Timer;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/UshahidiService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/UshahidiService;->showNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/UshahidiService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->clearData()Z

    .line 119
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 12
    .param p1, "tickerText"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "baseIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v5, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 185
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification;

    const v8, 0x7f020035

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v5, v8, p1, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    .line 187
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 188
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 189
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    const/4 v8, -0x1

    iput v8, v5, Landroid/app/Notification;->defaults:I

    .line 190
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    const-string v8, "Ushahidi - New Updates"

    invoke-virtual {v5, p0, v8, p1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 192
    sget-boolean v5, Lcom/ushahidi/android/app/UshahidiPref;->ringtone:Z

    if-eqz v5, :cond_0

    .line 194
    new-instance v5, Ljava/io/File;

    const-string v8, "/system/media/audio/ringtones/ringer.mp3"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 195
    .local v3, "ringURI":Landroid/net/Uri;
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 198
    .end local v3    # "ringURI":Landroid/net/Uri;
    :cond_0
    sget-boolean v5, Lcom/ushahidi/android/app/UshahidiPref;->vibrate:Z

    if-eqz v5, :cond_2

    .line 199
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide v10, 0x4025333333333334L    # 10.600000000000001

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double v6, v8, v10

    .line 200
    .local v6, "vibrateLength":D
    const/4 v5, 0x3

    new-array v4, v5, [J

    const/4 v5, 0x0

    const-wide/16 v8, 0x64

    aput-wide v8, v4, v5

    const/4 v5, 0x1

    const-wide/16 v8, 0x64

    aput-wide v8, v4, v5

    const/4 v5, 0x2

    double-to-long v8, v6

    aput-wide v8, v4, v5

    .line 203
    .local v4, "vibrate":[J
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->vibrate:[J

    .line 205
    sget-boolean v5, Lcom/ushahidi/android/app/UshahidiPref;->flashLed:Z

    if-eqz v5, :cond_1

    .line 206
    const v1, -0xffff01

    .line 207
    .local v1, "color":I
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    iput v1, v5, Landroid/app/Notification;->ledARGB:I

    .line 210
    .end local v1    # "color":I
    :cond_1
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    double-to-int v8, v6

    iput v8, v5, Landroid/app/Notification;->ledOffMS:I

    .line 211
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    double-to-int v8, v6

    iput v8, v5, Landroid/app/Notification;->ledOnMS:I

    .line 212
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 216
    .end local v4    # "vibrate":[J
    .end local v6    # "vibrateLength":D
    :cond_2
    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/ushahidi/android/app/UshahidiService;->newUshahidiReportNotification:Landroid/app/Notification;

    invoke-virtual {v5, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 217
    return-void
.end method

.method private startService()V
    .locals 6

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 129
    const-wide/32 v4, 0xea60

    .line 130
    .local v4, "period":J
    const-wide/16 v2, 0x1f4

    .line 132
    .local v2, "delay":J
    new-instance v0, Lcom/ushahidi/android/app/UshahidiService$1;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/UshahidiService$1;-><init>(Lcom/ushahidi/android/app/UshahidiService;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mDoTask:Ljava/util/TimerTask;

    .line 150
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mT:Ljava/util/Timer;

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiService;->mDoTask:Ljava/util/TimerTask;

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 151
    return-void
.end method

.method private stopService()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mDoTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mDoTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 161
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mT:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 162
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mT:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/ushahidi/android/app/UshahidiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 112
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/UshahidiService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    invoke-direct {p0}, Lcom/ushahidi/android/app/UshahidiService;->startService()V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 169
    invoke-direct {p0}, Lcom/ushahidi/android/app/UshahidiService;->stopService()V

    .line 170
    return-void
.end method
