.class Lcom/ushahidi/android/app/ImageCapture$1;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;


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
    .line 87
    iput-object p1, p0, Lcom/ushahidi/android/app/ImageCapture$1;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/ushahidi/android/app/ShutterButton;)V
    .locals 1
    .param p1, "b"    # Lcom/ushahidi/android/app/ShutterButton;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/ushahidi/android/app/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture$1;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ImageCapture;->onSnap()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7f0a0084
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/ushahidi/android/app/ShutterButton;Z)V
    .locals 0
    .param p1, "b"    # Lcom/ushahidi/android/app/ShutterButton;
    .param p2, "pressed"    # Z

    .prologue
    .line 100
    return-void
.end method
