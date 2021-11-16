.class public Lcom/ushahidi/android/app/ViewIncidents;
.super Lcom/google/android/maps/MapActivity;
.source "ViewIncidents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;,
        Lcom/ushahidi/android/app/ViewIncidents$MapMarker;
    }
.end annotation


# instance fields
.field private activityTitle:Landroid/widget/TextView;

.field private body:Landroid/widget/TextView;

.field private category:Landroid/widget/TextView;

.field private date:Landroid/widget/TextView;

.field private defaultLocation:Lcom/google/android/maps/GeoPoint;

.field private extras:Landroid/os/Bundle;

.field private id:I

.field private image:Ljava/lang/String;

.field private imageAdapter:Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

.field private images:[Ljava/lang/String;

.field private location:Landroid/widget/TextView;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mapController:Lcom/google/android/maps/MapController;

.field private mapView:Lcom/google/android/maps/MapView;

.field private media:Ljava/lang/String;

.field private photos:Landroid/widget/TextView;

.field private photosBundle:Landroid/os/Bundle;

.field private reportLatitude:Ljava/lang/String;

.field private reportLongitude:Ljava/lang/String;

.field private status:Landroid/widget/TextView;

.field private thumbnailAdapter:Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

.field private thumbnails:[Ljava/lang/String;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ViewIncidents;->photosBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/ViewIncidents;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/ViewIncidents;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ViewIncidents;->previewImage(I)V

    return-void
.end method

.method private centerLocation(Lcom/google/android/maps/GeoPoint;)V
    .locals 2
    .param p1, "centerGeoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ushahidi/android/app/ViewIncidents;->mapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 246
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ushahidi/android/app/ViewIncidents;->placeMarker(II)V

    .line 248
    return-void
.end method

.method private placeMarker(II)V
    .locals 4
    .param p1, "markerLatitude"    # I
    .param p2, "markerLongitude"    # I

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ViewIncidents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 235
    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 236
    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/ViewIncidents$MapMarker;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/ushahidi/android/app/ViewIncidents$MapMarker;-><init>(Lcom/ushahidi/android/app/ViewIncidents;Landroid/graphics/drawable/Drawable;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method private previewImage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents;->photosBundle:Landroid/os/Bundle;

    const-string v2, "position"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents;->photosBundle:Landroid/os/Bundle;

    const-string v2, "images"

    iget-object v3, p0, Lcom/ushahidi/android/app/ViewIncidents;->thumbnails:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/ui/ImagePreviewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photos"

    iget-object v2, p0, Lcom/ushahidi/android/app/ViewIncidents;->photosBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/ViewIncidents;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/ushahidi/android/app/ViewIncidents;->setResult(ILandroid/content/Intent;)V

    .line 226
    return-void
.end method


# virtual methods
.method public getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 240
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
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public imageBackgroundColor()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    sget-object v2, Lcom/ushahidi/android/app/R$styleable;->PhotoGallery:[I

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/ViewIncidents;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 290
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 292
    .local v1, "mGalleryItemBackground":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    return v1
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 257
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, "i":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 259
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-object v0
.end method

.method public onClickHome(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/ViewIncidents;->goHome(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, -0x1000000

    .line 107
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v4, 0x7f030016

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->setContentView(I)V

    .line 109
    const v4, 0x7f0a008f

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/MapView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->mapView:Lcom/google/android/maps/MapView;

    .line 110
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ViewIncidents;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 112
    .local v3, "incidents":Landroid/os/Bundle;
    const-string v4, "incidents"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    .line 113
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v5, "latitude"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->reportLatitude:Ljava/lang/String;

    .line 114
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v5, "longitude"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->reportLongitude:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->id:I

    .line 117
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v5, "status"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f06009c

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "iStatus":Ljava/lang/String;
    :goto_0
    const v4, 0x7f0a000c

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->title:Landroid/widget/TextView;

    .line 120
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->title:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v4, 0x7f0a0008

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->activityTitle:Landroid/widget/TextView;

    .line 124
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->activityTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->activityTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushahidi/android/app/ViewIncidents;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    const v4, 0x7f0a009a

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->category:Landroid/widget/TextView;

    .line 128
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->category:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->category:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v6, "category"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v4, 0x7f0a008c

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->date:Landroid/widget/TextView;

    .line 132
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->date:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->date:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v6, "date"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v4, 0x7f0a0090

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->location:Landroid/widget/TextView;

    .line 136
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->location:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->location:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v4, 0x7f0a0098

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->body:Landroid/widget/TextView;

    .line 140
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->body:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->body:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v6, "desc"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v4, 0x7f0a0096

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->status:Landroid/widget/TextView;

    .line 144
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v5, "media"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->media:Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->extras:Landroid/os/Bundle;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->image:Ljava/lang/String;

    .line 150
    new-instance v4, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

    invoke-direct {v4, p0, p0}, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;-><init>(Lcom/ushahidi/android/app/ViewIncidents;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->imageAdapter:Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

    .line 152
    new-instance v4, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

    invoke-direct {v4, p0, p0}, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;-><init>(Lcom/ushahidi/android/app/ViewIncidents;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->thumbnailAdapter:Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

    .line 154
    const v4, 0x7f0a005a

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 155
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v4, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 156
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->mSwitcher:Landroid/widget/ImageSwitcher;

    const/high16 v5, 0x10a0000

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->mSwitcher:Landroid/widget/ImageSwitcher;

    const v5, 0x10a0001

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 159
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->media:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 161
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->media:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->thumbnails:[Ljava/lang/String;

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->thumbnails:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->thumbnailAdapter:Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

    iget-object v4, v4, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->mImageIds:Ljava/util/Vector;

    sget-object v5, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/ushahidi/android/app/ViewIncidents;->thumbnails:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Lcom/ushahidi/android/app/ImageManager;->getImages(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v1    # "i":I
    .end local v2    # "iStatus":Ljava/lang/String;
    :cond_1
    const v4, 0x7f06009d

    .line 118
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 166
    .restart local v1    # "i":I
    .restart local v2    # "iStatus":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->image:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->images:[Ljava/lang/String;

    .line 168
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->images:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 170
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->imageAdapter:Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

    iget-object v4, v4, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->mImageIds:Ljava/util/Vector;

    sget-object v5, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/ushahidi/android/app/ViewIncidents;->images:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Lcom/ushahidi/android/app/ImageManager;->getImages(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    .end local v1    # "i":I
    :cond_3
    const v4, 0x7f0a009b

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->photos:Landroid/widget/TextView;

    .line 175
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->photos:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_4
    const v4, 0x7f0a0059

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 180
    .local v0, "g":Landroid/widget/Gallery;
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->thumbnailAdapter:Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 181
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 182
    new-instance v4, Lcom/ushahidi/android/app/ViewIncidents$1;

    invoke-direct {v4, p0}, Lcom/ushahidi/android/app/ViewIncidents$1;-><init>(Lcom/ushahidi/android/app/ViewIncidents;)V

    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->mapController:Lcom/google/android/maps/MapController;

    .line 190
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->reportLatitude:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/ushahidi/android/app/ViewIncidents;->reportLongitude:Ljava/lang/String;

    .line 191
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 190
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/ushahidi/android/app/ViewIncidents;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->defaultLocation:Lcom/google/android/maps/GeoPoint;

    .line 192
    iget-object v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->defaultLocation:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v4}, Lcom/ushahidi/android/app/ViewIncidents;->centerLocation(Lcom/google/android/maps/GeoPoint;)V

    .line 194
    return-void
.end method

.method public onImageClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    sget v0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photoPosition:I

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/ViewIncidents;->previewImage(I)V

    .line 216
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sput p3, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photoPosition:I

    .line 269
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/reports/view/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ushahidi/android/app/ViewIncidents;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "reportUrl":Ljava/lang/String;
    const v3, 0x7f06009b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ushahidi/android/app/ViewIncidents;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/ushahidi/android/app/ViewIncidents;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "shareString":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const v3, 0x7f0600a2

    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/ViewIncidents;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/ViewIncidents;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method
