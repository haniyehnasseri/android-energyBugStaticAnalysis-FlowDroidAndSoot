.class Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iMap:Lcom/ushahidi/android/app/checkin/CheckinMap;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;ILandroid/content/Context;Lcom/ushahidi/android/app/checkin/CheckinMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    iput p2, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$index:I

    iput-object p3, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$iMap:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "name"

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "latitude"

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getLat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "longitude"

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getLon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "date"

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo"

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/ushahidi/android/app/checkin/ViewCheckins;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "checkins"

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$iMap:Lcom/ushahidi/android/app/checkin/CheckinMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->val$iMap:Lcom/ushahidi/android/app/checkin/CheckinMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setResult(I)V

    .line 87
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    return-void
.end method
