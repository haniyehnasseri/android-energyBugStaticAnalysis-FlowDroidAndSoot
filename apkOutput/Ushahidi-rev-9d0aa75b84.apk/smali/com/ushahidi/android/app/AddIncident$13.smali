.class Lcom/ushahidi/android/app/AddIncident$13;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/AddIncident;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/AddIncident;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/AddIncident;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$13;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$13;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/AddIncident;->postToOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    invoke-static {}, Lcom/ushahidi/android/app/AddIncident;->access$800()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$13;->this$0:Lcom/ushahidi/android/app/AddIncident;

    iget-object v1, v1, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-static {}, Lcom/ushahidi/android/app/AddIncident;->access$800()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$13;->this$0:Lcom/ushahidi/android/app/AddIncident;

    iget-object v1, v1, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentSuccess:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
