.class Lcom/ushahidi/android/app/AddIncident$9;
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
    .line 672
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$9;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$9;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/AddIncident;->addToDb()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 675
    invoke-static {}, Lcom/ushahidi/android/app/AddIncident;->access$800()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$9;->this$0:Lcom/ushahidi/android/app/AddIncident;

    iget-object v1, v1, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-static {}, Lcom/ushahidi/android/app/AddIncident;->access$800()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$9;->this$0:Lcom/ushahidi/android/app/AddIncident;

    iget-object v1, v1, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentOfflineSuccess:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
