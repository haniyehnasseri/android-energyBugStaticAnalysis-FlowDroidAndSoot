.class Lcom/ushahidi/android/app/LocationMap$MapMarker;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "LocationMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/LocationMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapMarker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private MoveMap:Z

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private marker:Landroid/graphics/drawable/Drawable;

.field private myOverlayItem:Lcom/google/android/maps/OverlayItem;

.field final synthetic this$0:Lcom/ushahidi/android/app/LocationMap;

.field private timer:J


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/LocationMap;Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .param p2, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "LatitudeE6"    # I
    .param p4, "LongitudeE6"    # I

    .prologue
    .line 383
    iput-object p1, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    .line 384
    invoke-direct {p0, p2}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->locations:Ljava/util/List;

    .line 379
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->MoveMap:Z

    .line 385
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->timer:J

    .line 386
    iput-object p2, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->marker:Landroid/graphics/drawable/Drawable;

    .line 389
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p3, p4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 391
    .local v0, "myPlace":Lcom/google/android/maps/GeoPoint;
    new-instance v1, Lcom/google/android/maps/OverlayItem;

    const-string v2, " "

    const-string v3, " "

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->myOverlayItem:Lcom/google/android/maps/OverlayItem;

    .line 393
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->locations:Ljava/util/List;

    iget-object v2, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->myOverlayItem:Lcom/google/android/maps/OverlayItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {p0}, Lcom/ushahidi/android/app/LocationMap$MapMarker;->populate()V

    .line 397
    return-void
.end method


# virtual methods
.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 411
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 412
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->marker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/ushahidi/android/app/LocationMap$MapMarker;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 413
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 14
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "mapview"    # Lcom/google/android/maps/MapView;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 422
    .local v0, "Action":I
    const-string v3, ""

    .line 424
    .local v3, "foundLoc":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 426
    iget-boolean v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->MoveMap:Z

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->timer:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 427
    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v6}, Lcom/ushahidi/android/app/LocationMap;->access$900(Lcom/ushahidi/android/app/LocationMap;)Lcom/google/android/maps/MapView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    .line 429
    .local v5, "proj":Lcom/google/android/maps/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    .line 432
    .local v4, "loc":Lcom/google/android/maps/GeoPoint;
    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-virtual {v4}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    .line 433
    invoke-virtual {v4}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v7

    int-to-double v10, v7

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    .line 432
    invoke-static {v6, v8, v9, v10, v11}, Lcom/ushahidi/android/app/LocationMap;->access$800(Lcom/ushahidi/android/app/LocationMap;DD)Ljava/lang/String;

    move-result-object v3

    .line 434
    const-string v6, ""

    if-ne v3, v6, :cond_1

    .line 435
    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/ushahidi/android/app/LocationMap;->access$302(Lcom/ushahidi/android/app/LocationMap;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    const v7, 0x7f06006a

    invoke-static {v6, v7}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 443
    :goto_0
    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v6, v4}, Lcom/ushahidi/android/app/LocationMap;->access$600(Lcom/ushahidi/android/app/LocationMap;Lcom/google/android/maps/GeoPoint;)V

    .line 469
    .end local v4    # "loc":Lcom/google/android/maps/GeoPoint;
    .end local v5    # "proj":Lcom/google/android/maps/Projection;
    :cond_0
    :goto_1
    invoke-super/range {p0 .. p2}, Lcom/google/android/maps/ItemizedOverlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v6

    return v6

    .line 438
    .restart local v4    # "loc":Lcom/google/android/maps/GeoPoint;
    .restart local v5    # "proj":Lcom/google/android/maps/Projection;
    :cond_1
    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v6, v3}, Lcom/ushahidi/android/app/LocationMap;->access$302(Lcom/ushahidi/android/app/LocationMap;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    iget-object v7, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v7}, Lcom/ushahidi/android/app/LocationMap;->access$300(Lcom/ushahidi/android/app/LocationMap;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 446
    .end local v4    # "loc":Lcom/google/android/maps/GeoPoint;
    .end local v5    # "proj":Lcom/google/android/maps/Projection;
    :cond_2
    if-nez v0, :cond_3

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->timer:J

    .line 448
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->MoveMap:Z

    goto :goto_1

    .line 449
    :cond_3
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "difX":F
    const/4 v2, 0x0

    .line 453
    .local v2, "difY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4

    .line 455
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v7

    sub-float v1, v6, v7

    .line 458
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    sub-float v2, v6, v7

    .line 461
    :cond_4
    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v6, v1, v6

    if-gez v6, :cond_5

    const/high16 v6, -0x3f600000    # -5.0f

    cmpg-float v6, v1, v6

    if-lez v6, :cond_5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v6, v2, v6

    if-gez v6, :cond_5

    const/high16 v6, -0x3f600000    # -5.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    .line 463
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->MoveMap:Z

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$MapMarker;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
