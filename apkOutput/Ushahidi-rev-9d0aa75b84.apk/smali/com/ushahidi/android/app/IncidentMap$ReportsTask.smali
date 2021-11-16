.class Lcom/ushahidi/android/app/IncidentMap$ReportsTask;
.super Landroid/os/AsyncTask;
.source "IncidentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/IncidentMap;
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

.field final synthetic this$0:Lcom/ushahidi/android/app/IncidentMap;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/IncidentMap;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/IncidentMap;Lcom/ushahidi/android/app/IncidentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/IncidentMap;
    .param p2, "x1"    # Lcom/ushahidi/android/app/IncidentMap$1;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;-><init>(Lcom/ushahidi/android/app/IncidentMap;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->processReports(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->status:Ljava/lang/Integer;

    .line 408
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 413
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060065

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    iget-object v2, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/IncidentMap;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/IncidentMap;->showIncidents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/IncidentMap;->access$102(Lcom/ushahidi/android/app/IncidentMap;Ljava/util/List;)Ljava/util/List;

    .line 418
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/IncidentMap;->access$000(Lcom/ushahidi/android/app/IncidentMap;)V

    .line 419
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/IncidentMap;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/IncidentMap;->setProgressBarIndeterminateVisibility(Z)V

    .line 403
    return-void
.end method
