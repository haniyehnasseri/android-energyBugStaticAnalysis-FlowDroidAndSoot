.class Lcom/ushahidi/android/app/Ushahidi$ReportsTask;
.super Landroid/os/AsyncTask;
.source "Ushahidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/Ushahidi;
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

.field final synthetic this$0:Lcom/ushahidi/android/app/Ushahidi;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/Ushahidi;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/Ushahidi;Lcom/ushahidi/android/app/Ushahidi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/Ushahidi;
    .param p2, "x1"    # Lcom/ushahidi/android/app/Ushahidi$1;

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->processReports(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->status:Ljava/lang/Integer;

    .line 474
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->checkForCheckin(Landroid/content/Context;)V

    .line 475
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const v2, 0x7f06002f

    .line 480
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060065

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 492
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/Ushahidi;->access$202(Lcom/ushahidi/android/app/Ushahidi;Z)Z

    .line 493
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-static {v0}, Lcom/ushahidi/android/app/Ushahidi;->access$300(Lcom/ushahidi/android/app/Ushahidi;)V

    .line 494
    return-void

    .line 482
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060067

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 485
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 486
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 487
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060093

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 454
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 464
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-static {v0, v4}, Lcom/ushahidi/android/app/Ushahidi;->access$202(Lcom/ushahidi/android/app/Ushahidi;Z)Z

    .line 465
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-static {v0}, Lcom/ushahidi/android/app/Ushahidi;->access$300(Lcom/ushahidi/android/app/Ushahidi;)V

    .line 466
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/Ushahidi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const v3, 0x7f060069

    .line 467
    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/Ushahidi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->dialog:Landroid/app/ProgressDialog;

    .line 469
    return-void
.end method
