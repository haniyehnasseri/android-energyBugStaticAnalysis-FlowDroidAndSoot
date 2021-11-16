.class Lcom/ushahidi/android/app/DeploymentSearch$7;
.super Ljava/lang/Object;
.source "DeploymentSearch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$deploymentUrl:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/DeploymentSearch;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$7;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    iput-object p2, p0, Lcom/ushahidi/android/app/DeploymentSearch$7;->val$deploymentUrl:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$7;->val$deploymentUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$7;->val$deploymentUrl:Landroid/widget/EditText;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
