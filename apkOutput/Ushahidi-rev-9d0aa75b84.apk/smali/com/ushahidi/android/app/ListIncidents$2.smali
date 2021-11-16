.class Lcom/ushahidi/android/app/ListIncidents$2;
.super Ljava/lang/Object;
.source "ListIncidents.java"

# interfaces
.implements Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/ListIncidents;->onCreate(Landroid/os/Bundle;)V
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
    .line 143
    iput-object p1, p0, Lcom/ushahidi/android/app/ListIncidents$2;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents$2;->this$0:Lcom/ushahidi/android/app/ListIncidents;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ListIncidents;->refreshForReports()V

    .line 146
    return-void
.end method
