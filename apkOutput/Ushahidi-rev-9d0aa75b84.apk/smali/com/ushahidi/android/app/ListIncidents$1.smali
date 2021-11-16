.class Lcom/ushahidi/android/app/ListIncidents$1;
.super Ljava/lang/Object;
.source "ListIncidents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/ListIncidents;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/ListIncidents;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/ListIncidents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ListIncidents;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "positions"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 v1, p3, -0x1

    .line 116
    .local v1, "position":I
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentId()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "title"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "desc"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "longitude"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 120
    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLongitude()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "latitude"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 122
    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLatitude()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "category"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 124
    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentCategories()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "location"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 126
    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocation()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "date"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "media"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 129
    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentThumbnail()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "image"

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    .line 132
    invoke-static {v2}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentVerified()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const-class v3, Lcom/ushahidi/android/app/ViewIncidents;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "incidents"

    iget-object v3, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v3}, Lcom/ushahidi/android/app/ListIncidents;->access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/ushahidi/android/app/ListIncidents;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$1;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/ushahidi/android/app/ListIncidents;->setResult(ILandroid/content/Intent;)V

    .line 139
    return-void
.end method
