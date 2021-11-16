.class Lcom/ushahidi/android/app/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/Settings;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/Settings;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/ushahidi/android/app/Settings$3;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$3;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-static {v0}, Lcom/ushahidi/android/app/Settings;->access$300(Lcom/ushahidi/android/app/Settings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x1

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings$3;->this$0:Lcom/ushahidi/android/app/Settings;

    invoke-static {v0}, Lcom/ushahidi/android/app/UshahidiPref;->saveSettings(Landroid/content/Context;)V

    .line 491
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    goto :goto_0
.end method
