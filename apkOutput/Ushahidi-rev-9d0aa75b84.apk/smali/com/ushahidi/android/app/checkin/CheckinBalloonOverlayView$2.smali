.class Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$2;
.super Ljava/lang/Object;
.source "CheckinBalloonOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Landroid/content/Context;ILjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    return-void
.end method
