.class public Lcom/ushahidi/android/app/AddIncident;
.super Lcom/google/android/maps/MapActivity;
.source "AddIncident.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/AddIncident$MapMarker;,
        Lcom/ushahidi/android/app/AddIncident$AddReportsTask;
    }
.end annotation


# static fields
.field private static final ABOUT:I = 0x7

.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final DATE_DIALOG_ID:I = 0x5

.field private static final DIALOG_CHOOSE_IMAGE_METHOD:I = 0x2

.field private static final DIALOG_ERROR_NETWORK:I = 0x0

.field private static final DIALOG_ERROR_SAVING:I = 0x1

.field private static final DIALOG_MULTIPLE_CATEGORY:I = 0x3

.field private static final GOTOHOME:I = 0x0

.field private static final HOME:I = 0x2

.field private static final INCIDENT_MAP:I = 0x4

.field private static final INCIDENT_REFRESH:I = 0x5

.field private static final LIST_INCIDENT:I = 0x3

.field private static final LIST_INCIDENTS:I = 0x2

.field private static final MAP_INCIDENTS:I = 0x1

.field private static final REQUEST_CODE_ABOUT:I = 0x3

.field private static final REQUEST_CODE_CAMERA:I = 0x5

.field private static final REQUEST_CODE_IMAGE:I = 0x4

.field private static final REQUEST_CODE_SETTINGS:I = 0x2

.field private static final SETTINGS:I = 0x6

.field private static final TIME_DIALOG_ID:I = 0x4

.field private static final UNCATEGORIZED_CATEGORY_ID:Ljava/lang/String; = "4"

.field private static final UNCATEGORIZED_CATEGORY_TITLE:Ljava/lang/String; = "uncategorized"

.field private static final VIEW_MAP:I = 0x1

.field private static final VIEW_SEARCH:I = 0x2

.field private static final mHandler:Landroid/os/Handler;

.field private static random:Ljava/util/Random;

.field private static sLatitude:D

.field private static sLongitude:D


# instance fields
.field private activityTitle:Landroid/widget/TextView;

.field private mBtnAddCategory:Landroid/widget/Button;

.field private mBtnPicture:Landroid/widget/Button;

.field private mBtnSend:Landroid/widget/Button;

.field private mBundle:Landroid/os/Bundle;

.field private mCategoriesId:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesTitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCounter:I

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateToSubmit:Ljava/lang/String;

.field private mDay:I

.field private mError:Z

.field private mErrorMessage:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFilename:Ljava/lang/String;

.field private mFoundAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mGc:Landroid/location/Geocoder;

.field private mHour:I

.field private mIncidentDate:Landroid/widget/TextView;

.field private mIncidentDesc:Landroid/widget/EditText;

.field private mIncidentLocation:Landroid/widget/EditText;

.field private mIncidentTitle:Landroid/widget/EditText;

.field private mLocationMgr:Landroid/location/LocationManager;

.field private mMinute:I

.field private mMonth:I

.field private mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPickDate:Landroid/widget/Button;

.field private mPickTime:Landroid/widget/Button;

.field private mReportLocation:Landroid/widget/TextView;

.field private mSelectedCategories:Landroid/widget/TextView;

.field private mSelectedPhoto:Landroid/widget/ImageView;

.field final mSendIncidentOnline:Ljava/lang/Runnable;

.field final mSentIncidentFail:Ljava/lang/Runnable;

.field final mSentIncidentOffline:Ljava/lang/Runnable;

.field final mSentIncidentOfflineFail:Ljava/lang/Runnable;

.field final mSentIncidentOfflineSuccess:Ljava/lang/Runnable;

.field final mSentIncidentSuccess:Ljava/lang/Runnable;

.field private mTimeDigits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mVectorCategories:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mapController:Lcom/google/android/maps/MapController;

