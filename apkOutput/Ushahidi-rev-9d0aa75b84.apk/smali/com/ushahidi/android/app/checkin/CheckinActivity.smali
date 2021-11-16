.class public Lcom/ushahidi/android/app/checkin/CheckinActivity;
.super Lcom/google/android/maps/MapActivity;
.source "CheckinActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/checkin/CheckinActivity$MapMarker;
    }
.end annotation


# static fields
.field private static final ABOUT:I = 0x7

.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final DIALOG_CHOOSE_IMAGE_METHOD:I = 0x7

.field private static final GOTOHOME:I = 0x0

.field private static final HOME:I = 0x2

.field private static final INCIDENTS:I = 0x2

.field private static final INCIDENT_MAP:I = 0x4

.field private static final INCIDENT_REFRESH:I = 0x5

.field private static final LIST_CHECKINS:I = 0x2

.field private static final LIST_INCIDENT:I = 0x3

.field private static final MAP_CHECKINS:I = 0x1

.field private static final REQUEST_CODE_ABOUT:I = 0x4

.field private static final REQUEST_CODE_CAMERA:I = 0x5

.field private static final REQUEST_CODE_IMAGE:I = 0x8

.field private static final REQUEST_CODE_SETTINGS:I = 0x3

.field private static final SETTINGS:I = 0x6

.field private static final VIEW_SEARCH:I = 0x9

.field private static latitude:D

.field private static longitude:D

.field private static random:Ljava/util/Random;


# instance fields
.field private activityTitle:Landroid/widget/TextView;

.field private checkinButton:Landroid/widget/Button;

.field private checkinDetails:Ljava/lang/String;

.field private checkinMessageText:Landroid/widget/EditText;

.field private checkinsBundle:Landroid/os/Bundle;

.field private emailAddress:Landroid/widget/EditText;

.field private errorMessage:Ljava/lang/String;

.field private firstName:Landroid/widget/EditText;

.field private jsonResponse:Ljava/lang/String;

.field private jsonServices:Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

.field private lastName:Landroid/widget/EditText;

.field private lblContact:Landroid/widget/TextView;

.field private lblEmail:Landroid/widget/TextView;

.field private lblFirstName:Landroid/widget/TextView;

.field private lblLastName:Landroid/widget/TextView;

.field private location:Landroid/location/Location;

.field private mBundle:Landroid/os/Bundle;

.field private mCheckImgPrev:Landroid/widget/ImageView;

.field private mCheckinLocation:Landroid/widget/TextView;

.field private mError:Z

.field private mErrorMessage:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFilename:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLocationMgr:Landroid/location/LocationManager;

.field final mPostCheckin:Ljava/lang/Runnable;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSelectedPhotoText:Landroid/widget/TextView;

.field private mapController:Lcom/google/android/maps/MapController;

.field private mapView:Lcom/google/android/maps/MapView;

.field private postCheckinJsonErrorCode:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private selectedPhoto:Ljava/lang/String;

.field private uploadPhotoButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->CLASS_TAG:Ljava/lang/String;

    .line 501
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mFilename:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->selectedPhoto:Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinsBundle:Landroid/os/Bundle;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->postCheckinJsonErrorCode:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->jsonResponse:Ljava/lang/String;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->errorMessage:Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mError:Z

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mErrorMessage:Ljava/lang/String;

    .line 608
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$8;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mPostCheckin:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinMessageText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinDetails:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()D
    .locals 2

    .prologue
    .line 67
    sget-wide v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->latitude:D

    return-wide v0
.end method

.method static synthetic access$1200()D
    .locals 2

    .prologue
    .line 67
    sget-wide v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->longitude:D

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mError:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ushahidi/android/app/checkin/CheckinActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mError:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->performCheckin()V

    return-void
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->selectedPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->jsonResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->jsonResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->jsonServices:Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ushahidi/android/app/checkin/CheckinActivity;Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;)Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;
    .param p1, "x1"    # Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->jsonServices:Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->postCheckinJsonErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->postCheckinJsonErrorCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->errorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ushahidi/android/app/checkin/CheckinActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/CheckinActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 411
    :goto_0
    return v1

    .line 378
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, "launchPreferencesIntent":Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 380
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setResult(I)V

    goto :goto_0

    .line 384
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinsBundle:Landroid/os/Bundle;

    const-string v3, "tab_index"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    const-string v2, "tab"

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 391
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 393
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setResult(I)V

    goto :goto_0

    .line 397
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/About;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 399
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setResult(I)V

    goto :goto_0

    .line 403
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ushahidi/android/app/Settings;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 407
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private centerLocation(Lcom/google/android/maps/GeoPoint;)V
    .locals 4
    .param p1, "centerGeoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 681
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 685
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->latitude:D

    .line 686
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->longitude:D

    .line 688
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->placeMarker(II)V

    .line 690
    return-void
