.class Lcom/ushahidi/android/app/checkin/ListCheckin$1;
.super Ljava/lang/Object;
.source "ListCheckin.java"

# interfaces
.implements Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/ListCheckin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/ListCheckin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/ListCheckin;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$1;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$1;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->access$000(Lcom/ushahidi/android/app/checkin/ListCheckin;)V

    .line 109
    return-void
.end method
