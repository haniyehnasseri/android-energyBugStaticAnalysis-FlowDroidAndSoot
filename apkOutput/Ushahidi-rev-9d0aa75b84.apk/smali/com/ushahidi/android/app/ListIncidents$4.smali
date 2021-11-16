.class Lcom/ushahidi/android/app/ListIncidents$4;
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
    .line 202
    iput-object p1, p0, Lcom/ushahidi/android/app/ListIncidents$4;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$4;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ListIncidents;->showCategories()V

    .line 205
    return-void
.end method
