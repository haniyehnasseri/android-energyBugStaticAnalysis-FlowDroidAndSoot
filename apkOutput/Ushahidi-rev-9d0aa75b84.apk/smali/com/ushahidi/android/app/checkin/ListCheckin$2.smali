.class Lcom/ushahidi/android/app/checkin/ListCheckin$2;
.super Ljava/lang/Object;
.source "ListCheckin.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/ListCheckin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/ListCheckin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/ListCheckin;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 117
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 v1, p3, -0x1

    .line 118
    .local v1, "position":I
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/checkin/Checkin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message"

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/checkin/Checkin;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "longitude"

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/checkin/Checkin;->getLon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "latitude"

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/checkin/Checkin;->getLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "date"

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/checkin/Checkin;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "photo"

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/checkin/Checkin;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    const-class v3, Lcom/ushahidi/android/app/checkin/ViewCheckins;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "checkins"

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v3}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$2;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->setResult(ILandroid/content/Intent;)V

    .line 132
    return-void
.end method
