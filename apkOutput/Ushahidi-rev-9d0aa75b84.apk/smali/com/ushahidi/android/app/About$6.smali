.class Lcom/ushahidi/android/app/About$6;
.super Ljava/lang/Object;
.source "About.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/About;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/About;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/About;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/About;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/ushahidi/android/app/About$6;->this$0:Lcom/ushahidi/android/app/About;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushahidi/android/app/About$6;->this$0:Lcom/ushahidi/android/app/About;

    const-class v2, Lcom/ushahidi/android/app/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "launchPreferencesIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ushahidi/android/app/About$6;->this$0:Lcom/ushahidi/android/app/About;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/About;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 200
    return-void
.end method
