.class public Lcom/ushahidi/android/app/LocationMap;
.super Lcom/google/android/maps/MapActivity;
.source "LocationMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/LocationMap$MapMarker;,
        Lcom/ushahidi/android/app/LocationMap$MyLocationListener;
    }
.end annotation


# static fields
.field private static gc:Landroid/location/Geocoder;


# instance fields
.field private btnFind:Landroid/widget/Button;

.field private btnReset:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private categories:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private defaultLocation:Lcom/google/android/maps/GeoPoint;

.field private description:Ljava/lang/String;

.field private foundAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:D

.field private location:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private longitude:D

.field final mHandler:Landroid/os/Handler;

.field private mNewIncidents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;"
        }
    .end annotation
.end field

.field private mOldIncidents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;"
        }
    .end annotation
.end field

.field final mUpdateResults:Ljava/lang/Runnable;

.field private mapController:Lcom/google/android/maps/MapController;

.field private mapView:Lcom/google/android/maps/MapView;

.field private thumbnail:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->bundle:Landroid/os/Bundle;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/ushahidi/android/app/LocationMap$4;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/LocationMap$4;-><init>(Lcom/ushahidi/android/app/LocationMap;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mUpdateResults:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/LocationMap;)D
    .locals 2
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/ushahidi/android/app/LocationMap;->latitude:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/LocationMap;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/LocationMap;)D
    .locals 2
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/ushahidi/android/app/LocationMap;->longitude:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/LocationMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ushahidi/android/app/LocationMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ushahidi/android/app/LocationMap;->locationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/LocationMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ushahidi/android/app/LocationMap;->updateLocation()V

    return-void
.end method

