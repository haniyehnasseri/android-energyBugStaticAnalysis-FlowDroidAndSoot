.class Lcom/ushahidi/android/app/AddIncident$7;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/AddIncident;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/AddIncident;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/AddIncident;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$7;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$7;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/AddIncident;->showDialog(I)V

    .line 492
    return-void
.end method
