.class Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;
.super Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;
.source "CheckinMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/CheckinMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckinsOverlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay",
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

.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V
    .locals 10
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    .line 328
    invoke-static {p2}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$400(Lcom/ushahidi/android/app/checkin/CheckinMap;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$500(Lcom/ushahidi/android/app/checkin/CheckinMap;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcom/ushahidi/android/app/checkin/CheckinMap;Ljava/util/List;Landroid/os/Bundle;)V

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;->items:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    .line 331
    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$600(Lcom/ushahidi/android/app/checkin/CheckinMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ushahidi/android/app/checkin/Checkin;

    .line 333
    .local v6, "checkin":Lcom/ushahidi/android/app/checkin/Checkin;
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;->items:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v6}, Lcom/ushahidi/android/app/checkin/Checkin;->getLat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 334
    invoke-virtual {v6}, Lcom/ushahidi/android/app/checkin/Checkin;->getLon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 333
    invoke-virtual {p1, v4, v5, v8, v9}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    .line 334
    invoke-virtual {v6}, Lcom/ushahidi/android/app/checkin/Checkin;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ushahidi/android/app/checkin/Checkin;->getMsg()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/ushahidi/android/app/util/Util;->limitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    invoke-virtual {v6}, Lcom/ushahidi/android/app/checkin/Checkin;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v6    # "checkin":Lcom/ushahidi/android/app/checkin/Checkin;
    :cond_0
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;->populate()V

    .line 340
    return-void
.end method


# virtual methods
.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected onBalloonTap(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
