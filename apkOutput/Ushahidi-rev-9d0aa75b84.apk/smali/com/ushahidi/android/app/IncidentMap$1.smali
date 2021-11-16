.class Lcom/ushahidi/android/app/IncidentMap$1;
.super Ljava/lang/Object;
.source "IncidentMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/IncidentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/IncidentMap;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/IncidentMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ushahidi/android/app/IncidentMap$1;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$1;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/IncidentMap;->access$000(Lcom/ushahidi/android/app/IncidentMap;)V

    .line 198
    return-void
.end method
