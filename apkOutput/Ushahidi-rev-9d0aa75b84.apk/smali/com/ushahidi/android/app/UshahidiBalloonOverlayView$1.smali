.class Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$1;
.super Ljava/lang/Object;
.source "UshahidiBalloonOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;-><init>(Lcom/ushahidi/android/app/IncidentMap;Landroid/content/Context;ILjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v0}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    return-void
.end method
