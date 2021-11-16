.class Lcom/ushahidi/android/app/ListIncidents$5;
.super Ljava/lang/Object;
.source "ListIncidents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ListIncidents;
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
    .line 481
    iput-object p1, p0, Lcom/ushahidi/android/app/ListIncidents$5;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 487
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$5;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v0}, Lcom/ushahidi/android/app/ListIncidents;->access$400(Lcom/ushahidi/android/app/ListIncidents;)Lcom/ushahidi/android/app/ListIncidentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ListIncidentAdapter;->removeItems()V

    .line 488
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$5;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v0}, Lcom/ushahidi/android/app/ListIncidents;->access$400(Lcom/ushahidi/android/app/ListIncidents;)Lcom/ushahidi/android/app/ListIncidentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ListIncidentAdapter;->notifyDataSetChanged()V

    .line 489
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$5;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v0}, Lcom/ushahidi/android/app/ListIncidents;->access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 490
    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents$5;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$5;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-static {v0}, Lcom/ushahidi/android/app/ListIncidents;->access$500(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ushahidi/android/app/ListIncidents;->showIncidents(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
