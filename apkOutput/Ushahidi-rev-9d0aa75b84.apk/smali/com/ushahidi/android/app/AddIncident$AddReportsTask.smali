.class Lcom/ushahidi/android/app/AddIncident$AddReportsTask;
.super Landroid/os/AsyncTask;
.source "AddIncident.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/AddIncident;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddReportsTask"
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

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected status:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/ushahidi/android/app/AddIncident;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/AddIncident;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/AddIncident;Lcom/ushahidi/android/app/AddIncident$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p2, "x1"    # Lcom/ushahidi/android/app/AddIncident$1;

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "mParams"    # [Ljava/lang/Void;

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/AddIncident;->postToOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/AddIncident;->addToDb()J

    .line 1130
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->status:Ljava/lang/Integer;

    .line 1138
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->status:Ljava/lang/Integer;

    return-object v0

    .line 1132
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->status:Ljava/lang/Integer;

    goto :goto_0

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/AddIncident;->addToDb()J

    .line 1136
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->status:Ljava/lang/Integer;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1108
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v1}, Lcom/ushahidi/android/app/AddIncident;->access$1800(Lcom/ushahidi/android/app/AddIncident;)V

    .line 1146
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->appContext:Landroid/content/Context;

    const v2, 0x7f06008d

    invoke-static {v1, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1148
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v1}, Lcom/ushahidi/android/app/AddIncident;->access$1800(Lcom/ushahidi/android/app/AddIncident;)V

    .line 1149
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->appContext:Landroid/content/Context;

    const v2, 0x7f06003e

    invoke-static {v1, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1150
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v1}, Lcom/ushahidi/android/app/AddIncident;->access$1800(Lcom/ushahidi/android/app/AddIncident;)V

    .line 1153
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1157
    :cond_3
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->appContext:Landroid/content/Context;

    const v2, 0x7f06008e

    invoke-static {v1, v2}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1108
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v2, 0x7f060024

    .line 1119
    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v3, 0x7f060099

    .line 1120
    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1118
    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident$AddReportsTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 1122
    return-void
.end method
