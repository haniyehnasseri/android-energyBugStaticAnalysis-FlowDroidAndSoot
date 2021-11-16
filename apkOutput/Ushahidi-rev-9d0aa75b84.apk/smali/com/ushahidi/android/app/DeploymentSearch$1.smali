.class Lcom/ushahidi/android/app/DeploymentSearch$1;
.super Ljava/lang/Object;
.source "DeploymentSearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/DeploymentSearch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/DeploymentSearch;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/DeploymentSearch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch$1;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 106
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch$1;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch$1;->this$0:Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-static {v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$000(Lcom/ushahidi/android/app/DeploymentSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch;->access$100(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)V

    .line 117
    return-void
.end method
