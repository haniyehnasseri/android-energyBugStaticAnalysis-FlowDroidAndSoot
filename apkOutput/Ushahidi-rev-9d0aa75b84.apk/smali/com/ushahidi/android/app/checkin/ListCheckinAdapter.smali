.class public Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListCheckinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private colors:[I

.field private iItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/ListCheckinText;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->colors:[I

    .line 51
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x7f080008
        0x7f080006
    .end array-data
.end method


# virtual methods
.method public addItem(Lcom/ushahidi/android/app/checkin/ListCheckinText;)V
    .locals 1
    .param p1, "it"    # Lcom/ushahidi/android/app/checkin/ListCheckinText;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "row":Landroid/view/View;
    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->colors:[I

    array-length v3, v3

    rem-int v0, p1, v3

    .line 92
    .local v0, "colorPosition":I
    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->colors:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;

    .line 96
    .local v1, "holder":Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;
    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;
    invoke-direct {v1, p0, v2}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;-><init>(Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;Landroid/view/View;)V

    .line 98
    .restart local v1    # "holder":Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :cond_0
    iget-object v4, v1, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ushahidi/android/app/checkin/ListCheckinText;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v4, v1, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ushahidi/android/app/checkin/ListCheckinText;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, v1, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->date:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ushahidi/android/app/checkin/ListCheckinText;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, v1, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->checkinMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ushahidi/android/app/checkin/ListCheckinText;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, v1, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ushahidi/android/app/checkin/ListCheckinText;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->getArrow()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-object v2
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/checkin/ListCheckinText;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public removeItems()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/ListCheckinText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "lit":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/checkin/ListCheckinText;>;"
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->iItems:Ljava/util/List;

    .line 64
    return-void
.end method
