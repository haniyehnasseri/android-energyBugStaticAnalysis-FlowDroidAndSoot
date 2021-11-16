.class Lcom/ushahidi/android/app/Ushahidi$10;
.super Ljava/lang/Object;
.source "Ushahidi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/Ushahidi;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/Ushahidi;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/Ushahidi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/Ushahidi;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/ushahidi/android/app/Ushahidi$10;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$10;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const-class v2, Lcom/ushahidi/android/app/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, "launchPreferencesIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi$10;->this$0:Lcom/ushahidi/android/app/Ushahidi;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 300
    return-void
.end method
