.class Lcom/ushahidi/android/app/Ushahidi$5;
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
    .line 209
    iput-object p1, p0, Lcom/ushahidi/android/app/Ushahidi$5;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/ushahidi/android/app/Ushahidi$5;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, "checkinActivityIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$5;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-virtual {v1, v0}, Lcom/ushahidi/android/app/Ushahidi;->startActivity(Landroid/content/Intent;)V

    .line 214
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$5;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    .line 216
    return-void
.end method
