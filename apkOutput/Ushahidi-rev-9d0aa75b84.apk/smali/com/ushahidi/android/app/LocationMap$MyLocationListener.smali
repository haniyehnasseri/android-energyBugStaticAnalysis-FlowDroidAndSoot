.class public Lcom/ushahidi/android/app/LocationMap$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationMap.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/LocationMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/LocationMap;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/LocationMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 331
    const-wide/16 v0, 0x0

    .line 332
    .local v0, "latitude":D
    const-wide/16 v4, 0x0

    .line 333
    .local v4, "longitude":D
    const-string v2, ""

    .line 334
    .local v2, "locName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 339
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 341
    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v3, v0, v1, v4, v5}, Lcom/ushahidi/android/app/LocationMap;->access$800(Lcom/ushahidi/android/app/LocationMap;DD)Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    iget-object v6, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/ushahidi/android/app/LocationMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/ushahidi/android/app/LocationMap;->access$600(Lcom/ushahidi/android/app/LocationMap;Lcom/google/android/maps/GeoPoint;)V

    .line 343
    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    const-string v6, "location"

    invoke-virtual {v3, v6}, Lcom/ushahidi/android/app/LocationMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 344
    if-nez v2, :cond_1

    .line 346
    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    const v6, 0x7f06006b

    invoke-static {v3, v6}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v3, v2}, Lcom/ushahidi/android/app/LocationMap;->access$302(Lcom/ushahidi/android/app/LocationMap;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    iget-object v3, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found you at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    invoke-static {v7}, Lcom/ushahidi/android/app/LocationMap;->access$300(Lcom/ushahidi/android/app/LocationMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;->this$0:Lcom/ushahidi/android/app/LocationMap;

    const v1, 0x7f06006b

    invoke-static {v0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 358
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 362
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 366
    return-void
.end method
