.class Lcom/ushahidi/android/app/DeploymentSearch$5;
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
    .line 366
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$5;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 369
    return-void
.end method
