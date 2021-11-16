.class Lcom/ushahidi/android/app/IncidentsTab$1;
.super Ljava/lang/Object;
.source "IncidentsTab.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/IncidentsTab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/IncidentsTab;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/IncidentsTab;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/IncidentsTab;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ushahidi/android/app/IncidentsTab$1;->this$0:Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab$1;->this$0:Lcom/ushahidi/android/app/IncidentsTab;

    invoke-static {v0}, Lcom/ushahidi/android/app/IncidentsTab;->access$000(Lcom/ushahidi/android/app/IncidentsTab;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/ushahidi/android/app/IncidentsTab;->setTabColor(Landroid/widget/TabHost;)V

    .line 75
    return-void
.end method
