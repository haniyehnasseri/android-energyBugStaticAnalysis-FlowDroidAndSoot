.class Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;
.super Lcom/ushahidi/android/app/UshahidiItemizedOverlay;
.source "IncidentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/IncidentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SitesOverlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushahidi/android/app/UshahidiItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ushahidi/android/app/IncidentMap;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/IncidentMap;Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V
    .locals 10
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    const/16 v7, 0x1e

    .line 474
    iput-object p1, p0, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->this$0:Lcom/ushahidi/android/app/IncidentMap;

    .line 475
    invoke-static {p2}, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$100(Lcom/ushahidi/android/app/IncidentMap;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$300(Lcom/ushahidi/android/app/IncidentMap;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcom/ushahidi/android/app/IncidentMap;Ljava/util/List;Landroid/os/Bundle;)V

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->items:Ljava/util/ArrayList;

    .line 476
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    .line 478
    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$400(Lcom/ushahidi/android/app/IncidentMap;)I

    move-result v0

    if-lez v0, :cond_1

    .line 479
    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$600(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/IncidentMap;->access$502(D)D

    .line 480
    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$800(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/IncidentMap;->access$702(D)D

    .line 482
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->items:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/OverlayItem;

    invoke-static {}, Lcom/ushahidi/android/app/IncidentMap;->access$500()D

    move-result-wide v2

    invoke-static {}, Lcom/ushahidi/android/app/IncidentMap;->access$700()D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/ushahidi/android/app/IncidentMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    .line 483
    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$900(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$1000(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/ushahidi/android/app/util/Util;->limitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->populate()V

    .line 501
    return-void

    .line 486
    :cond_1
    invoke-static {p1}, Lcom/ushahidi/android/app/IncidentMap;->access$100(Lcom/ushahidi/android/app/IncidentMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 488
    .local v6, "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    invoke-virtual {v6}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 487
    invoke-static {v2, v3}, Lcom/ushahidi/android/app/IncidentMap;->access$502(D)D

    .line 490
    invoke-virtual {v6}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLongitude()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/IncidentMap;->access$702(D)D

    .line 492
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->items:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/maps/OverlayItem;

    .line 493
    invoke-static {}, Lcom/ushahidi/android/app/IncidentMap;->access$500()D

    move-result-wide v4

    invoke-static {}, Lcom/ushahidi/android/app/IncidentMap;->access$700()D

    move-result-wide v8

    invoke-virtual {p1, v4, v5, v8, v9}, Lcom/ushahidi/android/app/IncidentMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    .line 494
    invoke-virtual {v6}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentTitle()Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {v6}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentDesc()Ljava/lang/String;

    move-result-object v5

    .line 494
    invoke-static {v5, v7}, Lcom/ushahidi/android/app/util/Util;->limitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected onBalloonTap(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
