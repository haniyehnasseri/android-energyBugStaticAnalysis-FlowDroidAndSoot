.class Lcom/ushahidi/android/app/checkin/CheckinActivity$1;
.super Ljava/lang/Object;
.source "CheckinActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 215
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 218
    if-nez p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$000(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$000(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void
.end method
