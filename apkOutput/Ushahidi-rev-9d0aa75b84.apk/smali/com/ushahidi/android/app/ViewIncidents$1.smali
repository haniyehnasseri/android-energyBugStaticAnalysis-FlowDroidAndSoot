.class Lcom/ushahidi/android/app/ViewIncidents$1;
.super Ljava/lang/Object;
.source "ViewIncidents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/ViewIncidents;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/ViewIncidents;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/ViewIncidents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ViewIncidents;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/ushahidi/android/app/ViewIncidents$1;->this$0:Lcom/ushahidi/android/app/ViewIncidents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
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
    .line 185
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ushahidi/android/app/ViewIncidents$1;->this$0:Lcom/ushahidi/android/app/ViewIncidents;

    invoke-static {v0, p3}, Lcom/ushahidi/android/app/ViewIncidents;->access$000(Lcom/ushahidi/android/app/ViewIncidents;I)V

    .line 186
    return-void
.end method