.method static synthetic access$500(Lcom/ushahidi/android/app/LocationMap;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->defaultLocation:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ushahidi/android/app/LocationMap;Lcom/google/android/maps/GeoPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/LocationMap;->centerLocation(Lcom/google/android/maps/GeoPoint;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ushahidi/android/app/LocationMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ushahidi/android/app/LocationMap;->updateResultsInUi()V

    return-void
.end method

.method static synthetic access$800(Lcom/ushahidi/android/app/LocationMap;DD)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ushahidi/android/app/LocationMap;->getLocationFromLatLon(DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/ushahidi/android/app/LocationMap;)Lcom/google/android/maps/MapView;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/LocationMap;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method private centerLocation(Lcom/google/android/maps/GeoPoint;)V
    .locals 4
    .param p1, "centerGeoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 207
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 211
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ushahidi/android/app/LocationMap;->latitude:D

    .line 212
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ushahidi/android/app/LocationMap;->longitude:D

    .line 213
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ushahidi/android/app/LocationMap;->placeMarker(II)V

    .line 216
    return-void
.end method

.method private getLocationFromLatLon(DD)Ljava/lang/String;
    .locals 9
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 225
    :try_start_0
    sget-object v1, Lcom/ushahidi/android/app/LocationMap;->gc:Landroid/location/Geocoder;

    const/4 v6, 0x5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/LocationMap;->foundAddresses:Ljava/util/List;

    .line 226
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap;->foundAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap;->foundAddresses:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 228
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    .line 237
    .end local v0    # "address":Landroid/location/Address;
    :goto_0
    return-object v1

    .line 231
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v7

    .line 235
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    const-string v1, ""

    goto :goto_0
.end method

.method private placeMarker(II)V
    .locals 4
    .param p1, "markerLatitude"    # I
    .param p2, "markerLongitude"    # I

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/ushahidi/android/app/LocationMap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 197
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 198
    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/LocationMap$MapMarker;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/ushahidi/android/app/LocationMap$MapMarker;-><init>(Lcom/ushahidi/android/app/LocationMap;Landroid/graphics/drawable/Drawable;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method private updateLocation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v4, 0x43fa0000    # 500.0f

    .line 310
    new-instance v5, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;

    invoke-direct {v5, p0}, Lcom/ushahidi/android/app/LocationMap$MyLocationListener;-><init>(Lcom/ushahidi/android/app/LocationMap;)V

    .line 311
    .local v5, "listener":Lcom/ushahidi/android/app/LocationMap$MyLocationListener;
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/LocationMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 312
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-wide/16 v2, 0x3e8

    .line 315
    .local v2, "updateTimeMsec":J
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v7

    .line 319
    .local v7, "low":Landroid/location/LocationProvider;
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 322
    .local v6, "high":Landroid/location/LocationProvider;
    invoke-virtual {v7}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 324
    invoke-virtual {v6}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 326
    return-void
.end method

.method private updateResultsInUi()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found you at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushahidi/android/app/LocationMap;->locationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void
.end method


# virtual methods
.method public getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 202
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    mul-double v2, p1, v4

    double-to-int v1, v2

    mul-double v2, p3, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->requestWindowFeature(I)Z

    .line 105
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->setContentView(I)V

    .line 107
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->locationName:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->foundAddresses:Ljava/util/List;

    .line 111
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ushahidi/android/app/LocationMap;->gc:Landroid/location/Geocoder;

    .line 113
    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->btnSave:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->btnSave:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/LocationMap$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/LocationMap$1;-><init>(Lcom/ushahidi/android/app/LocationMap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->btnFind:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->btnFind:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/LocationMap$2;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/LocationMap$2;-><init>(Lcom/ushahidi/android/app/LocationMap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mapController:Lcom/google/android/maps/MapController;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mOldIncidents:Ljava/util/List;

    .line 141
    const-string v0, "All"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->showIncidents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mNewIncidents:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mNewIncidents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mNewIncidents:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushahidi/android/app/LocationMap;->latitude:D

    .line 145
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->mNewIncidents:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushahidi/android/app/LocationMap;->longitude:D

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/ushahidi/android/app/LocationMap;->latitude:D

    iget-wide v2, p0, Lcom/ushahidi/android/app/LocationMap;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushahidi/android/app/LocationMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->defaultLocation:Lcom/google/android/maps/GeoPoint;

    .line 149
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->defaultLocation:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->centerLocation(Lcom/google/android/maps/GeoPoint;)V

    .line 151
    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/LocationMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->btnReset:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/ushahidi/android/app/LocationMap;->btnReset:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/LocationMap$3;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/LocationMap$3;-><init>(Lcom/ushahidi/android/app/LocationMap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method public showIncidents(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "by"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    const-string v14, "All"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 245
    sget-object v14, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v14}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllIncidents()Landroid/database/Cursor;

    move-result-object v2

    .line 249
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 250
    const-string v14, "_id"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 251
    .local v6, "idIndex":I
    const-string v14, "incident_title"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 252
    .local v12, "titleIndex":I
    const-string v14, "incident_date"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 253
    .local v3, "dateIndex":I
    const-string v14, "incident_verified"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 254
    .local v13, "verifiedIndex":I
    const-string v14, "incident_loc_name"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 256
    .local v9, "locationIndex":I
    const-string v14, "incident_desc"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, "descIndex":I
    const-string v14, "incident_categories"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, "categoryIndex":I
    const-string v14, "incident_media"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 262
    .local v11, "mediaIndex":I
    const-string v14, "incident_loc_latitude"

    .line 263
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 265
    .local v8, "latitudeIndex":I
    const-string v14, "incident_loc_longitude"

    .line 266
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 270
    .local v10, "longitudeIndex":I
    :cond_0
    new-instance v7, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-direct {v7}, Lcom/ushahidi/android/app/data/IncidentsData;-><init>()V

    .line 271
    .local v7, "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->mOldIncidents:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v5

    .line 274
    .local v5, "id":I
    invoke-virtual {v7, v5}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentId(I)V

    .line 276
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ushahidi/android/app/util/Util;->capitalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->title:Ljava/lang/String;

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->title:Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentTitle(Ljava/lang/String;)V

    .line 279
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->description:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->description:Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDesc(Ljava/lang/String;)V

    .line 282
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->categories:Ljava/lang/String;

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->categories:Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentCategories(Ljava/lang/String;)V

    .line 285
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->location:Ljava/lang/String;

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->location:Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLongitude(Ljava/lang/String;)V

    .line 288
    const-string v14, "Date: "

    const-string v15, "yyyy-MM-dd hh:mm:ss"

    .line 289
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "MMMM dd, yyyy \'at\' hh:mm:ss aaa"

    .line 288
    invoke-static/range {v15 .. v17}, Lcom/ushahidi/android/app/util/Util;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/ushahidi/android/app/util/Util;->joinString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->date:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->date:Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDate(Ljava/lang/String;)V

    .line 292
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->thumbnail:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->thumbnail:Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentThumbnail(Ljava/lang/String;)V

    .line 295
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentVerified(I)V

    .line 297
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLatitude(Ljava/lang/String;)V

    .line 298
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLongitude(Ljava/lang/String;)V

    .line 300
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 303
    .end local v1    # "categoryIndex":I
    .end local v3    # "dateIndex":I
    .end local v4    # "descIndex":I
    .end local v5    # "id":I
    .end local v6    # "idIndex":I
    .end local v7    # "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    .end local v8    # "latitudeIndex":I
    .end local v9    # "locationIndex":I
    .end local v10    # "longitudeIndex":I
    .end local v11    # "mediaIndex":I
    .end local v12    # "titleIndex":I
    .end local v13    # "verifiedIndex":I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/LocationMap;->mOldIncidents:Ljava/util/List;

    return-object v14

    .line 247
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v14, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchIncidentsByCategories(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .restart local v2    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0
.end method

.method protected startLongRunningOperation()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/ushahidi/android/app/LocationMap$5;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/LocationMap$5;-><init>(Lcom/ushahidi/android/app/LocationMap;)V

    .line 177
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    return-void
.end method
