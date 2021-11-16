.class Lcom/ushahidi/android/app/DeploymentSearch$4;
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
    .line 342
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$4;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$4;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch$4;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$600(Lcom/ushahidi/android/app/DeploymentSearch;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$502(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$4;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentSearch;->setDeviceLocation()V

    .line 346
    return-void
.end method
