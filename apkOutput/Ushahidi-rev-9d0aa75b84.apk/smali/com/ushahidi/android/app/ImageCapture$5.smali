.class Lcom/ushahidi/android/app/ImageCapture$5;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ImageCapture;
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
    .line 148
    iput-object p1, p0, Lcom/ushahidi/android/app/ImageCapture$5;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
