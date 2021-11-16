.class Lcom/ushahidi/android/app/AddIncident$5;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/AddIncident;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/AddIncident;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/AddIncident;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$5;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 474
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/ImageManager;->deleteImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$5;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/AddIncident;->showDialog(I)V

    .line 478
    return-void
.end method
