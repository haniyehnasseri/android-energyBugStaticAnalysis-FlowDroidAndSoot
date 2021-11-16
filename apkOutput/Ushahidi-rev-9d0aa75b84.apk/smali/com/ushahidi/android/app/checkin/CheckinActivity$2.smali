.class Lcom/ushahidi/android/app/checkin/CheckinActivity$2;
.super Ljava/lang/Object;
.source "CheckinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/CheckinActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 254
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 257
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$000(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const v3, 0x7f060018

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$102(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v1, v4}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$202(Lcom/ushahidi/android/app/checkin/CheckinActivity;Z)Z

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$200(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$300(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    .line 270
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error!\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .line 266
    invoke-static {v3}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$100(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 267
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$102(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
