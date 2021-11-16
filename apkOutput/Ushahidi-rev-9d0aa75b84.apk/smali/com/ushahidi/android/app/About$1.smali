.class Lcom/ushahidi/android/app/About$1;
.super Ljava/lang/Object;
.source "About.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/About;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/About;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/About;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/About;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ushahidi/android/app/About$1;->this$0:Lcom/ushahidi/android/app/About;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ushahidi/android/app/About$1;->this$0:Lcom/ushahidi/android/app/About;

    iget-object v1, p0, Lcom/ushahidi/android/app/About$1;->this$0:Lcom/ushahidi/android/app/About;

    invoke-static {v1}, Lcom/ushahidi/android/app/About;->access$000(Lcom/ushahidi/android/app/About;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/About;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method
