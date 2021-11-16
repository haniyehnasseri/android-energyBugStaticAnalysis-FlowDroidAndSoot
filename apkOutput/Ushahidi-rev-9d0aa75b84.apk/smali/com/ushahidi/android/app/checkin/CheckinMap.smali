.class public Lcom/ushahidi/android/app/checkin/CheckinMap;
.super Lcom/google/android/maps/MapActivity;
.source "CheckinMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;,
        Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;,
        Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;,
        Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;
    }
.end annotation


# static fields
.field private static final ABOUT:I = 0x7

.field private static final ADD_CHECKIN:I = 0x3

.field private static final CHECKINS_MAP:I = 0x2

.field private static final CHECKIN_MAP:I = 0x4

.field private static final CHECKIN_REFRESH:I = 0x5

.field private static final GOTOHOME:I = 0x0

.field private static final HOME:I = 0x2

.field private static final POST_CHECKIN:I = 0x1

.field private static final REQUEST_CODE_ABOUT:I = 0x5

.field private static final REQUEST_CODE_SETTINGS:I = 0x4

.field private static final SETTINGS:I = 0x6


# instance fields
.field private checkins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;"
        }
    .end annotation
.end field

.field private checkinsBundle:Landroid/os/Bundle;

.field private checkinsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:Landroid/database/Cursor;

.field private extras:Landroid/os/Bundle;

.field protected latitude:D

.field protected locationName:Ljava/lang/String;

.field protected longitude:D

.field final mDeviceLocationMarkerOnMap:Ljava/lang/Runnable;

.field final mMarkersOnMap:Ljava/lang/Runnable;

.field private mapView:Lcom/google/android/maps/MapView;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 47
    iput-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkinsList:Ljava/util/List;

    .line 49
    iput-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkins:Ljava/util/List;

    .line 53
    iput-wide v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->latitude:D

    .line 55
    iput-wide v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->longitude:D

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->locationName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->name:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->extras:Landroid/os/Bundle;

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkinsBundle:Landroid/os/Bundle;

    .line 121
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinMap$1;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/checkin/CheckinMap$1;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mMarkersOnMap:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinMap$2;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/checkin/CheckinMap$2;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mDeviceLocationMarkerOnMap:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/checkin/CheckinMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->populateMap()V

    return-void
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/checkin/CheckinMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->addMarker()V

    return-void
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/checkin/CheckinMap;Lcom/google/android/maps/GeoPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->centerLocation(Lcom/google/android/maps/GeoPoint;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/checkin/CheckinMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkins:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ushahidi/android/app/checkin/CheckinMap;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ushahidi/android/app/checkin/CheckinMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkinsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ushahidi/android/app/checkin/CheckinMap;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinMap;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkinsList:Ljava/util/List;

    return-object p1
.end method

.method private addMarker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 241
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 243
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-direct {v2, p0, v0, v3}, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationOverlay;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 233
    :goto_0
    return v1

    .line 200
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->refreshForNewCheckins()V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkinsBundle:Landroid/os/Bundle;

    const-string v4, "tab_index"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "tab"

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkinsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/About;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 222
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setResult(I)V

    goto :goto_0

    .line 226
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/Settings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private centerLocation(Lcom/google/android/maps/GeoPoint;)V
    .locals 1
    .param p1, "centerGeoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 255
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->addMarker()V

    .line 257
    return-void
.end method

.method private populateMap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-direct {v2, p0, v0, v3}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsOverlay;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 170
    const/4 v1, 0x2

    const v2, 0x7f06006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    .local v0, "i":Landroid/view/MenuItem;
    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 173
    const/4 v1, 0x3

    const v2, 0x7f060016

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 176
    const/4 v1, 0x4

    const v2, 0x7f060020

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 177
    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    const/4 v1, 0x5

    const v2, 0x7f06006f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 180
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 183
    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 185
    const/4 v1, 0x7

    const v2, 0x7f06006c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 186
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 188
    return-void
.end method

.method private refreshForNewCheckins()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Lcom/ushahidi/android/app/checkin/CheckinMap$1;)V

    .line 192
    .local v0, "checkinsTask":Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;
    iput-object p0, v0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->appContext:Landroid/content/Context;

    .line 193
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    return-void
.end method

