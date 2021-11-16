.class Lcom/ushahidi/android/app/DeploymentSearch$10;
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
    .line 498
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$10;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$10;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v0}, Lcom/ushahidi/android/app/DeploymentSearch;->access$700(Lcom/ushahidi/android/app/DeploymentSearch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x1

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$10;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v0}, Lcom/ushahidi/android/app/UshahidiPref;->saveSettings(Landroid/content/Context;)V

    .line 509
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    goto :goto_0
.end method
