.class Lcom/ushahidi/android/app/Ushahidi$11;
.super Ljava/lang/Object;
.source "Ushahidi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/Ushahidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/Ushahidi;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/Ushahidi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/Ushahidi;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/ushahidi/android/app/Ushahidi$11;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi$11;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/Ushahidi;->showDialog(I)V

    .line 312
    return-void
.end method
