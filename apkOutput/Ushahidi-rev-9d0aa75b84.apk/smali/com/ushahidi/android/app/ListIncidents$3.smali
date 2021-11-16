.class Lcom/ushahidi/android/app/ListIncidents$3;
.super Ljava/lang/Object;
.source "ListIncidents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ListIncidents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/ListIncidents;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/ListIncidents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ListIncidents;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/ushahidi/android/app/ListIncidents$3;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents$3;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/ListIncidents;->setProgressBarIndeterminateVisibility(Z)V

    .line 192
    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents$3;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents$3;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/ListIncidents;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/ListIncidents;->showIncidents(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents$3;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/ListIncidents;->showCategories()V

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents$3;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/ListIncidents;->setProgressBarIndeterminateVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
