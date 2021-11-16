.class public Lcom/ushahidi/android/app/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/ShutterButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ushahidi/android/app/ShutterButton;->mListener:Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ushahidi/android/app/ShutterButton;->mListener:Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/ushahidi/android/app/ShutterButton;Z)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 74
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ShutterButton;->isPressed()Z

    move-result v0

    .line 75
    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/ushahidi/android/app/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 76
    if-nez v0, :cond_1

    .line 98
    new-instance v1, Lcom/ushahidi/android/app/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/ushahidi/android/app/ShutterButton$1;-><init>(Lcom/ushahidi/android/app/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 106
    :goto_0
    iput-boolean v0, p0, Lcom/ushahidi/android/app/ShutterButton;->mOldPressed:Z

    .line 108
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 119
    .local v0, "result":Z
    iget-object v1, p0, Lcom/ushahidi/android/app/ShutterButton;->mListener:Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/ushahidi/android/app/ShutterButton;->mListener:Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/ushahidi/android/app/ShutterButton;)V

    .line 122
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ushahidi/android/app/ShutterButton;->mListener:Lcom/ushahidi/android/app/ShutterButton$OnShutterButtonListener;

    .line 64
    return-void
.end method
