.class Lcom/ushahidi/android/app/AddIncident$19;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/AddIncident;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 773
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$19;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 776
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident$19;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const-class v3, Lcom/ushahidi/android/app/ImageCapture;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 780
    .local v0, "launchPreferencesIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$19;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    .line 781
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 783
    return-void
.end method
