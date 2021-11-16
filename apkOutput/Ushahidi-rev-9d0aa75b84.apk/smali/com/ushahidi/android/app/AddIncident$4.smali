.class Lcom/ushahidi/android/app/AddIncident$4;
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
    .line 431
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 434
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2, v7}, Lcom/ushahidi/android/app/AddIncident;->access$302(Lcom/ushahidi/android/app/AddIncident;Z)Z

    .line 435
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2}, Lcom/ushahidi/android/app/AddIncident;->access$000(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v4, 0x7f06003b

    invoke-virtual {v3, v4}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/AddIncident;->access$402(Lcom/ushahidi/android/app/AddIncident;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2, v6}, Lcom/ushahidi/android/app/AddIncident;->access$302(Lcom/ushahidi/android/app/AddIncident;Z)Z

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2}, Lcom/ushahidi/android/app/AddIncident;->access$200(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->access$400(Lcom/ushahidi/android/app/AddIncident;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v5, 0x7f060039

    invoke-virtual {v4, v5}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/AddIncident;->access$402(Lcom/ushahidi/android/app/AddIncident;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2, v6}, Lcom/ushahidi/android/app/AddIncident;->access$302(Lcom/ushahidi/android/app/AddIncident;Z)Z

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2}, Lcom/ushahidi/android/app/AddIncident;->access$100(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->access$400(Lcom/ushahidi/android/app/AddIncident;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v5, 0x7f06003a

    invoke-virtual {v4, v5}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/AddIncident;->access$402(Lcom/ushahidi/android/app/AddIncident;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2, v6}, Lcom/ushahidi/android/app/AddIncident;->access$302(Lcom/ushahidi/android/app/AddIncident;Z)Z

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2}, Lcom/ushahidi/android/app/AddIncident;->access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 452
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->access$400(Lcom/ushahidi/android/app/AddIncident;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v5, 0x7f060038

    invoke-virtual {v4, v5}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/AddIncident;->access$402(Lcom/ushahidi/android/app/AddIncident;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2, v6}, Lcom/ushahidi/android/app/AddIncident;->access$302(Lcom/ushahidi/android/app/AddIncident;Z)Z

    .line 456
    :cond_3
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2}, Lcom/ushahidi/android/app/AddIncident;->access$300(Lcom/ushahidi/android/app/AddIncident;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 458
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;-><init>(Lcom/ushahidi/android/app/AddIncident;Lcom/ushahidi/android/app/AddIncident$1;)V

    .line 459
    .local v0, "addReportsTask":Lcom/ushahidi/android/app/AddIncident$AddReportsTask;
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    iput-object v2, v0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->appContext:Landroid/content/Context;

    .line 460
    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 469
    .end local v0    # "addReportsTask":Lcom/ushahidi/android/app/AddIncident$AddReportsTask;
    :goto_0
    return-void

    .line 463
    :cond_4
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error!\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->access$400(Lcom/ushahidi/android/app/AddIncident;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 465
    .local v1, "t":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 466
    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$4;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/AddIncident;->access$402(Lcom/ushahidi/android/app/AddIncident;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
