.class Lcom/ushahidi/android/app/AddIncident$22;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/AddIncident;
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
    .line 905
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$22;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$22;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0, p2}, Lcom/ushahidi/android/app/AddIncident;->access$1202(Lcom/ushahidi/android/app/AddIncident;I)I

    .line 909
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$22;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0, p3}, Lcom/ushahidi/android/app/AddIncident;->access$1302(Lcom/ushahidi/android/app/AddIncident;I)I

    .line 910
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$22;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0, p4}, Lcom/ushahidi/android/app/AddIncident;->access$1402(Lcom/ushahidi/android/app/AddIncident;I)I

    .line 911
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$22;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$1500(Lcom/ushahidi/android/app/AddIncident;)V

    .line 912
    return-void
.end method