.method private setDeviceLocation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v4, 0x43fa0000    # 500.0f

    .line 262
    new-instance v5, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;

    invoke-direct {v5, p0}, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V

    .line 263
    .local v5, "listener":Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 265
    .local v0, "manager":Landroid/location/LocationManager;
    const-wide/16 v2, 0x3e8

    .line 269
    .local v2, "updateTimeMsec":J
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v1

    .line 268
    invoke-virtual {v0, v1, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v7

    .line 273
    .local v7, "low":Landroid/location/LocationProvider;
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 275
    .local v6, "high":Landroid/location/LocationProvider;
    invoke-virtual {v7}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 277
    invoke-virtual {v6}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 279
    return-void
.end method


# virtual methods
.method public getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 321
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
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onAddReport(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 154
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 155
    sget v2, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 156
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    .local v0, "checkinActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivity(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setResult(I)V

    .line 166
    .end local v0    # "checkinActivityIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ushahidi/android/app/checkin/CheckinMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setResult(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->requestWindowFeature(I)Z

    .line 90
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 91
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setContentView(I)V

    .line 93
    const v1, 0x7f0a0048

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/MapView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    .line 94
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->name:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkins:Ljava/util/List;

    .line 97
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->setDeviceLocation()V

    .line 100
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;Lcom/ushahidi/android/app/checkin/CheckinMap$1;)V

    .line 101
    .local v0, "checkinTask":Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;
    iput-object p0, v0, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->appContext:Landroid/content/Context;

    .line 102
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinMap$CheckinsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->populateMenu(Landroid/view/Menu;)V

    .line 131
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->populateMenu(Landroid/view/Menu;)V

    .line 137
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 283
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/checkin/CheckinMap$DeviceLocationListener;-><init>(Lcom/ushahidi/android/app/checkin/CheckinMap;)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 285
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinMap;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 289
    return-void
.end method

.method public showCheckins()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    sget-object v14, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v14}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllCheckins()Landroid/database/Cursor;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    const-string v15, "_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 406
    .local v5, "idIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    const-string v15, "user_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 407
    .local v13, "userIdIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    const-string v15, "checkin_date"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 408
    .local v3, "dateIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    const-string v15, "checki_loc_name"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 410
    .local v8, "locationIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    const-string v15, "checkin_mesg"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 412
    .local v11, "mesgIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    const-string v15, "checkin_loc_latitude"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 414
    .local v6, "latitudeIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    const-string v15, "checkin_loc_longitude"

    .line 415
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 419
    .local v9, "longitudeIndex":I
    :cond_0
    new-instance v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-direct {v1}, Lcom/ushahidi/android/app/checkin/Checkin;-><init>()V

    .line 420
    .local v1, "checkinsData":Lcom/ushahidi/android/app/checkin/Checkin;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkins:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v4

    .line 423
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/ushahidi/android/app/checkin/Checkin;->setId(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/ushahidi/android/app/checkin/Checkin;->setLat(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/ushahidi/android/app/checkin/Checkin;->setLon(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 428
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v1, v12}, Lcom/ushahidi/android/app/checkin/Checkin;->setName(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, "mesg":Ljava/lang/String;
    invoke-virtual {v1, v10}, Lcom/ushahidi/android/app/checkin/Checkin;->setMsg(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, "location":Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setLoc(Ljava/lang/String;)V

    .line 436
    const-string v14, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "MMMM dd, yyyy \'at\' hh:mm:ss a"

    invoke-static/range {v14 .. v16}, Lcom/ushahidi/android/app/util/Util;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "date":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/ushahidi/android/app/checkin/Checkin;->setDate(Ljava/lang/String;)V

    .line 440
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/ushahidi/android/app/checkin/Checkin;->setImage(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 445
    .end local v1    # "checkinsData":Lcom/ushahidi/android/app/checkin/Checkin;
    .end local v2    # "date":Ljava/lang/String;
    .end local v3    # "dateIndex":I
    .end local v4    # "id":I
    .end local v5    # "idIndex":I
    .end local v6    # "latitudeIndex":I
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "locationIndex":I
    .end local v9    # "longitudeIndex":I
    .end local v10    # "mesg":Ljava/lang/String;
    .end local v11    # "mesgIndex":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "userIdIndex":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->cursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushahidi/android/app/checkin/CheckinMap;->checkins:Ljava/util/List;

    return-object v14
.end method
