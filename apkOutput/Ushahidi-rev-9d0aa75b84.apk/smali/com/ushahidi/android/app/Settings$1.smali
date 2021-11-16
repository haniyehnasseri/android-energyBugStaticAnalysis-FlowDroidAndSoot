.class Lcom/ushahidi/android/app/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/Settings;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/Settings;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/ushahidi/android/app/Settings$1;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$1;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-static {v1}, Lcom/ushahidi/android/app/Settings;->access$000(Lcom/ushahidi/android/app/Settings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$1;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 451
    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$1;->this$0:Lcom/ushahidi/android/app/Settings;

    const v2, 0x7f060067

    invoke-static {v1, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 458
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Lcom/ushahidi/android/app/Settings$ReportsTask;

    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$1;->this$0:Lcom/ushahidi/android/app/Settings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ushahidi/android/app/Settings$ReportsTask;-><init>(Lcom/ushahidi/android/app/Settings;Lcom/ushahidi/android/app/Settings$1;)V

    .line 455
    .local v0, "reportsTask":Lcom/ushahidi/android/app/Settings$ReportsTask;
    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$1;->this$0:Lcom/ushahidi/android/app/Settings;

    iput-object v1, v0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    .line 456
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/Settings$ReportsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
