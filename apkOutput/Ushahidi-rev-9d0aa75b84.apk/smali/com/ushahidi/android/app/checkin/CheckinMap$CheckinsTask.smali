.class Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;
.super Landroid/os/AsyncTask;
.source "CheckinMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/CheckinMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckinsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected appContext:Landroid/content/Context;

.field protected status:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Lcom/ushahidi/android/app/checkin/CheckinMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;
    .param p2, "x1"    # Lcom/ushahidi/android/app/checkin/CheckinMap$1;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->processCheckins(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->status:Ljava/lang/Integer;

    .line 465
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 450
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 470
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 472
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060065

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 478
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->showCheckins()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$602(Lcom/ushahidi/android/app/checkin/CheckinMap;Ljava/util/List;)Ljava/util/List;

    .line 480
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$600(Lcom/ushahidi/android/app/checkin/CheckinMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f060076

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 486
    :goto_1
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setProgressBarIndeterminateVisibility(Z)V

    .line 487
    return-void

    .line 473
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->appContext:Landroid/content/Context;

    const v1, 0x7f06002f

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$100(Lcom/ushahidi/android/app/checkin/CheckinMap;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 450
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setProgressBarIndeterminateVisibility(Z)V

    .line 460
    return-void
.end method
