.class public Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "CheckinItemizedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

.field private clickRegion:Landroid/view/View;

.field private iMap:Lcom/ushahidi/android/app/checkin/CheckinMap;

.field private mCheckins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mapView:Lcom/google/android/maps/MapView;

.field private mc:Lcom/google/android/maps/MapController;

.field private viewOffset:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 45
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcom/ushahidi/android/app/checkin/CheckinMap;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "iMap"    # Lcom/ushahidi/android/app/checkin/CheckinMap;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/google/android/maps/MapView;",
            "Lcom/ushahidi/android/app/checkin/CheckinMap;",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    .local p4, "checkins":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/checkin/Checkin;>;"
    invoke-direct {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    .line 52
    iput-object p2, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    .line 53
    const/16 v0, 0x20

    iput v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->viewOffset:I

    .line 54
    iput-object p3, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->iMap:Lcom/ushahidi/android/app/checkin/CheckinMap;

    .line 55
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    .line 56
    iput-object p4, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mCheckins:Ljava/util/List;

    .line 58
    return-void
.end method

.method private setBalloonTouchListener(I)V
    .locals 7
    .param p1, "thisIndex"    # I

    .prologue
    .line 139
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onBalloonTap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 141
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->clickRegion:Landroid/view/View;

    new-instance v3, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;

    invoke-direct {v3, p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;-><init>(Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .param p1, "overlay"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 179
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->populate()V

    .line 181
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 185
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected onBalloonTap(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 81
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final onTap(I)Z
    .locals 11
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 93
    move v5, p1

    .line 94
    .local v5, "thisIndex":I
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v8

    .line 96
    .local v8, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->iMap:Lcom/ushahidi/android/app/checkin/CheckinMap;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->viewOffset:I

    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mCheckins:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Landroid/content/Context;ILjava/util/List;I)V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    .line 100
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->clickRegion:Landroid/view/View;

    .line 101
    const/4 v6, 0x0

    .line 107
    .local v6, "isRecycled":Z
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->setData(Lcom/google/android/maps/OverlayItem;I)V

    .line 111
    new-instance v7, Lcom/google/android/maps/MapView$LayoutParams;

    const/16 v0, 0x51

    invoke-direct {v7, v9, v9, v8, v0}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    .line 114
    .local v7, "params":Lcom/google/android/maps/MapView$LayoutParams;
    iput v10, v7, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    .line 116
    invoke-direct {p0, v5}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->setBalloonTouchListener(I)V

    .line 117
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-virtual {v0, v10}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->setVisibility(I)V

    .line 119
    if-eqz v6, :cond_1

    .line 120
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-virtual {v0, v7}, Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 126
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v6    # "isRecycled":Z
    .end local v7    # "params":Lcom/google/android/maps/MapView$LayoutParams;
    :cond_0
    const/4 v6, 0x1

    .restart local v6    # "isRecycled":Z
    goto :goto_0

    .line 122
    .restart local v7    # "params":Lcom/google/android/maps/MapView$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/checkin/CheckinBalloonOverlayView;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setBalloonBottomOffset(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 70
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    iput p1, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->viewOffset:I

    .line 71
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
