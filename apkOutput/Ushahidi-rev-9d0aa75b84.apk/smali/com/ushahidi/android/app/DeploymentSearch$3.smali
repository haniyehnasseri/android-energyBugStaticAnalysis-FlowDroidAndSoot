.class Lcom/ushahidi/android/app/DeploymentSearch$3;
.super Ljava/lang/Object;
.source "DeploymentSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/DeploymentSearch;
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
    .line 168
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$3;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "result":Z
    sget-object v2, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    iget-object v3, p0, Lcom/ushahidi/android/app/DeploymentSearch$3;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v3}, Lcom/ushahidi/android/app/DeploymentSearch;->access$400(Lcom/ushahidi/android/app/DeploymentSearch;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteDeploymentById(Ljava/lang/String;)Z

    move-result v1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$3;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const v3, 0x7f060032

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 177
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$3;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/DeploymentSearch;->access$100(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$3;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/DeploymentSearch;->displayEmptyListText()V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$3;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const v3, 0x7f060033

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
