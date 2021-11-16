.class Lcom/ushahidi/android/app/AddIncident$21;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/AddIncident;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 795
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 799
    if-eqz p3, :cond_1

    .line 801
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v1}, Lcom/ushahidi/android/app/AddIncident;->access$900(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$1100(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    .line 804
    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$1000(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2}, Lcom/ushahidi/android/app/AddIncident;->access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v2

    .line 805
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 804
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 803
    invoke-static {v0, v4}, Lcom/ushahidi/android/app/util/Util;->limitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0, v3}, Lcom/ushahidi/android/app/AddIncident;->access$302(Lcom/ushahidi/android/app/AddIncident;Z)Z

    .line 821
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v1}, Lcom/ushahidi/android/app/AddIncident;->access$900(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 812
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$1100(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$1100(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    .line 816
    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$1000(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$21;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v2}, Lcom/ushahidi/android/app/AddIncident;->access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;

    move-result-object v2

    .line 817
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 816
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 815
    invoke-static {v0, v4}, Lcom/ushahidi/android/app/util/Util;->limitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
