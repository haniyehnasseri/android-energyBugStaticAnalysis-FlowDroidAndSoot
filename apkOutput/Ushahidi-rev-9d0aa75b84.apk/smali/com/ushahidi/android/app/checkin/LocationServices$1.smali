.class final Lcom/ushahidi/android/app/checkin/LocationServices$1;
.super Ljava/lang/Object;
.source "LocationServices.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/LocationServices;->getLocation(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/LocationServices$1;->val$locationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 45
    sput-object p1, Lcom/ushahidi/android/app/checkin/LocationServices;->location:Landroid/location/Location;

    .line 47
    sget-object v0, Lcom/ushahidi/android/app/checkin/LocationServices;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ushahidi/android/app/checkin/LocationServices;->locationSet:Z

    .line 50
    :cond_0
    sget-object v0, Lcom/ushahidi/android/app/checkin/LocationServices;->checkin_activity:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 51
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 52
    invoke-static {}, Lcom/ushahidi/android/app/checkin/LocationServices;->dismissActionDialog()V

    .line 54
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/LocationServices$1;->val$locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 58
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/checkin/LocationServices;->location:Landroid/location/Location;

    .line 59
    sget-object v0, Lcom/ushahidi/android/app/checkin/LocationServices;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ushahidi/android/app/checkin/LocationServices;->locationSet:Z

    .line 63
    :cond_0
    sget-object v0, Lcom/ushahidi/android/app/checkin/LocationServices;->checkin_activity:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 64
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 65
    invoke-static {}, Lcom/ushahidi/android/app/checkin/LocationServices;->dismissActionDialog()V

    .line 67
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method
