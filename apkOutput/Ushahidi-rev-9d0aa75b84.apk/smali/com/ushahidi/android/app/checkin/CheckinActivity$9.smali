.class Lcom/ushahidi/android/app/checkin/CheckinActivity$9;
.super Ljava/lang/Thread;
.source "CheckinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/CheckinActivity;->postCheckin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$firstname:Ljava/lang/String;

.field final synthetic val$imei:Ljava/lang/String;

.field final synthetic val$lastname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    iput-object p2, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$imei:Ljava/lang/String;

    iput-object p3, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$firstname:Ljava/lang/String;

    iput-object p5, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$lastname:Ljava/lang/String;

    iput-object p6, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 654
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$imei:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$domain:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v3}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$1000(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .line 655
    invoke-static {v4}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$400(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$firstname:Ljava/lang/String;

    iget-object v6, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$lastname:Ljava/lang/String;

    iget-object v7, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->val$email:Ljava/lang/String;

    invoke-static {}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$1100()D

    move-result-wide v8

    .line 656
    invoke-static {}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$1200()D

    move-result-wide v10

    .line 654
    invoke-static/range {v1 .. v11}, Lcom/ushahidi/android/app/checkin/NetworkServices;->postToOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$502(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$1300(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    iget-object v1, v1, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mPostCheckin:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    return-void
.end method
