.class Lcom/ushahidi/android/app/About$7;
.super Ljava/lang/Object;
.source "About.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/About;
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
    .line 209
    iput-object p1, p0, Lcom/ushahidi/android/app/About$7;->this$0:Lcom/ushahidi/android/app/About;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ushahidi/android/app/About$7;->this$0:Lcom/ushahidi/android/app/About;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/About;->showDialog(I)V

    .line 212
    return-void
.end method
