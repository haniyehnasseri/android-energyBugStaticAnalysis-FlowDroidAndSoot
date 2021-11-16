.class public Lcom/ushahidi/android/app/UshahidiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UshahidiReceiver.java"


# static fields
.field public static final ACTION_REFRESH_REPORT_ALARM:Ljava/lang/String; = "com.ushahidi.android.app.ushahidi.ACTION_UPDATE_USHAHIDI_ALARM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/UshahidiService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "startIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    return-void
.end method
