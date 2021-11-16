.class Lcom/ushahidi/android/app/AddIncident$1;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 394
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$1;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 397
    if-nez p2, :cond_0

    .line 398
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$1;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$000(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$1;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$000(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$1;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 403
    :cond_0
    return-void
.end method
