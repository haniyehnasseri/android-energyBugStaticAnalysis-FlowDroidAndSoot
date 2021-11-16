.class Lcom/ushahidi/android/app/IncidentMap$2;
.super Ljava/lang/Object;
.source "IncidentMap.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/IncidentMap;->onCreateDialog(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
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
    .line 358
    iput-object p1, p0, Lcom/ushahidi/android/app/IncidentMap$2;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 360
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 361
    return-void
.end method
