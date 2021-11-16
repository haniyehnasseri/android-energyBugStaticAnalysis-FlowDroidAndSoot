.class Lcom/ushahidi/android/app/LocationMap$2;
.super Ljava/lang/Object;
.source "LocationMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/LocationMap;->onCreate(Landroid/os/Bundle;)V
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
    .line 131
    iput-object p1, p0, Lcom/ushahidi/android/app/LocationMap$2;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$2;->this$0:Lcom/ushahidi/android/app/LocationMap;

    const v1, 0x7f060042

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 134
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$2;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v0}, Lcom/ushahidi/android/app/LocationMap;->access$400(Lcom/ushahidi/android/app/LocationMap;)V

    .line 135
    return-void
.end method
