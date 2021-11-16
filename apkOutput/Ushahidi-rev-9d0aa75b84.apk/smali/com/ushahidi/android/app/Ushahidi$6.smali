.class Lcom/ushahidi/android/app/Ushahidi$6;
.super Ljava/lang/Object;
.source "Ushahidi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/Ushahidi;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/Ushahidi;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/Ushahidi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/Ushahidi;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ushahidi/android/app/Ushahidi$6;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$6;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const-class v2, Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$6;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$6;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    .line 226
    return-void
.end method
