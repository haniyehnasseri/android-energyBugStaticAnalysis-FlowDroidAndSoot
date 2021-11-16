.class public Lcom/ushahidi/android/app/ImageCapture;
.super Landroid/app/Activity;
.source "ImageCapture.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static random:Ljava/util/Random;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCamera:Landroid/hardware/Camera;

.field private mIntent:Landroid/content/Intent;

.field private mIsPreviewRunning:Z

.field mPictureCallbackJpeg:Landroid/hardware/Camera$PictureCallback;

.field mPictureCallbackRaw:Landroid/hardware/Camera$PictureCallback;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mShutterButton:Lcom/ushahidi/android/app/ShutterButton;

.field mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTimeStampFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/ImageCapture;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mIsPreviewRunning:Z

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mTimeStampFormat:Ljava/text/SimpleDateFormat;

    .line 126
    new-instance v0, Lcom/ushahidi/android/app/ImageCapture$3;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/ImageCapture$3;-><init>(Lcom/ushahidi/android/app/ImageCapture;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mPictureCallbackRaw:Landroid/hardware/Camera$PictureCallback;

    .line 132
    new-instance v0, Lcom/ushahidi/android/app/ImageCapture$4;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/ImageCapture$4;-><init>(Lcom/ushahidi/android/app/ImageCapture;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mPictureCallbackJpeg:Landroid/hardware/Camera$PictureCallback;

    .line 148
    new-instance v0, Lcom/ushahidi/android/app/ImageCapture$5;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/ImageCapture$5;-><init>(Lcom/ushahidi/android/app/ImageCapture;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/ImageCapture;)Lcom/ushahidi/android/app/ShutterButton;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ImageCapture;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mShutterButton:Lcom/ushahidi/android/app/ShutterButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/ImageCapture;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ImageCapture;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/ImageCapture;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ImageCapture;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/ImageCapture;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ImageCapture;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected static randomString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    sget-object v0, Lcom/ushahidi/android/app/ImageCapture;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ImageCapture;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ImageCapture;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ImageCapture;->setRequestedOrientation(I)V

    .line 74
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ImageCapture;->setContentView(I)V

    .line 76
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ImageCapture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mSurfaceView:Landroid/view/SurfaceView;

    .line 77
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ImageCapture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/ShutterButton;

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mShutterButton:Lcom/ushahidi/android/app/ShutterButton;

    .line 78
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ImageCapture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 81
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 82
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mBundle:Landroid/os/Bundle;

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mIntent:Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mShutterButton:Lcom/ushahidi/android/app/ShutterButton;

    new-instance v1, Lcom/ushahidi/android/app/ImageCapture$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/ImageCapture$1;-><init>(Lcom/ushahidi/android/app/ImageCapture;)V

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ShutterButton;->setOnShutterButtonListener(Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;)V

    .line 103
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ushahidi/android/app/ImageCapture$2;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/ImageCapture$2;-><init>(Lcom/ushahidi/android/app/ImageCapture;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x1b

    const/16 v5, 0x17

    .line 164
    if-eq p1, v5, :cond_0

    if-ne p1, v6, :cond_1

    .line 166
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/ushahidi/android/app/ImageCapture;->mTimeStampFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "description"

    const-string v4, "Image capture by camera"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 177
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 185
    :goto_1
    return v3

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    if-eq p1, v5, :cond_3

    if-ne p1, v6, :cond_4

    .line 181
    :cond_3
    iget-object v3, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v5, p0, Lcom/ushahidi/android/app/ImageCapture;->mPictureCallbackRaw:Landroid/hardware/Camera$PictureCallback;

    iget-object v6, p0, Lcom/ushahidi/android/app/ImageCapture;->mPictureCallbackJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 182
    const/4 v3, 0x1

    goto :goto_1

    .line 185
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ImageCapture;->setRequestedOrientation(I)V

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    return-void
.end method

.method public onSnap()V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ushahidi/android/app/ImageCapture;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/ushahidi/android/app/ImageCapture;->mPictureCallbackRaw:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/ushahidi/android/app/ImageCapture;->mPictureCallbackJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 239
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 203
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 210
    iget-boolean v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mIsPreviewRunning:Z

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 217
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 218
    .local v3, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 219
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 220
    iget-object v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 222
    :try_start_0
    iget-object v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    iget-object v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 228
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ushahidi/android/app/ImageCapture;->mIsPreviewRunning:Z

    .line 229
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 206
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    .line 207
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mIsPreviewRunning:Z

    .line 234
    iget-object v0, p0, Lcom/ushahidi/android/app/ImageCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 235
    return-void
.end method
