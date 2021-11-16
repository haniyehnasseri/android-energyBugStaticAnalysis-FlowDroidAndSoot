.class Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;
.super Landroid/os/AsyncTask;
.source "DeploymentSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/DeploymentSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDeploymentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected appContext:Landroid/content/Context;

.field private deployments:Lcom/ushahidi/android/app/net/Deployments;

.field protected distance:Ljava/lang/String;

.field protected location:Landroid/location/Location;

.field protected status:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/ushahidi/android/app/DeploymentSearch;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/DeploymentSearch;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/DeploymentSearch;Lcom/ushahidi/android/app/DeploymentSearch$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;
    .param p2, "x1"    # Lcom/ushahidi/android/app/DeploymentSearch$1;

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->deployments:Lcom/ushahidi/android/app/net/Deployments;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->distance:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->location:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Lcom/ushahidi/android/app/net/Deployments;->fetchDeployments(Ljava/lang/String;Landroid/location/Location;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->status:Ljava/lang/Boolean;

    .line 548
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->status:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 526
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->status:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->appContext:Landroid/content/Context;

    const v1, 0x7f06002e

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$100(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$802(Lcom/ushahidi/android/app/DeploymentSearch;Z)Z

    .line 561
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v0}, Lcom/ushahidi/android/app/DeploymentSearch;->access$900(Lcom/ushahidi/android/app/DeploymentSearch;)V

    .line 562
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060034

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 526
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$802(Lcom/ushahidi/android/app/DeploymentSearch;Z)Z

    .line 541
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v0}, Lcom/ushahidi/android/app/DeploymentSearch;->access$900(Lcom/ushahidi/android/app/DeploymentSearch;)V

    .line 542
    new-instance v0, Lcom/ushahidi/android/app/net/Deployments;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ushahidi/android/app/net/Deployments;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->deployments:Lcom/ushahidi/android/app/net/Deployments;

    .line 543
    return-void
.end method
