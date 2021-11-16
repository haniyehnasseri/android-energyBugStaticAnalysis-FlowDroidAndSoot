.class Lcom/ushahidi/android/app/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/ShutterButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ShutterButton;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ushahidi/android/app/ShutterButton$1;->this$0:Lcom/ushahidi/android/app/ShutterButton;

    iput-boolean p2, p0, Lcom/ushahidi/android/app/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushahidi/android/app/ShutterButton$1;->this$0:Lcom/ushahidi/android/app/ShutterButton;

    iget-boolean v1, p0, Lcom/ushahidi/android/app/ShutterButton$1;->val$pressed:Z

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/ShutterButton;->access$000(Lcom/ushahidi/android/app/ShutterButton;Z)V

    .line 101
    return-void
.end method
