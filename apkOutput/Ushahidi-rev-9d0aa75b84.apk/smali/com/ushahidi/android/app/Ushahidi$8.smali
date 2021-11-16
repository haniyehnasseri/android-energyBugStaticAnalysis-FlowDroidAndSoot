.class Lcom/ushahidi/android/app/Ushahidi$8;
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
    .line 239
    iput-object p1, p0, Lcom/ushahidi/android/app/Ushahidi$8;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$8;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-static {v1}, Lcom/ushahidi/android/app/Ushahidi;->access$100(Lcom/ushahidi/android/app/Ushahidi;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tab_index"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$8;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const-class v2, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "tab"

    iget-object v2, p0, Lcom/ushahidi/android/app/Ushahidi$8;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-static {v2}, Lcom/ushahidi/android/app/Ushahidi;->access$100(Lcom/ushahidi/android/app/Ushahidi;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$8;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-virtual {v1, v0, v3}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 246
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$8;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    .line 247
    return-void
.end method
