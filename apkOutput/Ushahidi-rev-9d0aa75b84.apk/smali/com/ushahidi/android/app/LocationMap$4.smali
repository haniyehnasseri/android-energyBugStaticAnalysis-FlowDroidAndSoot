.class Lcom/ushahidi/android/app/LocationMap$4;
.super Ljava/lang/Object;
.source "LocationMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/LocationMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/LocationMap;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/LocationMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ushahidi/android/app/LocationMap$4;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$4;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/LocationMap;->access$700(Lcom/ushahidi/android/app/LocationMap;)V

    .line 163
    return-void
.end method
