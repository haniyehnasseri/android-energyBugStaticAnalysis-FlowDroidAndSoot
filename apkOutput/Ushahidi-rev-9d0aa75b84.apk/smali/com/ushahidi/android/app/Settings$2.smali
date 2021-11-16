.class Lcom/ushahidi/android/app/Settings$2;
.super Ljava/lang/Thread;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/Settings;->validateUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/Settings;

.field final synthetic val$Url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/Settings;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/Settings;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/ushahidi/android/app/Settings$2;->this$0:Lcom/ushahidi/android/app/Settings;

    iput-object p2, p0, Lcom/ushahidi/android/app/Settings$2;->val$Url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$2;->this$0:Lcom/ushahidi/android/app/Settings;

    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$2;->val$Url:Ljava/lang/String;

    invoke-static {v1}, Lcom/ushahidi/android/app/util/Util;->validateUshahidiInstance(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/Settings;->access$002(Lcom/ushahidi/android/app/Settings;Z)Z

    .line 474
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$2;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-static {v0}, Lcom/ushahidi/android/app/Settings;->access$200(Lcom/ushahidi/android/app/Settings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/Settings$2;->this$0:Lcom/ushahidi/android/app/Settings;

    iget-object v1, v1, Lcom/ushahidi/android/app/Settings;->mValidateUrl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method
