.class public Lcom/ushahidi/android/app/UshahidiSplashScreen;
.super Landroid/app/Activity;
.source "UshahidiSplashScreen.java"


# instance fields
.field private active:Z

.field private splashTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen;->active:Z

    .line 33
    const/16 v0, 0x1388

    iput v0, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen;->splashTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/UshahidiSplashScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiSplashScreen;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen;->active:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/UshahidiSplashScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiSplashScreen;

    .prologue
    .line 30
    iget v0, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen;->splashTime:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->setRequestedOrientation(I)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->requestWindowFeature(I)Z

    .line 41
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->setContentView(I)V

    .line 44
    new-instance v0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;-><init>(Lcom/ushahidi/android/app/UshahidiSplashScreen;)V

    .line 63
    .local v0, "splashTread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen;->active:Z

    .line 71
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
