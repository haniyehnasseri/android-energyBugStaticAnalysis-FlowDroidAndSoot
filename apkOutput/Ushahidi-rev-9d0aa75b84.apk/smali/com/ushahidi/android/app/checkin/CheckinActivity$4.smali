.class Lcom/ushahidi/android/app/checkin/CheckinActivity$4;
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
    .line 284
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$4;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity$4;->this$0:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->onSearchDeployments()V

    .line 288
    return-void
.end method
