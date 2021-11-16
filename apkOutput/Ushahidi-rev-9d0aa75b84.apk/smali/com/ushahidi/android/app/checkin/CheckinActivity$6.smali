.class Lcom/ushahidi/android/app/checkin/CheckinActivity$6;
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
    .line 523
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$6;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 525
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 526
    return-void
.end method
