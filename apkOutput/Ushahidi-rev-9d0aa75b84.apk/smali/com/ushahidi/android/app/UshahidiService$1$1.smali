.class Lcom/ushahidi/android/app/UshahidiService$1$1;
.super Ljava/lang/Object;
.source "UshahidiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/UshahidiService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ushahidi/android/app/UshahidiService$1;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/UshahidiService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ushahidi/android/app/UshahidiService$1;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/ushahidi/android/app/UshahidiService$1$1;->this$1:Lcom/ushahidi/android/app/UshahidiService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService$1$1;->this$1:Lcom/ushahidi/android/app/UshahidiService$1;

    iget-object v0, v0, Lcom/ushahidi/android/app/UshahidiService$1;->this$0:Lcom/ushahidi/android/app/UshahidiService;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->fetchReports(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiService$1$1;->this$1:Lcom/ushahidi/android/app/UshahidiService$1;

    iget-object v0, v0, Lcom/ushahidi/android/app/UshahidiService$1;->this$0:Lcom/ushahidi/android/app/UshahidiService;

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->totalReportsFetched:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/UshahidiService;->access$000(Lcom/ushahidi/android/app/UshahidiService;Ljava/lang/String;)V

    .line 142
    return-void
.end method
