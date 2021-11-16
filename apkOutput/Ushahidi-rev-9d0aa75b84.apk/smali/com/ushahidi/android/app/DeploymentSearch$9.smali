.class Lcom/ushahidi/android/app/DeploymentSearch$9;
.super Ljava/lang/Object;
.source "DeploymentSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/DeploymentSearch;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/DeploymentSearch;

.field final synthetic val$deploymentName:Landroid/widget/EditText;

.field final synthetic val$deploymentUrl:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/DeploymentSearch;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    iput-object p2, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->val$deploymentUrl:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->val$deploymentName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->val$deploymentUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->validateUshahidiInstance(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->val$deploymentName:Landroid/widget/EditText;

    .line 410
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->val$deploymentName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->val$deploymentUrl:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {v0, v1, v2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addDeployment(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$100(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$9;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const v1, 0x7f060043

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
