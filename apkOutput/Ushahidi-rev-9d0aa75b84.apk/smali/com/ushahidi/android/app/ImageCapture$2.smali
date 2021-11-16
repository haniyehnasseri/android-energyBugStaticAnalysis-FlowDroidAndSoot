.class Lcom/ushahidi/android/app/ImageCapture$2;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/ImageCapture;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/ImageCapture;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/ImageCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ImageCapture;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushahidi/android/app/ImageCapture$2;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture$2;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-static {v0}, Lcom/ushahidi/android/app/ImageCapture;->access$000(Lcom/ushahidi/android/app/ImageCapture;)Lcom/ushahidi/android/app/ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ShutterButton;->setEnabled(Z)V

    .line 109
    return-void
.end method
