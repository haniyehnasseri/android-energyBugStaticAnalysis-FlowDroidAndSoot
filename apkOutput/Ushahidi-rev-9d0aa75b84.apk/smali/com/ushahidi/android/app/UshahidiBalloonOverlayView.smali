.class public Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;
.super Landroid/widget/FrameLayout;
.source "UshahidiBalloonOverlayView.java"


# static fields
.field private static final VIEW_INCIDENT:I = 0x1


# instance fields
.field private incidentsBundle:Landroid/os/Bundle;

.field private layout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mMap:Lcom/ushahidi/android/app/IncidentMap;

.field private mNewIncidents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;"
        }
    .end annotation
.end field

.field private readmore:Landroid/widget/TextView;

.field private snippet:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/IncidentMap;Landroid/content/Context;ILjava/util/List;I)V
    .locals 8
    .param p1, "iMap"    # Lcom/ushahidi/android/app/IncidentMap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "balloonBottomOffset"    # I
    .param p5, "thisIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushahidi/android/app/IncidentMap;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, "incidentsData":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/IncidentsData;>;"
    const/16 v5, 0xa

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->incidentsBundle:Landroid/os/Bundle;

    .line 57
    invoke-virtual {p0, v5, v6, v5, p3}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->setPadding(IIII)V

    .line 58
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    .line 59
    iget-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iput-object p4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->mNewIncidents:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->mMap:Lcom/ushahidi/android/app/IncidentMap;

    .line 63
    iput-object p2, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->mContext:Landroid/content/Context;

    .line 65
    const-string v4, "layout_inflater"

    .line 66
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 67
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030003

    iget-object v5, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0a002d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->title:Landroid/widget/TextView;

    .line 69
    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->snippet:Landroid/widget/TextView;

    .line 70
    const v4, 0x7f0a002f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->readmore:Landroid/widget/TextView;

    .line 72
    iget-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->readmore:Landroid/widget/TextView;

    const v5, 0x7f060086

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v4, 0x7f0a0030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "close":Landroid/widget/ImageView;
    new-instance v4, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$1;

    invoke-direct {v4, p0}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$1;-><init>(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    iget-object v4, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v2}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->mNewIncidents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->incidentsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;)Lcom/ushahidi/android/app/IncidentMap;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->mMap:Lcom/ushahidi/android/app/IncidentMap;

    return-object v0
.end method

.method private viewReports(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->readmore:Landroid/widget/TextView;

    new-instance v1, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;

    invoke-direct {v1, p0, p1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView$2;-><init>(Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method


# virtual methods
.method public setData(Lcom/google/android/maps/OverlayItem;I)V
    .locals 4
    .param p1, "item"    # Lcom/google/android/maps/OverlayItem;
    .param p2, "i"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p2}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->viewReports(I)V

    .line 130
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_1
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
