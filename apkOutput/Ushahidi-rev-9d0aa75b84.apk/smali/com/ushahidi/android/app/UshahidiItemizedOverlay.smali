.class public abstract Lcom/ushahidi/android/app/UshahidiItemizedOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "UshahidiItemizedOverlay.java"


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
.field private balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

.field private clickRegion:Landroid/view/View;

.field private iMap:Lcom/ushahidi/android/app/IncidentMap;

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

.field private mapView:Lcom/google/android/maps/MapView;

.field mc:Lcom/google/android/maps/MapController;

.field private viewOffset:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcom/ushahidi/android/app/IncidentMap;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "iMap"    # Lcom/ushahidi/android/app/IncidentMap;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/google/android/maps/MapView;",
            "Lcom/ushahidi/android/app/IncidentMap;",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/ushahidi/android/app/UshahidiItemizedOverlay;, "Lcom/ushahidi/android/app/UshahidiItemizedOverlay<TItem;>;"
    .local p4, "mNewIncidents":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/IncidentsData;>;"
    invoke-direct {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iput-object p2, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    .line 57
    const/16 v0, 0x20

    iput v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->viewOffset:I

    .line 58
    iput-object p3, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->iMap:Lcom/ushahidi/android/app/IncidentMap;

    .line 59
    iput-object p4, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->mNewIncidents:Ljava/util/List;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    .line 63
    return-void
.end method

.method private setBalloonTouchListener(I)V
    .locals 7
    .param p1, "thisIndex"    # I

    .prologue
    .line 146
    .local p0, "this":Lcom/ushahidi/android/app/UshahidiItemizedOverlay;, "Lcom/ushahidi/android/app/UshahidiItemizedOverlay<TItem;>;"
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

    .line 148
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->clickRegion:Landroid/view/View;

    new-instance v3, Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;

    invoke-direct {v3, p0, p1}, Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;-><init>(Lcom/ushahidi/android/app/UshahidiItemizedOverlay;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method


# virtual methods
.method protected onBalloonTap(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/ushahidi/android/app/UshahidiItemizedOverlay;, "Lcom/ushahidi/android/app/UshahidiItemizedOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onTap(I)Z
    .locals 12
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/ushahidi/android/app/UshahidiItemizedOverlay;, "Lcom/ushahidi/android/app/UshahidiItemizedOverlay<TItem;>;"
    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 98
    move v9, p1

    .line 100
    .local v9, "thisIndex":I
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v8

    .line 102
    .local v8, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->iMap:Lcom/ushahidi/android/app/IncidentMap;

    iget-object v2, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->viewOffset:I

    iget-object v4, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->mNewIncidents:Ljava/util/List;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;-><init>(Lcom/ushahidi/android/app/IncidentMap;Landroid/content/Context;ILjava/util/List;I)V

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    .line 106
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->clickRegion:Landroid/view/View;

    .line 107
    const/4 v6, 0x0

    .line 114
    .local v6, "isRecycled":Z
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->setData(Lcom/google/android/maps/OverlayItem;I)V

    .line 118
    new-instance v7, Lcom/google/android/maps/MapView$LayoutParams;

    const/16 v0, 0x51

    invoke-direct {v7, v10, v10, v8, v0}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    .line 121
    .local v7, "params":Lcom/google/android/maps/MapView$LayoutParams;
    iput v11, v7, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    .line 123
    invoke-direct {p0, v9}, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->setBalloonTouchListener(I)V

    .line 124
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-virtual {v0, v11}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->setVisibility(I)V

    .line 126
    if-eqz v6, :cond_1

    .line 127
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-virtual {v0, v7}, Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 133
    const/4 v0, 0x1

    return v0

    .line 111
    .end local v6    # "isRecycled":Z
    .end local v7    # "params":Lcom/google/android/maps/MapView$LayoutParams;
    :cond_0
    const/4 v6, 0x1

    .restart local v6    # "isRecycled":Z
    goto :goto_0

    .line 129
    .restart local v7    # "params":Lcom/google/android/maps/MapView$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->balloonView:Lcom/ushahidi/android/app/UshahidiBalloonOverlayView;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setBalloonBottomOffset(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 75
    .local p0, "this":Lcom/ushahidi/android/app/UshahidiItemizedOverlay;, "Lcom/ushahidi/android/app/UshahidiItemizedOverlay<TItem;>;"
    iput p1, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->viewOffset:I

    .line 76
    return-void
.end method
