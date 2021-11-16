.class Lcom/ushahidi/android/app/LocationMap$1;
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
    .line 115
    iput-object p1, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v1}, Lcom/ushahidi/android/app/LocationMap;->access$100(Lcom/ushahidi/android/app/LocationMap;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "latitude"

    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v3}, Lcom/ushahidi/android/app/LocationMap;->access$000(Lcom/ushahidi/android/app/LocationMap;)D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 119
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v1}, Lcom/ushahidi/android/app/LocationMap;->access$100(Lcom/ushahidi/android/app/LocationMap;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v3}, Lcom/ushahidi/android/app/LocationMap;->access$200(Lcom/ushahidi/android/app/LocationMap;)D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 120
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v1}, Lcom/ushahidi/android/app/LocationMap;->access$100(Lcom/ushahidi/android/app/LocationMap;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "location"

    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v3}, Lcom/ushahidi/android/app/LocationMap;->access$300(Lcom/ushahidi/android/app/LocationMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "locations"

    iget-object v2, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v2}, Lcom/ushahidi/android/app/LocationMap;->access$100(Lcom/ushahidi/android/app/LocationMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/ushahidi/android/app/LocationMap;->setResult(ILandroid/content/Intent;)V

    .line 126
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap$1;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/LocationMap;->finish()V

    .line 127
    return-void
.end method
