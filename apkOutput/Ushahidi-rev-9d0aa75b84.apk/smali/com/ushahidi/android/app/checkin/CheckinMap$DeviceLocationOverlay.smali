.class Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;
.super Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;
.source "CheckinMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/CheckinMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceLocationOverlay"
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

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V
    .locals 6
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    .line 364
    invoke-static {p2}, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$400(Lcom/ushahidi/android/app/checkin/CheckinMap;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$500(Lcom/ushahidi/android/app/checkin/CheckinMap;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcom/ushahidi/android/app/checkin/CheckinMap;Ljava/util/List;Landroid/os/Bundle;)V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->items:Ljava/util/ArrayList;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->user:Ljava/lang/String;

    .line 365
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    .line 366
    iget-object v0, p1, Lcom/ushahidi/android/app/checkin/CheckinMap;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const v0, 0x7f060075

    invoke-virtual {p1, v0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->user:Ljava/lang/String;

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->items:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/OverlayItem;

    iget-wide v2, p1, Lcom/ushahidi/android/app/checkin/CheckinMap;->latitude:D

    iget-wide v4, p1, Lcom/ushahidi/android/app/checkin/CheckinMap;->longitude:D

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->user:Ljava/lang/String;

    const v4, 0x7f060030

    .line 373
    invoke-virtual {p1, v4}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->populate()V

    .line 376
    return-void

    .line 369
    :cond_0
    iget-object v0, p1, Lcom/ushahidi/android/app/checkin/CheckinMap;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->user:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected onBalloonTap(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
