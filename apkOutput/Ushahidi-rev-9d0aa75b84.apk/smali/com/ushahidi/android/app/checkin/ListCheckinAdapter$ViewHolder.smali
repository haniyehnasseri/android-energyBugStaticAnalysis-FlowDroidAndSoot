.class Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListCheckinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field checkinMessage:Landroid/widget/TextView;

.field date:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

.field thumbnail:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->this$0:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const v0, 0x7f0a0042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0a0045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->checkinMessage:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0a0043

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0a0046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0a0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 129
    return-void
.end method
