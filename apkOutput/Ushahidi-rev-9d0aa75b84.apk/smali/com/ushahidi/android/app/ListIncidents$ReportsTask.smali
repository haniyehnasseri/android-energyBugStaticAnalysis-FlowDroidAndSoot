.class Lcom/ushahidi/android/app/ListIncidents$ReportsTask;
.super Landroid/os/AsyncTask;
.source "ListIncidents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ListIncidents;
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

.field protected status:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/ushahidi/android/app/ListIncidents;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/ListIncidents;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/ListIncidents;Lcom/ushahidi/android/app/ListIncidents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/ListIncidents;
    .param p2, "x1"    # Lcom/ushahidi/android/app/ListIncidents$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;-><init>(Lcom/ushahidi/android/app/ListIncidents;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->processReports(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->status:Ljava/lang/Integer;

    .line 318
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const v2, 0x7f06002f

    .line 323
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060065

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 336
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v0}, Lcom/ushahidi/android/app/ListIncidents;->access$300(Lcom/ushahidi/android/app/ListIncidents;)Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->onRefreshComplete()V

    .line 337
    return-void

    .line 325
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 326
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060067

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 328
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 330
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 331
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/ListIncidents;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidents;->showIncidents(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ListIncidents;->showCategories()V

    .line 334
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060093

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidents;->setProgressBarIndeterminateVisibility(Z)V

    .line 313
    return-void
.end method
