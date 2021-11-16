.class Lcom/ushahidi/android/app/checkin/CheckinMap$1;
.super Ljava/lang/Object;
.source "CheckinMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/CheckinMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$100(Lcom/ushahidi/android/app/checkin/CheckinMap;)V

    .line 124
    return-void
.end method
