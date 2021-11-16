.class public Lcom/ushahidi/android/app/IncidentMap;
.super Lcom/google/android/maps/MapActivity;
.source "IncidentMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;,
        Lcom/ushahidi/android/app/IncidentMap$ReportsTask;
    }
.end annotation


# static fields
.field private static final ABOUT:I = 0x7

.field private static final ADD_INCIDENTS:I = 0x1

.field private static final DIALOG_MESSAGE:I = 0x0

.field private static final GOTOHOME:I = 0x0

.field private static final HOME:I = 0x2

.field private static final INCIDENT_ADD:I = 0x4

.field private static final INCIDENT_REFRESH:I = 0x5

.field private static final LIST_INCIDENT:I = 0x3

.field private static final LIST_INCIDENTS:I = 0x2

.field private static final REQUEST_CODE_ABOUT:I = 0x2

.field private static final REQUEST_CODE_SETTINGS:I = 0x1

.field private static final SETTINGS:I = 0x6

.field public static gc:Landroid/location/Geocoder;

.field private static latitude:D

.field private static longitude:D


# instance fields
.field private extras:Landroid/os/Bundle;

.field private id:I

.field private mHandler:Landroid/os/Handler;

.field final mMarkersOnMap:Ljava/lang/Runnable;

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

.field private mapView:Lcom/google/android/maps/MapView;

.field private reportDescription:Ljava/lang/String;

.field private reportLatitude:Ljava/lang/String;

.field private reportLongitude:Ljava/lang/String;

