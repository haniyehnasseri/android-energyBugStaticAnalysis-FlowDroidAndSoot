.class public Lcom/ushahidi/android/app/checkin/ViewCheckins;
.super Lcom/google/android/maps/MapActivity;
.source "ViewCheckins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;
    }
.end annotation


# instance fields
.field private activityTitle:Landroid/widget/TextView;

.field private checkinLatitude:Ljava/lang/String;

.field private checkinLongitude:Ljava/lang/String;

.field private date:Landroid/widget/TextView;

.field private defaultLocation:Lcom/google/android/maps/GeoPoint;

.field private extras:Landroid/os/Bundle;

.field private fileName:Ljava/lang/String;

.field private image:Landroid/widget/ImageView;

.field private mapController:Lcom/google/android/maps/MapController;

.field private mapView:Lcom/google/android/maps/MapView;

.field private message:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field private photo:Landroid/widget/TextView;

.field private photoLayout:Landroid/widget/LinearLayout;

.field private photosBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photosBundle:Landroid/os/Bundle;

    return-void
.end method

.method private centerLocation(Lcom/google/android/maps/GeoPoint;)V
    .locals 2
    .param p1, "centerGeoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->mapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 204
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->placeMarker(II)V

    .line 206
    return-void
.end method

.method private placeMarker(II)V
    .locals 4
    .param p1, "markerLatitude"    # I
    .param p2, "markerLongitude"    # I

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 193
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 194
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/ushahidi/android/app/checkin/ViewCheckins$MapMarker;-><init>(Lcom/ushahidi/android/app/checkin/ViewCheckins;Landroid/graphics/drawable/Drawable;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method private previewImage(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 178
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    .line 179
    .local v0, "images":[Ljava/lang/String;
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photosBundle:Landroid/os/Bundle;

    const-string v3, "images"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/ui/ImagePreviewer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "photos"

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photosBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1, v4}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->setResult(ILandroid/content/Intent;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 198
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    mul-double v2, p1, v4

    double-to-int v1, v2

    mul-double v2, p3, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public goHome(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onClickHome(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->goHome(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    .line 84
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->setContentView(I)V

    .line 88
    const v1, 0x7f0a008f

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/MapView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->mapView:Lcom/google/android/maps/MapView;

    .line 89
    const v1, 0x7f0a0094

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->image:Landroid/widget/ImageView;

    .line 90
    const v1, 0x7f0a0092

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photo:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0a0093

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photoLayout:Landroid/widget/LinearLayout;

    .line 92
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "incidents":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const-string v1, "checkins"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photosBundle:Landroid/os/Bundle;

    .line 97
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->checkinLatitude:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->checkinLongitude:Ljava/lang/String;

    .line 99
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->activityTitle:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->activityTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->activityTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    const v1, 0x7f0a0043

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->name:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v1, 0x7f0a008c

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->date:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->date:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->date:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    const-string v3, "date"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v1, 0x7f0a008a

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->message:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->message:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->message:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->extras:Landroid/os/Bundle;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->fileName:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->photo:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->image:Landroid/widget/ImageView;

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ushahidi/android/app/ImageManager;->getImages(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->mapController:Lcom/google/android/maps/MapController;

    .line 122
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->checkinLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->checkinLongitude:Ljava/lang/String;

    .line 123
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 122
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->defaultLocation:Lcom/google/android/maps/GeoPoint;

    .line 124
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->defaultLocation:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v1}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->centerLocation(Lcom/google/android/maps/GeoPoint;)V

    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onImageClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->fileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->previewImage(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 134
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 143
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    .line 144
    .local v1, "reportUrl":Ljava/lang/String;
    const v3, 0x7f06009b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ushahidi/android/app/checkin/ViewCheckins;->name:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "shareString":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const v3, 0x7f0600a2

    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/checkin/ViewCheckins;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 138
    return-void
.end method
