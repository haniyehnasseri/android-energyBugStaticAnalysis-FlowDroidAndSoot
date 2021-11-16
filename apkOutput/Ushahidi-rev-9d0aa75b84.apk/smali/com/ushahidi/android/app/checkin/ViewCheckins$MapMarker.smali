.class Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "ViewCheckins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/ViewCheckins;
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

.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/ViewCheckins;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/checkin/ViewCheckins;Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .param p2, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "LatitudeE6"    # I
    .param p4, "LongitudeE6"    # I

    .prologue
    .line 222
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->this$0:Lcom/ushahidi/android/app/checkin/ViewCheckins;

    .line 223
    invoke-direct {p0, p2}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->locations:Ljava/util/List;

    .line 225
    iput-object p2, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->marker:Landroid/graphics/drawable/Drawable;

    .line 228
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p3, p4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 230
    .local v0, "myPlace":Lcom/google/android/maps/GeoPoint;
    new-instance v1, Lcom/google/android/maps/OverlayItem;

    const-string v2, " "

    const-string v3, " "

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->myOverlayItem:Lcom/google/android/maps/OverlayItem;

    .line 232
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->locations:Ljava/util/List;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->myOverlayItem:Lcom/google/android/maps/OverlayItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->populate()V

    .line 236
    return-void
.end method


# virtual methods
.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->locations:Ljava/util/List;

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
    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 251
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->marker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 252
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
