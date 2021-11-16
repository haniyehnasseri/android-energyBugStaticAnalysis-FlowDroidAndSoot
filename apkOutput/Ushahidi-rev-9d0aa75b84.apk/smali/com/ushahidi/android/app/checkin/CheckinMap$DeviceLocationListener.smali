.class public Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;
.super Ljava/lang/Object;
.source "CheckinMap.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/checkin/CheckinMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 299
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->latitude:D

    .line 300
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->longitude:D

    .line 302
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    iget-wide v2, v2, Lcom/ushahidi/android/app/checkin/CheckinMap;->latitude:D

    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    iget-wide v4, v4, Lcom/ushahidi/android/app/checkin/CheckinMap;->longitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->access$300(Lcom/ushahidi/android/app/checkin/CheckinMap;Lcom/google/android/maps/GeoPoint;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;->this$0:Lcom/ushahidi/android/app/checkin/CheckinMap;

    const v1, 0x7f06006b

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 309
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 313
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 317
    return-void
.end method
