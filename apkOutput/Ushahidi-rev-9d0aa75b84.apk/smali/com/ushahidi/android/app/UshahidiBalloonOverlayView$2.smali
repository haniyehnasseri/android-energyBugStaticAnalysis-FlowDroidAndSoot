.class Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;
.super Ljava/lang/Object;
.source "UshahidiBalloonOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->viewReports(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    iput p2, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "desc"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "category"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 97
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentCategories()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "location"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 99
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocation()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "latitude"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 101
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLatitude()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "longitude"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 103
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLongitude()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "date"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "media"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "image"

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .line 108
    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;

    move-result-object v1

    iget v5, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->val$index:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentVerified()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$300(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ushahidi/android/app/ViewIncidents;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "incidents"

    iget-object v2, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v2}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$400(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Lcom/ushahidi/android/app/IncidentMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/IncidentMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$400(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Lcom/ushahidi/android/app/IncidentMap;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/IncidentMap;->setResult(I)V

    .line 117
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;->this$0:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->access$000(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    return-void
.end method
