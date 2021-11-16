.class Lcom/ushahidi/android/app/ImageCapture$4;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 132
    iput-object p1, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "c"    # Landroid/hardware/Camera;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-static {v1}, Lcom/ushahidi/android/app/ImageCapture;->access$100(Lcom/ushahidi/android/app/ImageCapture;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ushandroid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ushahidi/android/app/ImageCapture;->randomString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "filename":Ljava/lang/String;
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-static {v1}, Lcom/ushahidi/android/app/ImageCapture;->access$200(Lcom/ushahidi/android/app/ImageCapture;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-static {v1}, Lcom/ushahidi/android/app/ImageCapture;->access$300(Lcom/ushahidi/android/app/ImageCapture;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filename"

    iget-object v3, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-static {v3}, Lcom/ushahidi/android/app/ImageCapture;->access$200(Lcom/ushahidi/android/app/ImageCapture;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-static {v3}, Lcom/ushahidi/android/app/ImageCapture;->access$300(Lcom/ushahidi/android/app/ImageCapture;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ushahidi/android/app/ImageCapture;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object v1, p0, Lcom/ushahidi/android/app/ImageCapture$4;->this$0:Lcom/ushahidi/android/app/ImageCapture;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/ImageCapture;->finish()V

    .line 145
    return-void
.end method
