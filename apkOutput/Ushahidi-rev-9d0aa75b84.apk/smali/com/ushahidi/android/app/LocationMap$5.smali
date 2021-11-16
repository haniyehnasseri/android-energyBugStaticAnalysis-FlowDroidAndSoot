.class Lcom/ushahidi/android/app/LocationMap$5;
.super Ljava/lang/Thread;
.source "LocationMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/LocationMap;->startLongRunningOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/LocationMap;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/LocationMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ushahidi/android/app/LocationMap$5;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$5;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/LocationMap;->access$400(Lcom/ushahidi/android/app/LocationMap;)V

    .line 174
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$5;->this$0:Lcom/ushahidi/android/app/LocationMap;

    iget-object v0, v0, Lcom/ushahidi/android/app/LocationMap;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap$5;->this$0:Lcom/ushahidi/android/app/LocationMap;

    iget-object v1, v1, Lcom/ushahidi/android/app/LocationMap;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method
