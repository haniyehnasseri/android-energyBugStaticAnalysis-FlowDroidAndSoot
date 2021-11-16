.class public Lcom/ushahidi/android/app/util/DeviceCurrentLocation;
.super Ljava/lang/Object;
.source "DeviceCurrentLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field public static latitude:D

.field private static loc:Landroid/location/Location;

.field public static longitude:D


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationMgr:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    .line 27
    iput-object p1, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->setDeviceLocation()V

    .line 29
    return-void
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->loc:Landroid/location/Location;

    return-object v0
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 0
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 104
    sput-object p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->loc:Landroid/location/Location;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-static {p1}, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->setLocation(Landroid/location/Location;)V

    .line 83
    invoke-virtual {p0}, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->stopLocating()V

    .line 85
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 100
    return-void
.end method

.method public setDeviceLocation()V
    .locals 10

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    .line 36
    const-wide/16 v2, 0x7530

    .line 40
    .local v2, "updateTimeMsec":J
    :try_start_0
    iget-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    .line 41
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 40
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v9

    .line 44
    .local v9, "low":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    .line 45
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 44
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v8

    .line 47
    .local v8, "high":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 49
    iget-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v8}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v8    # "high":Landroid/location/LocationProvider;
    .end local v9    # "low":Landroid/location/LocationProvider;
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v6

    .line 54
    .local v6, "ex1":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 58
    :catch_1
    move-exception v7

    .line 59
    .local v7, "ex2":Ljava/lang/Exception;
    sget-object v0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopLocating()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->mLocationMgr:Landroid/location/LocationManager;

    .line 78
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 75
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 76
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
