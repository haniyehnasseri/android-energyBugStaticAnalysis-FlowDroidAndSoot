.class Lcom/ushahidi/android/app/Settings$ReportsTask;
.super Landroid/os/AsyncTask;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected appContext:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field protected status:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/ushahidi/android/app/Settings;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/Settings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/Settings;Lcom/ushahidi/android/app/Settings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/Settings;
    .param p2, "x1"    # Lcom/ushahidi/android/app/Settings$1;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/Settings$ReportsTask;-><init>(Lcom/ushahidi/android/app/Settings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 417
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->clearData()Z

    .line 418
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->processReports(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->status:Ljava/lang/Integer;

    .line 419
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/Settings;->isCheckinsEnabled()V

    .line 420
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/Settings$ReportsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const v2, 0x7f06002f

    .line 425
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060065

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 436
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 437
    return-void

    .line 427
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060067

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 430
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 432
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060093

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/Settings$ReportsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 409
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->this$0:Lcom/ushahidi/android/app/Settings;

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->this$0:Lcom/ushahidi/android/app/Settings;

    const v3, 0x7f06003f

    .line 410
    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 409
    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings$ReportsTask;->dialog:Landroid/app/ProgressDialog;

    .line 412
    return-void
.end method