.field private reportTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    .line 195
    new-instance v0, Lcom/ushahidi/android/app/IncidentMap$1;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/IncidentMap$1;-><init>(Lcom/ushahidi/android/app/IncidentMap;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->mMarkersOnMap:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/IncidentMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ushahidi/android/app/IncidentMap;->populateMap()V

    return-void
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/IncidentMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->reportDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ushahidi/android/app/IncidentMap;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/IncidentMap;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/IncidentMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    iget v0, p0, Lcom/ushahidi/android/app/IncidentMap;->id:I

    return v0
.end method

.method static synthetic access$500()D
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/ushahidi/android/app/IncidentMap;->latitude:D

    return-wide v0
.end method

.method static synthetic access$502(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    .line 53
    sput-wide p0, Lcom/ushahidi/android/app/IncidentMap;->latitude:D

    return-wide p0
.end method

.method static synthetic access$600(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->reportLatitude:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()D
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/ushahidi/android/app/IncidentMap;->longitude:D

    return-wide v0
.end method

.method static synthetic access$702(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    .line 53
    sput-wide p0, Lcom/ushahidi/android/app/IncidentMap;->longitude:D

    return-wide p0
.end method

.method static synthetic access$800(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->reportLongitude:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ushahidi/android/app/IncidentMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentMap;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->reportTitle:Ljava/lang/String;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 464
    :goto_0
    return v2

    .line 429
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/ushahidi/android/app/IncidentMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 433
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;-><init>(Lcom/ushahidi/android/app/IncidentMap;Lcom/ushahidi/android/app/IncidentMap$1;)V

    .line 434
    .local v1, "reportsTask":Lcom/ushahidi/android/app/IncidentMap$ReportsTask;
    iput-object p0, v1, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->appContext:Landroid/content/Context;

    .line 435
    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/ushahidi/android/app/IncidentMap$ReportsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 439
    .end local v1    # "reportsTask":Lcom/ushahidi/android/app/IncidentMap$ReportsTask;
    :pswitch_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    .line 440
    iget-object v4, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    const-string v5, "tab_index"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "tab"

    iget-object v4, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v0, v6}, Lcom/ushahidi/android/app/IncidentMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 447
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/IncidentMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 452
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/About;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/ushahidi/android/app/IncidentMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 454
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/IncidentMap;->setResult(I)V

    goto :goto_0

    .line 458
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/IncidentMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private populateMap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentMap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;

    iget-object v3, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-direct {v2, p0, v0, v3}, Lcom/ushahidi/android/app/IncidentMap$SitesOverlay;-><init>(Lcom/ushahidi/android/app/IncidentMap;Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 372
    const/4 v1, 0x2

    const v2, 0x7f06006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 373
    .local v0, "i":Landroid/view/MenuItem;
    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    const/4 v1, 0x4

    const v2, 0x7f06005d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 376
    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 378
    const/4 v1, 0x3

    const v2, 0x7f06005b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 379
    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 381
    const/4 v1, 0x5

    const v2, 0x7f06005f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 382
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 384
    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 385
    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 387
    const/4 v1, 0x7

    const v2, 0x7f06006c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 388
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 390
    return-void
.end method


# virtual methods
.method public getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 468
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
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public onAddReport(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 180
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 181
    sget v2, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 182
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, "checkinActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/IncidentMap;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/IncidentMap;->setResult(I)V

    .line 192
    .end local v0    # "checkinActivityIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ushahidi/android/app/IncidentMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/IncidentMap;->setResult(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/IncidentMap;->applyMenuChoice(Landroid/view/MenuItem;)Z

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/IncidentMap;->requestWindowFeature(I)Z

    .line 108
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/IncidentMap;->setContentView(I)V

    .line 109
    const v1, 0x7f0a0060

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/IncidentMap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/MapView;

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    .line 110
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mOldIncidents:Ljava/util/List;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    .line 114
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/IncidentMap;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/IncidentMap;->showIncidents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "incidents":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 120
    const-string v1, "report"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    .line 121
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ushahidi/android/app/IncidentMap;->id:I

    .line 122
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->reportTitle:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->reportDescription:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->reportLatitude:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->extras:Landroid/os/Bundle;

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->reportLongitude:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 129
    iget v1, p0, Lcom/ushahidi/android/app/IncidentMap;->id:I

    if-lez v1, :cond_2

    .line 130
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    const-string v2, "0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    const-string v2, "0.0"

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->latitude:D

    .line 133
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->longitude:D

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    sget-wide v2, Lcom/ushahidi/android/app/IncidentMap;->latitude:D

    sget-wide v4, Lcom/ushahidi/android/app/IncidentMap;->longitude:D

    .line 156
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/ushahidi/android/app/IncidentMap;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 158
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 160
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 162
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ushahidi/android/app/IncidentMap;->mMarkersOnMap:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    :goto_1
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->reportLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->latitude:D

    .line 137
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->reportLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->longitude:D

    goto :goto_0

    .line 141
    :cond_2
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    const-string v2, "0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    const-string v2, "0.0"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->latitude:D

    .line 144
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->longitude:D

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 148
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLatitude()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->latitude:D

    .line 149
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 150
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLongitude()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/ushahidi/android/app/IncidentMap;->longitude:D

    goto/16 :goto_0

    .line 165
    :cond_4
    const v1, 0x7f060076

    invoke-static {p0, v1}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/IncidentMap;->populateMenu(Landroid/view/Menu;)V

    .line 330
    return-void
.end method

.method protected onCreateDialog(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 353
    packed-switch p1, :pswitch_data_0

    .line 367
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 355
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 356
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 358
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/IncidentMap;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/IncidentMap$2;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/IncidentMap$2;-><init>(Lcom/ushahidi/android/app/IncidentMap;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 363
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/IncidentMap;->populateMenu(Landroid/view/Menu;)V

    .line 336
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 208
    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapController;->zoomIn()Z

    .line 228
    :goto_0
    return v0

    .line 212
    :cond_0
    const/16 v1, 0x2b

    if-ne p1, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapController;->zoomOut()Z

    goto :goto_0

    .line 216
    :cond_1
    const/16 v1, 0x30

    if-ne p1, v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    goto :goto_0

    .line 221
    :cond_2
    const/16 v1, 0x29

    if-ne p1, v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/IncidentMap;->applyMenuChoice(Landroid/view/MenuItem;)Z

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
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 316
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->mNewIncidents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentMap;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentMap;->mMarkersOnMap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :cond_0
    return-void
.end method

.method public showIncidents(Ljava/lang/String;)Ljava/util/List;
    .locals 24
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
    .line 242
    const v22, 0x7f060006

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/IncidentMap;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 243
    sget-object v22, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual/range {v22 .. v22}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllIncidents()Landroid/database/Cursor;

    move-result-object v4

    .line 247
    .local v4, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 248
    const-string v22, "_id"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 249
    .local v9, "idIndex":I
    const-string v22, "incident_title"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 250
    .local v20, "titleIndex":I
    const-string v22, "incident_date"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 251
    .local v5, "dateIndex":I
    const-string v22, "incident_verified"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 252
    .local v21, "verifiedIndex":I
    const-string v22, "incident_loc_name"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 254
    .local v15, "locationIndex":I
    const-string v22, "incident_desc"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 256
    .local v6, "descIndex":I
    const-string v22, "incident_categories"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 258
    .local v3, "categoryIndex":I
    const-string v22, "incident_media"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 260
    .local v17, "mediaIndex":I
    const-string v22, "incident_image"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 262
    .local v11, "imageIndex":I
    const-string v22, "incident_loc_latitude"

    .line 263
    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 265
    .local v13, "latitudeIndex":I
    const-string v22, "incident_loc_longitude"

    .line 266
    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 270
    .local v16, "longitudeIndex":I
    :cond_0
    new-instance v12, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-direct {v12}, Lcom/ushahidi/android/app/data/IncidentsData;-><init>()V

    .line 271
    .local v12, "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/IncidentMap;->mOldIncidents:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v8

    .line 274
    .local v8, "id":I
    invoke-virtual {v12, v8}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentId(I)V

    .line 276
    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/ushahidi/android/app/util/Util;->capitalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 277
    .local v19, "title":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentTitle(Ljava/lang/String;)V

    .line 279
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "description":Ljava/lang/String;
    invoke-virtual {v12, v7}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDesc(Ljava/lang/String;)V

    .line 282
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "categories":Ljava/lang/String;
    invoke-virtual {v12, v2}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentCategories(Ljava/lang/String;)V

    .line 285
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, "location":Ljava/lang/String;
    invoke-virtual {v12, v14}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLongitude(Ljava/lang/String;)V

    .line 288
    const v22, 0x7f060089

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/IncidentMap;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/ushahidi/android/app/util/Util;->joinString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDate(Ljava/lang/String;)V

    .line 291
    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 292
    .local v18, "thumbnail":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentThumbnail(Ljava/lang/String;)V

    .line 294
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, "image":Ljava/lang/String;
    invoke-virtual {v12, v10}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentImage(Ljava/lang/String;)V

    .line 297
    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentVerified(I)V

    .line 299
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLatitude(Ljava/lang/String;)V

    .line 300
    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLongitude(Ljava/lang/String;)V

    .line 302
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_0

    .line 305
    .end local v2    # "categories":Ljava/lang/String;
    .end local v3    # "categoryIndex":I
    .end local v5    # "dateIndex":I
    .end local v6    # "descIndex":I
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "id":I
    .end local v9    # "idIndex":I
    .end local v10    # "image":Ljava/lang/String;
    .end local v11    # "imageIndex":I
    .end local v12    # "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    .end local v13    # "latitudeIndex":I
    .end local v14    # "location":Ljava/lang/String;
    .end local v15    # "locationIndex":I
    .end local v16    # "longitudeIndex":I
    .end local v17    # "mediaIndex":I
    .end local v18    # "thumbnail":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "titleIndex":I
    .end local v21    # "verifiedIndex":I
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/IncidentMap;->mOldIncidents:Ljava/util/List;

    move-object/from16 v22, v0

    return-object v22

    .line 245
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v22, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchIncidentsByCategories(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .restart local v4    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0
.end method