.field private mapView:Lcom/google/android/maps/MapView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 143
    sput-wide v0, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    .line 145
    sput-wide v0, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/AddIncident;->mHandler:Landroid/os/Handler;

    .line 215
    const-class v0, Lcom/ushahidi/android/app/AddIncident;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/AddIncident;->CLASS_TAG:Ljava/lang/String;

    .line 665
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/AddIncident;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 141
    iput v1, p0, Lcom/ushahidi/android/app/AddIncident;->mCounter:I

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mErrorMessage:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mDateToSubmit:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mFilename:Ljava/lang/String;

    .line 153
    iput-boolean v1, p0, Lcom/ushahidi/android/app/AddIncident;->mError:Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mapView:Lcom/google/android/maps/MapView;

    .line 205
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mVectorCategories:Ljava/util/Vector;

    .line 207
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesId:Ljava/util/Vector;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesTitle:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    .line 672
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$9;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$9;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentOffline:Ljava/lang/Runnable;

    .line 683
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$10;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$10;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentFail:Ljava/lang/Runnable;

    .line 689
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$11;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$11;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentOfflineFail:Ljava/lang/Runnable;

    .line 695
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$12;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$12;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentOfflineSuccess:Ljava/lang/Runnable;

    .line 703
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$13;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$13;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mSendIncidentOnline:Ljava/lang/Runnable;

    .line 715
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$14;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$14;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mSentIncidentSuccess:Ljava/lang/Runnable;

    .line 905
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$22;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$22;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 915
    new-instance v0, Lcom/ushahidi/android/app/AddIncident$23;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/AddIncident$23;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesTitle:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedCategories:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/ushahidi/android/app/AddIncident;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/ushahidi/android/app/AddIncident;->mYear:I

    return p1
.end method

