.class Lcom/ushahidi/android/app/UshahidiService$1;
.super Ljava/util/TimerTask;
.source "UshahidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/UshahidiService;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/UshahidiService;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/UshahidiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/UshahidiService;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ushahidi/android/app/UshahidiService$1;->this$0:Lcom/ushahidi/android/app/UshahidiService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService$1;->this$0:Lcom/ushahidi/android/app/UshahidiService;

    invoke-static {v0}, Lcom/ushahidi/android/app/UshahidiService;->access$100(Lcom/ushahidi/android/app/UshahidiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ushahidi/android/app/UshahidiService$1$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/UshahidiService$1$1;-><init>(Lcom/ushahidi/android/app/UshahidiService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method
