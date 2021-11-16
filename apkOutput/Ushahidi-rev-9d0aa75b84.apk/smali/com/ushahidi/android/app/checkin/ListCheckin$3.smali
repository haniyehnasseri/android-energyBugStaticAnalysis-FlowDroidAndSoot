.class Lcom/ushahidi/android/app/checkin/ListCheckin$3;
.super Ljava/lang/Object;
.source "ListCheckin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/ListCheckin;
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
    .line 164
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$3;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin$3;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->showCheckins()V

    .line 173
    return-void
.end method
