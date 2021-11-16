.class Lcom/ushahidi/android/app/AddIncident$10;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/AddIncident;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/AddIncident;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/AddIncident;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$10;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$10;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const v1, 0x7f06003e

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 686
    return-void
.end method
