.class Lcom/ushahidi/android/app/checkin/CheckinActivity$8;
.super Ljava/lang/Object;
.source "CheckinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/CheckinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 611
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$500(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    new-instance v1, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$500(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$602(Lcom/ushahidi/android/app/checkin/CheckinActivity;Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;)Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    .line 616
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$600(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->isProcessingResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$600(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$702(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$600(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$802(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$700(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    if-eq v0, v1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const v1, 0x7f060027

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->finish()V

    .line 635
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->goToCheckins()V

    .line 640
    :goto_1
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$900(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 641
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v0, v3}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 642
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$800(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const v1, 0x7f06001d

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method