.end method

.method private performCheckin()V
    .locals 6

    .prologue
    .line 594
    invoke-static {p0}, Lcom/ushahidi/android/app/util/Util;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    .line 596
    .local v2, "domain":Ljava/lang/String;
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->firstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, "firstname":Ljava/lang/String;
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "lastname":Ljava/lang/String;
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->emailAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "email":Ljava/lang/String;
    invoke-static {p0}, Lcom/ushahidi/android/app/checkin/CheckinUtil;->IMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "imei":Ljava/lang/String;
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinMessageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinDetails:Ljava/lang/String;

    move-object v0, p0

    .line 601
    invoke-virtual/range {v0 .. v5}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->postCheckin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "firstname":Ljava/lang/String;
    .end local v4    # "lastname":Ljava/lang/String;
    .end local v5    # "email":Ljava/lang/String;
    :goto_0
    return-void

    .line 603
    :cond_0
    const v0, 0x7f060072

    invoke-static {p0, v0}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private placeMarker(II)V
    .locals 4
    .param p1, "markerLatitude"    # I
    .param p2, "markerLongitude"    # I

    .prologue
    const/4 v3, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 668
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 669
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 671
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 672
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/checkin/CheckinActivity$MapMarker;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/ushahidi/android/app/checkin/CheckinActivity$MapMarker;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;Landroid/graphics/drawable/Drawable;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    return-void
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 353
    const/4 v1, 0x2

    const v2, 0x7f06006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 354
    .local v0, "i":Landroid/view/MenuItem;
    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    const/4 v1, 0x3

    const v2, 0x7f060020

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 357
    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 359
    const/4 v1, 0x4

    const v2, 0x7f06005e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 360
    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 362
    const/4 v1, 0x5

    const v2, 0x7f06005f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 363
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 365
    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 366
    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 368
    const/4 v1, 0x7

    const v2, 0x7f06006c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 369
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 371
    return-void
.end method

.method protected static randomString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 504
    sget-object v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDeviceLocation()V
    .locals 10

    .prologue
    .line 736
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    .line 738
    const-wide/16 v2, 0x7530

    .line 742
    .local v2, "updateTimeMsec":J
    :try_start_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    .line 743
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 742
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v9

    .line 746
    .local v9, "low":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    .line 747
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 746
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v8

    .line 749
    .local v8, "high":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 751
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v8}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v8    # "high":Landroid/location/LocationProvider;
    .end local v9    # "low":Landroid/location/LocationProvider;
    :cond_0
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v6

    .line 756
    .local v6, "ex1":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 760
    :catch_1
    move-exception v7

    .line 761
    .local v7, "ex2":Ljava/lang/Exception;
    sget-object v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dismissCheckinProgressDialog()V
    .locals 1

    .prologue
    .line 571
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 573
    sget-boolean v0, Lcom/ushahidi/android/app/checkin/LocationServices;->locationSet:Z

    if-nez v0, :cond_0

    .line 576
    const v0, 0x7f060022

    invoke-static {p0, v0}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 587
    :cond_0
    return-void
.end method

.method public getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 676
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
    .line 560
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 562
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 563
    return-void
.end method

