.class Lcom/ushahidi/android/app/checkin/CheckinActivity$3;
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
    .line 274
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$3;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$3;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$400(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$3;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->access$400(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/ImageManager;->deleteImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$3;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->showDialog(I)V

    .line 280
    return-void
.end method