.method static synthetic access$1302(Lcom/ushahidi/android/app/AddIncident;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/ushahidi/android/app/AddIncident;->mMonth:I

    return p1
.end method

.method static synthetic access$1402(Lcom/ushahidi/android/app/AddIncident;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/ushahidi/android/app/AddIncident;->mDay:I

    return p1
.end method

.method static synthetic access$1500(Lcom/ushahidi/android/app/AddIncident;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/ushahidi/android/app/AddIncident;->updateDisplay()V

    return-void
.end method

.method static synthetic access$1602(Lcom/ushahidi/android/app/AddIncident;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/ushahidi/android/app/AddIncident;->mHour:I

    return p1
.end method

.method static synthetic access$1702(Lcom/ushahidi/android/app/AddIncident;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/ushahidi/android/app/AddIncident;->mMinute:I

    return p1
.end method

.method static synthetic access$1800(Lcom/ushahidi/android/app/AddIncident;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/ushahidi/android/app/AddIncident;->clearFields()V

    return-void
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/AddIncident;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/AddIncident;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/ushahidi/android/app/AddIncident;->mError:Z

    return v0
.end method

.method static synthetic access$302(Lcom/ushahidi/android/app/AddIncident;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/ushahidi/android/app/AddIncident;->mError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/AddIncident;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ushahidi/android/app/AddIncident;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mVectorCategories:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$708(Lcom/ushahidi/android/app/AddIncident;)I
    .locals 2
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget v0, p0, Lcom/ushahidi/android/app/AddIncident;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushahidi/android/app/AddIncident;->mCounter:I

    return v0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/ushahidi/android/app/AddIncident;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ushahidi/android/app/AddIncident;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/AddIncident;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesId:Ljava/util/Vector;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 370
    :goto_0
    return v1

    .line 340
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    .local v0, "launchPreferencesIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    .line 342
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/AddIncident;->setResult(I)V

    goto :goto_0

    .line 346
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/ViewIncidents;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 351
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    .line 353
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/AddIncident;->setResult(I)V

    goto :goto_0

    .line 357
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/About;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    .line 359
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/AddIncident;->setResult(I)V

    goto :goto_0

    .line 363
    .end local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ushahidi/android/app/Settings;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    .restart local v0    # "launchPreferencesIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 337
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
    .locals 6
    .param p1, "centerGeoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 1180
    if-eqz p1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 1185
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    .line 1186
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    .line 1187
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    sget-wide v2, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    sget-wide v4, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ushahidi/android/app/AddIncident;->getLocationFromLatLon(DD)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ushahidi/android/app/AddIncident;->placeMarker(II)V

    .line 1191
    :cond_0
    return-void
.end method

.method private clearFields()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 559
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnPicture:Landroid/widget/Button;

    .line 560
    const v1, 0x7f0a0025

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnAddCategory:Landroid/widget/Button;

    .line 561
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mVectorCategories:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 565
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedCategories:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 568
    iput v3, p0, Lcom/ushahidi/android/app/AddIncident;->mCounter:I

    .line 569
    invoke-direct {p0}, Lcom/ushahidi/android/app/AddIncident;->updateDisplay()V

    .line 572
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/AddIncident;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 573
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "title"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    const-string v1, "desc"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 575
    const-string v1, "date"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 578
    return-void
.end method

.method private getLocationFromLatLon(DD)Ljava/lang/String;
    .locals 9
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 1076
    const-string v8, ""

    .line 1079
    .local v8, "formattedAddress":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mGc:Landroid/location/Geocoder;

    const/4 v6, 0x5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mFoundAddresses:Ljava/util/List;

    .line 1080
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mFoundAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mFoundAddresses:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 1083
    .local v0, "address":Landroid/location/Address;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1084
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 1093
    .end local v0    # "address":Landroid/location/Address;
    :goto_0
    return-object v1

    .line 1088
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v7

    .line 1092
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1093
    const-string v1, ""

    goto :goto_0
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 378
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnPicture:Landroid/widget/Button;

    .line 379
    const v1, 0x7f0a0025

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnAddCategory:Landroid/widget/Button;

    .line 380
    const v1, 0x7f0a001b

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnSend:Landroid/widget/Button;

    .line 381
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDate:Landroid/widget/TextView;

    .line 382
    const v1, 0x7f0a001f

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mPickDate:Landroid/widget/Button;

    .line 383
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mPickTime:Landroid/widget/Button;

    .line 384
    const v1, 0x7f0a0024

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mReportLocation:Landroid/widget/TextView;

    .line 385
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedPhoto:Landroid/widget/ImageView;

    .line 386
    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedCategories:Landroid/widget/TextView;

    .line 387
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->activityTitle:Landroid/widget/TextView;

    .line 388
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->activityTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->activityTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushahidi/android/app/AddIncident;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    .line 391
    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    .line 392
    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/MapView;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mapView:Lcom/google/android/maps/MapView;

    .line 393
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mapController:Lcom/google/android/maps/MapController;

    .line 394
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$1;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$1;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 407
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$2;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$2;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 418
    const v1, 0x7f0a0028

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    .line 419
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$3;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$3;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 431
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnSend:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$4;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$4;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnPicture:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$5;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$5;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnAddCategory:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$6;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$6;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mPickDate:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$7;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$7;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mPickTime:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$8;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$8;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 503
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ushahidi/android/app/AddIncident;->mYear:I

    .line 504
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ushahidi/android/app/AddIncident;->mMonth:I

    .line 505
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ushahidi/android/app/AddIncident;->mDay:I

    .line 506
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ushahidi/android/app/AddIncident;->mHour:I

    .line 507
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ushahidi/android/app/AddIncident;->mMinute:I

    .line 508
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 509
    invoke-direct {p0}, Lcom/ushahidi/android/app/AddIncident;->updateDisplay()V

    .line 511
    return-void
.end method

.method private static pad(I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 926
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    .line 927
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 929
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private placeMarker(II)V
    .locals 4
    .param p1, "markerLatitude"    # I
    .param p2, "markerLongitude"    # I

    .prologue
    const/4 v3, 0x0

    .line 1165
    invoke-virtual {p0}, Lcom/ushahidi/android/app/AddIncident;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1167
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1168
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 1170
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 1171
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$MapMarker;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/ushahidi/android/app/AddIncident$MapMarker;-><init>(Lcom/ushahidi/android/app/AddIncident;Landroid/graphics/drawable/Drawable;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    return-void
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 315
    const/4 v1, 0x2

    const v2, 0x7f06006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 316
    .local v0, "i":Landroid/view/MenuItem;
    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 318
    const/4 v1, 0x3

    const v2, 0x7f06005b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 319
    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 321
    const/4 v1, 0x4

    const v2, 0x7f06005e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 322
    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 324
    const/4 v1, 0x5

    const v2, 0x7f06005f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 325
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 327
    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 328
    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 330
    const/4 v1, 0x7

    const v2, 0x7f06006c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 331
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 333
    return-void
.end method

.method protected static randomString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    sget-object v0, Lcom/ushahidi/android/app/AddIncident;->random:Ljava/util/Random;

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
    .line 241
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    .line 243
    const-wide/16 v2, 0x7530

    .line 247
    .local v2, "updateTimeMsec":J
    :try_start_0
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    .line 248
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 247
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v9

    .line 251
    .local v9, "low":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    .line 252
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 251
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v8

    .line 254
    .local v8, "high":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 256
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v8}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v8    # "high":Landroid/location/LocationProvider;
    .end local v9    # "low":Landroid/location/LocationProvider;
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v6

    .line 261
    .local v6, "ex1":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 265
    :catch_1
    move-exception v7

    .line 266
    .local v7, "ex2":Ljava/lang/Exception;
    sget-object v0, Lcom/ushahidi/android/app/AddIncident;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDisplay()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xc

    .line 854
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    .line 856
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget v3, p0, Lcom/ushahidi/android/app/AddIncident;->mHour:I

    if-lt v3, v6, :cond_0

    .line 883
    const-string v0, "PM"

    .line 887
    .local v0, "amPm":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mYear:I

    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mDay:I

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 891
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, "strDate":Ljava/lang/String;
    const-string v3, "yyyy-MM-dd"

    const-string v4, "MMMM dd, yyyy"

    invoke-static {v3, v2, v4}, Lcom/ushahidi/android/app/util/Util;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "dateTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    iget v6, p0, Lcom/ushahidi/android/app/AddIncident;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/ushahidi/android/app/AddIncident;->mMinute:I

    invoke-static {v5}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    .line 900
    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mDay:I

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    .line 901
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeDigits:Ljava/util/HashMap;

    iget v5, p0, Lcom/ushahidi/android/app/AddIncident;->mHour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mMinute:I

    invoke-static {v4}, Lcom/ushahidi/android/app/AddIncident;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mDateToSubmit:Ljava/lang/String;

    .line 903
    return-void

    .line 885
    .end local v0    # "amPm":Ljava/lang/String;
    .end local v1    # "dateTime":Ljava/lang/String;
    .end local v2    # "strDate":Ljava/lang/String;
    :cond_0
    const-string v0, "AM"

    .restart local v0    # "amPm":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method public addToDb()J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 939
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mDateToSubmit:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, "dates":[Ljava/lang/String;
    aget-object v4, v2, v7

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "time":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v1, "addIncidentsData":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/AddIncidentData;>;"
    new-instance v0, Lcom/ushahidi/android/app/data/AddIncidentData;

    invoke-direct {v0}, Lcom/ushahidi/android/app/data/AddIncidentData;-><init>()V

    .line 944
    .local v0, "addIncidentData":Lcom/ushahidi/android/app/data/AddIncidentData;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentTitle(Ljava/lang/String;)V

    .line 947
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentDesc(Ljava/lang/String;)V

    .line 948
    aget-object v4, v2, v6

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentDate(Ljava/lang/String;)V

    .line 949
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentHour(I)V

    .line 950
    aget-object v4, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentMinute(I)V

    .line 951
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentAmPm(Ljava/lang/String;)V

    .line 952
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mVectorCategories:Ljava/util/Vector;

    invoke-static {v4}, Lcom/ushahidi/android/app/util/Util;->implode(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentCategories(Ljava/lang/String;)V

    .line 953
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentLocName(Ljava/lang/String;)V

    .line 954
    sget-wide v4, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentLocLatitude(Ljava/lang/String;)V

    .line 955
    sget-wide v4, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentLocLongitude(Ljava/lang/String;)V

    .line 956
    sget-object v4, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setIncidentPhoto(Ljava/lang/String;)V

    .line 957
    sget-object v4, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setPersonFirst(Ljava/lang/String;)V

    .line 958
    sget-object v4, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setPersonLast(Ljava/lang/String;)V

    .line 959
    sget-object v4, Lcom/ushahidi/android/app/UshahidiPref;->email:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/data/AddIncidentData;->setPersonEmail(Ljava/lang/String;)V

    .line 962
    sget-object v4, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v4, v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addIncidents(Ljava/util/List;)J

    move-result-wide v4

    return-wide v4
.end method

.method public getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 1176
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    mul-double v2, p1, v4

    double-to-int v1, v2

    mul-double v2, p3, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method protected goHome(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1046
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1047
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1048
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1049
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 1237
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 582
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 585
    packed-switch p1, :pswitch_data_0

    .line 663
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 588
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 592
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/AddIncident;->setRequestedOrientation(I)V

    .line 593
    iput-object v5, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    .line 594
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mExtras:Landroid/os/Bundle;

    .line 595
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 596
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mExtras:Landroid/os/Bundle;

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    .line 598
    :cond_1
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 599
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    .line 600
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedPhoto:Landroid/widget/ImageView;

    sget-object v5, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ushahidi/android/app/ImageManager;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 602
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedPhoto:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 608
    :pswitch_2
    if-ne p2, v4, :cond_0

    .line 612
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 613
    .local v3, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 616
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/ushahidi/android/app/AddIncident;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 623
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v1, "byteArrayos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 627
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_pic_upload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/ushahidi/android/app/AddIncident;->randomString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mFilename:Ljava/lang/String;

    .line 637
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/ushahidi/android/app/AddIncident;->mFilename:Ljava/lang/String;

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mFilename:Ljava/lang/String;

    sput-object v4, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    .line 640
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedPhoto:Landroid/widget/ImageView;

    sget-object v5, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ushahidi/android/app/ImageManager;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 642
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mSelectedPhoto:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 617
    .end local v1    # "byteArrayos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_0

    .line 619
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 620
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 629
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "byteArrayos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    goto/16 :goto_0

    .line 631
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    .line 632
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 646
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "byteArrayos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_3
    if-ne p2, v4, :cond_0

    .line 650
    iput-object v5, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    .line 651
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mExtras:Landroid/os/Bundle;

    .line 652
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 653
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mExtras:Landroid/os/Bundle;

    const-string v5, "locations"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    .line 655
    :cond_2
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 656
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    const-string v5, "latitude"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    sput-wide v4, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    .line 659
    iget-object v4, p0, Lcom/ushahidi/android/app/AddIncident;->mBundle:Landroid/os/Bundle;

    const-string v5, "longitude"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    sput-wide v4, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    goto/16 :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onClickHome(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1035
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/AddIncident;->goHome(Landroid/content/Context;)V

    .line 1036
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/AddIncident;->applyMenuChoice(Landroid/view/MenuItem;)Z

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
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->setContentView(I)V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mFoundAddresses:Ljava/util/List;

    .line 224
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mGc:Landroid/location/Geocoder;

    .line 227
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 228
    invoke-direct {p0}, Lcom/ushahidi/android/app/AddIncident;->setDeviceLocation()V

    .line 229
    invoke-direct {p0}, Lcom/ushahidi/android/app/AddIncident;->initComponents()V

    .line 230
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/AddIncident;->populateMenu(Landroid/view/Menu;)V

    .line 291
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const v1, 0x7f060071

    const v3, 0x7f060010

    const/4 v5, 0x0

    .line 727
    packed-switch p1, :pswitch_data_0

    .line 837
    :goto_0
    return-object v6

    .line 729
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 730
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 731
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 732
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ushahidi/android/app/AddIncident$15;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/AddIncident$15;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 737
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 741
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 742
    .restart local v6    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 743
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 744
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ushahidi/android/app/AddIncident$16;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/AddIncident$16;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 749
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 754
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 755
    .restart local v6    # "dialog":Landroid/app/AlertDialog;
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 756
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 757
    const v0, 0x7f060045

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ushahidi/android/app/AddIncident$17;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/AddIncident$17;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 767
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ushahidi/android/app/AddIncident$18;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/AddIncident$18;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 773
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ushahidi/android/app/AddIncident$19;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/AddIncident$19;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 786
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 792
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f060000

    .line 793
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 794
    invoke-virtual {p0}, Lcom/ushahidi/android/app/AddIncident;->showCategories()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/AddIncident$21;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/AddIncident$21;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ushahidi/android/app/AddIncident$20;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/AddIncident$20;-><init>(Lcom/ushahidi/android/app/AddIncident;)V

    .line 823
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 832
    :pswitch_4
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/ushahidi/android/app/AddIncident;->mHour:I

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mMinute:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    move-object v6, v0

    goto/16 :goto_0

    .line 835
    :pswitch_5
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/ushahidi/android/app/AddIncident;->mYear:I

    iget v4, p0, Lcom/ushahidi/android/app/AddIncident;->mMonth:I

    iget v5, p0, Lcom/ushahidi/android/app/AddIncident;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v6, v0

    goto/16 :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/AddIncident;->populateMenu(Landroid/view/Menu;)V

    .line 297
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 235
    invoke-virtual {p0}, Lcom/ushahidi/android/app/AddIncident;->stopLocating()V

    .line 236
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1242
    if-eqz p1, :cond_0

    .line 1243
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    .line 1244
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    .line 1246
    sget-wide v0, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    sget-wide v2, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushahidi/android/app/AddIncident;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/AddIncident;->centerLocation(Lcom/google/android/maps/GeoPoint;)V

    .line 1247
    iget-object v0, p0, Lcom/ushahidi/android/app/AddIncident;->mReportLocation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    invoke-virtual {p0}, Lcom/ushahidi/android/app/AddIncident;->stopLocating()V

    .line 1252
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/AddIncident;->applyMenuChoice(Landroid/view/MenuItem;)Z

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
    .locals 3

    .prologue
    .line 1064
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1065
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "title"

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1066
    const-string v1, "desc"

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1067
    const-string v1, "location"

    iget-object v2, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1068
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1069
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 1070
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 842
    packed-switch p1, :pswitch_data_0

    .line 850
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 844
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lcom/ushahidi/android/app/AddIncident;->mHour:I

    iget v1, p0, Lcom/ushahidi/android/app/AddIncident;->mMinute:I

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 847
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    check-cast p2, Landroid/app/DatePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lcom/ushahidi/android/app/AddIncident;->mYear:I

    iget v1, p0, Lcom/ushahidi/android/app/AddIncident;->mMonth:I

    iget v2, p0, Lcom/ushahidi/android/app/AddIncident;->mDay:I

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 842
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1258
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1264
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1016
    sget-object v3, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mBtnPicture:Landroid/widget/Button;

    const v4, 0x7f060015

    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/AddIncident;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/AddIncident;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1021
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "title"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    .local v2, "title":Ljava/lang/String;
    const-string v3, "desc"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "desc":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1025
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1027
    :cond_1
    if-eqz v0, :cond_2

    .line 1028
    iget-object v3, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1030
    :cond_2
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 1032
    return-void
.end method

.method public onSearchDeployments(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1052
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1053
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/AddIncident;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1054
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/AddIncident;->setResult(I)V

    .line 1055
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1270
    return-void
.end method

.method public postToOnline()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 973
    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    const-string v7, "http://"

    .line 974
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return v5

    .line 978
    :cond_1
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mDateToSubmit:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "dates":[Ljava/lang/String;
    aget-object v6, v1, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, "time":[Ljava/lang/String;
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mVectorCategories:Ljava/util/Vector;

    invoke-static {v6}, Lcom/ushahidi/android/app/util/Util;->implode(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "categories":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    .local v4, "urlBuilder":Ljava/lang/StringBuilder;
    const-string v6, "/api"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "task"

    const-string v8, "report"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "incident_title"

    iget-object v8, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentTitle:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "incident_description"

    iget-object v8, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentDesc:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "incident_date"

    aget-object v8, v1, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "incident_hour"

    aget-object v8, v3, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "incident_minute"

    aget-object v8, v3, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "incident_ampm"

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "incident_category"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "latitude"

    sget-wide v8, Lcom/ushahidi/android/app/AddIncident;->sLatitude:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "longitude"

    sget-wide v8, Lcom/ushahidi/android/app/AddIncident;->sLongitude:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "location_name"

    iget-object v8, p0, Lcom/ushahidi/android/app/AddIncident;->mIncidentLocation:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "person_first"

    sget-object v8, Lcom/ushahidi/android/app/UshahidiPref;->firstname:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "person_last"

    sget-object v8, Lcom/ushahidi/android/app/UshahidiPref;->lastname:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "person_email"

    sget-object v8, Lcom/ushahidi/android/app/UshahidiPref;->email:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v6, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    const-string v7, "filename"

    sget-object v8, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ushahidi/android/app/AddIncident;->mParams:Ljava/util/HashMap;

    invoke-static {v6, v7}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->PostFileUpload(Ljava/lang/String;Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto/16 :goto_0

    .line 1003
    :catch_0
    move-exception v2

    .line 1004
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public setVectorCategories(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, "aVectorCategories":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ushahidi/android/app/AddIncident;->mVectorCategories:Ljava/util/Vector;

    .line 1105
    return-void
.end method

.method public showCategories()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 515
    sget-object v7, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v7}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllCategories()Landroid/database/Cursor;

    move-result-object v3

    .line 518
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 519
    .local v2, "categoryCount":I
    const/4 v1, 0x0

    .line 520
    .local v1, "categoryAmount":I
    if-lez v2, :cond_3

    .line 521
    move v1, v2

    .line 526
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    .line 528
    .local v0, "categories":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 529
    .local v4, "i":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 531
    const-string v7, "category_title"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 533
    .local v6, "titleIndex":I
    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 536
    .local v5, "idIndex":I
    :cond_0
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 537
    iget-object v7, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesTitle:Ljava/util/HashMap;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 538
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 537
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v7, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesId:Ljava/util/Vector;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v4, v4, 0x1

    .line 541
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 546
    .end local v5    # "idIndex":I
    .end local v6    # "titleIndex":I
    :cond_1
    iget-object v7, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesId:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 547
    const/4 v7, 0x0

    const-string v8, "uncategorized"

    aput-object v8, v0, v7

    .line 548
    iget-object v7, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesId:Ljava/util/Vector;

    const-string v8, "4"

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v7, p0, Lcom/ushahidi/android/app/AddIncident;->mCategoriesTitle:Ljava/util/HashMap;

    const-string v8, "4"

    const-string v9, "uncategorized"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 553
    return-object v0

    .line 523
    .end local v0    # "categories":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stopLocating()V
    .locals 3

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/ushahidi/android/app/AddIncident;->mLocationMgr:Landroid/location/LocationManager;

    .line 285
    :goto_1
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/AddIncident;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 282
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 283
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/AddIncident;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
