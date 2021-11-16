.class Lcom/ushahidi/android/app/AddIncident$23;
.super Ljava/lang/Object;
.source "AddIncident.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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
    .line 915
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident$23;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$23;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0, p2}, Lcom/ushahidi/android/app/AddIncident;->access$1602(Lcom/ushahidi/android/app/AddIncident;I)I

    .line 919
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$23;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0, p3}, Lcom/ushahidi/android/app/AddIncident;->access$1702(Lcom/ushahidi/android/app/AddIncident;I)I

    .line 921
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident$23;->this$0:Lcom/ushahidi/android/app/AddIncident;

    invoke-static {v0}, Lcom/ushahidi/android/app/AddIncident;->access$1500(Lcom/ushahidi/android/app/AddIncident;)V

    .line 922
    return-void
.end method
