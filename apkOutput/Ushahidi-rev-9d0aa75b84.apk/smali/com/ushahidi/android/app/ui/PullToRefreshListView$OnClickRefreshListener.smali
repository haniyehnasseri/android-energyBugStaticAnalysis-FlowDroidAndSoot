.class Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ui/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickRefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/ui/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/ushahidi/android/app/ui/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushahidi/android/app/ui/PullToRefreshListView;Lcom/ushahidi/android/app/ui/PullToRefreshListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ushahidi/android/app/ui/PullToRefreshListView;
    .param p2, "x1"    # Lcom/ushahidi/android/app/ui/PullToRefreshListView$1;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/ushahidi/android/app/ui/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    invoke-static {v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->access$100(Lcom/ushahidi/android/app/ui/PullToRefreshListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->prepareForRefresh()V

    .line 423
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->onRefresh()V

    .line 425
    :cond_0
    return-void
.end method
