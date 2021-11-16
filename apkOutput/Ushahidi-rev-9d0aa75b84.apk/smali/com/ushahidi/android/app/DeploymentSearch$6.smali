.class Lcom/ushahidi/android/app/DeploymentSearch$6;
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


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/DeploymentSearch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$6;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$6;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentSearch;->clearAll()V

    .line 362
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$6;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$100(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)V

    .line 363
    return-void
.end method
