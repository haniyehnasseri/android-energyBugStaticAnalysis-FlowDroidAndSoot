.class public Lcom/ushahidi/android/app/DeploymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeploymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private colors:[I

.field private iItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/DeploymentsData;",
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
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->colors:[I

    .line 29
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x7f080008
        0x7f080006
    .end array-data
.end method


# virtual methods
.method public addItem(Lcom/ushahidi/android/app/data/DeploymentsData;)V
    .locals 1
    .param p1, "deploymentsData"    # Lcom/ushahidi/android/app/data/DeploymentsData;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    sget v4, Lcom/ushahidi/android/app/UshahidiPref;->activeDeployment:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "deploymentId":Ljava/lang/String;
    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "row":Landroid/view/View;
    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->colors:[I

    array-length v4, v4

    rem-int v0, p1, v4

    .line 65
    .local v0, "colorPosition":I
    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->colors:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;

    .line 69
    .local v2, "holder":Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 70
    new-instance v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;

    .end local v2    # "holder":Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;
    invoke-direct {v2, p0, v3}, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;-><init>(Lcom/ushahidi/android/app/DeploymentAdapter;Landroid/view/View;)V

    .line 71
    .restart local v2    # "holder":Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :cond_0
    iget-object v5, v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-virtual {v4}, Lcom/ushahidi/android/app/data/DeploymentsData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v5, v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentDesc:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-virtual {v4}, Lcom/ushahidi/android/app/data/DeploymentsData;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v5, v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentUrl:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-virtual {v4}, Lcom/ushahidi/android/app/data/DeploymentsData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v5, v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-virtual {v4}, Lcom/ushahidi/android/app/data/DeploymentsData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-virtual {v4}, Lcom/ushahidi/android/app/data/DeploymentsData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    iget-object v4, v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_0
    return-object v3

    .line 84
    :cond_1
    iget-object v4, v2, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    const v5, 0x7f020059

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public removeItems()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter;->iItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method
