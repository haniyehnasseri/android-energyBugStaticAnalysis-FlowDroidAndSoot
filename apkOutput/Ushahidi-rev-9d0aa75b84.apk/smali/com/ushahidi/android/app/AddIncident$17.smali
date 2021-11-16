.class Lcom/ushahidi/android/app/AddIncident$17;
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
    .line 757
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$17;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 760
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 761
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 763
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident$17;->this$0:Lcom/ushahidi/android/app/AddIncident;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    .line 764
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 765
    return-void
.end method
