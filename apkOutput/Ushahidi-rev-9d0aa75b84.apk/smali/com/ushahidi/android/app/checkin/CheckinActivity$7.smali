.class Lcom/ushahidi/android/app/checkin/CheckinActivity$7;
.super Ljava/lang/Object;
.source "CheckinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/CheckinActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 529
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$7;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 532
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$7;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const-class v3, Lcom/ushahidi/android/app/ImageCapture;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 535
    .local v0, "launchCamera":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$7;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 536
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 537
    return-void
.end method