.method public goToCheckins()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 498
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setResult(I)V

    .line 499
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x1

    .line 416
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 490
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 422
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 426
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setRequestedOrientation(I)V

    .line 428
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mBundle:Landroid/os/Bundle;

    .line 430
    if-eqz p3, :cond_0

    .line 431
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mExtras:Landroid/os/Bundle;

    .line 432
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 433
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mExtras:Landroid/os/Bundle;

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mBundle:Landroid/os/Bundle;

    .line 435
    :cond_1
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->selectedPhoto:Ljava/lang/String;

    .line 437
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ushahidi/android/app/checkin/NetworkServices;->fileName:Ljava/lang/String;

    .line 438
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mSelectedPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mCheckImgPrev:Landroid/widget/ImageView;

    sget-object v5, Lcom/ushahidi/android/app/checkin/NetworkServices;->fileName:Ljava/lang/String;

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ushahidi/android/app/ImageManager;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 449
    :pswitch_2
    if-ne p2, v4, :cond_0

    .line 453
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 454
    .local v3, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 457
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 464
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v1, "byteArrayos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 468
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_pic_upload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->randomString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mFilename:Ljava/lang/String;

    .line 477
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mFilename:Ljava/lang/String;

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mFilename:Ljava/lang/String;

    sput-object v4, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    .line 479
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mFilename:Ljava/lang/String;

    iput-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->selectedPhoto:Ljava/lang/String;

    .line 481
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->selectedPhoto:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mSelectedPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mCheckImgPrev:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 484
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mCheckImgPrev:Landroid/widget/ImageView;

    sget-object v5, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ushahidi/android/app/ImageManager;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 458
    .end local v1    # "byteArrayos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_0

    .line 460
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 461
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 469
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "byteArrayos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    goto/16 :goto_0

    .line 471
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    .line 472
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClickHome(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 549
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->goHome(Landroid/content/Context;)V

    .line 550
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->applyMenuChoice(Landroid/view/MenuItem;)Z

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
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 178
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->requestWindowFeature(I)Z

    .line 180
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setContentView(I)V

    .line 181
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 185
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinButton:Landroid/widget/Button;

    .line 186
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->uploadPhotoButton:Landroid/widget/Button;

    .line 187
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinMessageText:Landroid/widget/EditText;

    .line 188
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->firstName:Landroid/widget/EditText;

    .line 189
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lastName:Landroid/widget/EditText;

    .line 190
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->emailAddress:Landroid/widget/EditText;

    .line 191
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblFirstName:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblLastName:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblEmail:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblContact:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mCheckImgPrev:Landroid/widget/ImageView;

    .line 196
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mSelectedPhotoText:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mCheckinLocation:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mSelectedPhotoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->activityTitle:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->activityTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->activityTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mHandler:Landroid/os/Handler;

    .line 207
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 209
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mapController:Lcom/google/android/maps/MapController;

    .line 211
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mCheckinLocation:Landroid/widget/TextView;

    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setDeviceLocation()V

    .line 215
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinMessageText:Landroid/widget/EditText;

    new-instance v1, Lcom/ushahidi/android/app/checkin/CheckinActivity$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$1;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->email:Ljava/lang/String;

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblContact:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_1
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblFirstName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->firstName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 239
    :cond_2
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblLastName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lastName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 244
    :cond_3
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lblEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->emailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->firstName:Landroid/widget/EditText;

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->lastName:Landroid/widget/EditText;

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->emailAddress:Landroid/widget/EditText;

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->checkinButton:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$2;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->uploadPhotoButton:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/checkin/CheckinActivity$3;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$3;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ushahidi/android/app/checkin/CheckinActivity$4;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$4;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->populateMenu(Landroid/view/Menu;)V

    .line 329
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 509
    packed-switch p1, :pswitch_data_0

    .line 545
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 511
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 512
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v1, 0x7f06002a

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 514
    const v1, 0x7f060045

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/checkin/CheckinActivity$5;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$5;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 523
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/checkin/CheckinActivity$6;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$6;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 529
    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/checkin/CheckinActivity$7;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity$7;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 540
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->populateMenu(Landroid/view/Menu;)V

    .line 335
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 310
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->stopLocating()V

    .line 312
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 790
    if-eqz p1, :cond_0

    .line 791
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->location:Landroid/location/Location;

    .line 793
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->latitude:D

    .line 794
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->longitude:D

    .line 796
    sget-wide v0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->latitude:D

    sget-wide v2, Lcom/ushahidi/android/app/checkin/CheckinActivity;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->centerLocation(Lcom/google/android/maps/GeoPoint;)V

    .line 797
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mCheckinLocation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/ushahidi/android/app/checkin/CheckinActivity;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/ushahidi/android/app/checkin/CheckinActivity;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->stopLocating()V

    .line 802
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->applyMenuChoice(Landroid/view/MenuItem;)Z

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

.method protected onPause()V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 317
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 808
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 814
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->selectedPhoto:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->uploadPhotoButton:Landroid/widget/Button;

    const v1, 0x7f060015

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_0
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 305
    return-void
.end method

.method protected onSearchDeployments()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setResult(I)V

    .line 323
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStart()V

    .line 297
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 820
    return-void
.end method

.method public postCheckin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "imei"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "firstname"    # Ljava/lang/String;
    .param p4, "lastname"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 647
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 648
    const v1, 0x7f060024

    .line 649
    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06001f

    .line 650
    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/checkin/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 651
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ushahidi/android/app/checkin/CheckinActivity$9;-><init>(Lcom/ushahidi/android/app/checkin/CheckinActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 662
    return-void
.end method

.method public stopLocating()V
    .locals 3

    .prologue
    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/CheckinActivity;->mLocationMgr:Landroid/location/LocationManager;

    .line 780
    :goto_1
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/checkin/CheckinActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 777
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 778
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/checkin/CheckinActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
