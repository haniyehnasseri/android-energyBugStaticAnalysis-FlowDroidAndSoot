.class Lcom/ushahidi/android/app/DeploymentSearch$2;
.super Ljava/lang/Object;
.source "DeploymentSearch.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/DeploymentSearch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/DeploymentSearch;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/DeploymentSearch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$2;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$2;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v2}, Lcom/ushahidi/android/app/DeploymentSearch;->access$200(Lcom/ushahidi/android/app/DeploymentSearch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/DeploymentsData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "deploymentId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$2;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/ushahidi/android/app/DeploymentSearch;->isDeploymentActive(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$2;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/DeploymentSearch;->goToReports()V

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v1, Lcom/ushahidi/android/app/DeploymentSearch$ReportsTask;

    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$2;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ushahidi/android/app/DeploymentSearch$ReportsTask;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;Lcom/ushahidi/android/app/DeploymentSearch$1;)V

    .line 129
    .local v1, "reportsTask":Lcom/ushahidi/android/app/DeploymentSearch$ReportsTask;
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$2;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    iput-object v2, v1, Lcom/ushahidi/android/app/DeploymentSearch$ReportsTask;->appContext:Landroid/content/Context;

    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ushahidi/android/app/DeploymentSearch$ReportsTask;->id:Ljava/lang/String;

    .line 131
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/DeploymentSearch$ReportsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
