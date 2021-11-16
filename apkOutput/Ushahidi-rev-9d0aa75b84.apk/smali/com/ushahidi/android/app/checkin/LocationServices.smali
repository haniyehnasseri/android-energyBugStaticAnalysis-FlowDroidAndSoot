.class public Lcom/ushahidi/android/app/checkin/LocationServices;
.super Ljava/lang/Object;
.source "LocationServices.java"


# static fields
.field public static checkin_activity:Lcom/ushahidi/android/app/checkin/CheckinActivity;

.field public static location:Landroid/location/Location;

.field public static locationSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ushahidi/android/app/checkin/LocationServices;->locationSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissActionDialog()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ushahidi/android/app/checkin/LocationServices;->checkin_activity:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->dismissCheckinProgressDialog()V

    .line 26
    return-void
.end method

.method public static getLocation(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V
    .locals 9
    .param p0, "activity"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v8, 0x1

    const/high16 v4, 0x43fa0000    # 500.0f

    .line 29
    sput-object p0, Lcom/ushahidi/android/app/checkin/LocationServices;->checkin_activity:Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .line 30
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ushahidi/android/app/checkin/LocationServices;->locationSet:Z

    .line 31
    const-string v1, "location"

    .line 32
    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 35
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v7

    .line 39
    .local v7, "low":Landroid/location/LocationProvider;
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 41
    .local v6, "high":Landroid/location/LocationProvider;
    new-instance v5, Lcom/ushahidi/android/app/checkin/LocationServices$1;

    invoke-direct {v5, v0}, Lcom/ushahidi/android/app/checkin/LocationServices$1;-><init>(Landroid/location/LocationManager;)V

    .line 78
    .local v5, "locationListener":Landroid/location/LocationListener;
    invoke-virtual {v7}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 79
    invoke-virtual {v6}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 81
    return-void
.end method
