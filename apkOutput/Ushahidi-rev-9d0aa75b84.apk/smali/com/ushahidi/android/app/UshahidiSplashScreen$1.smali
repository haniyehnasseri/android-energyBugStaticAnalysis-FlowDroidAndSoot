.class Lcom/ushahidi/android/app/UshahidiSplashScreen$1;
.super Ljava/lang/Thread;
.source "UshahidiSplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/UshahidiSplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/UshahidiSplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/UshahidiSplashScreen;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "waited":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->access$000(Lcom/ushahidi/android/app/UshahidiSplashScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->access$100(Lcom/ushahidi/android/app/UshahidiSplashScreen;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->sleep(J)V

    .line 51
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    invoke-static {v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->access$000(Lcom/ushahidi/android/app/UshahidiSplashScreen;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    const-class v4, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->finish()V

    .line 61
    :goto_1
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 58
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    const-class v4, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->finish()V

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    const-class v5, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v2, p0, Lcom/ushahidi/android/app/UshahidiSplashScreen$1;->this$0:Lcom/ushahidi/android/app/UshahidiSplashScreen;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/UshahidiSplashScreen;->finish()V

    throw v1
.end method
