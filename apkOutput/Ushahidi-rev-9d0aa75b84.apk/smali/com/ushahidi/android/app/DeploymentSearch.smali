.class public Lcom/ushahidi/android/app/DeploymentSearch;
.super Lcom/ushahidi/android/app/DashboardActivity;
.source "DeploymentSearch.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/DeploymentSearch$ReportsTask;,
        Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final DELETE:I = 0x2

.field private static final DIALOG_ADD_DEPLOYMENT:I = 0x2

.field private static final DIALOG_CLEAR_DEPLOYMENT:I = 0x1

.field private static final DIALOG_DISTANCE:I

.field private static location:Landroid/location/Location;


# instance fields
.field private checkin:Z

.field private deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

.field private deploymentId:I

.field private distance:Ljava/lang/String;

.field private final items:[Ljava/lang/String;

.field final mDeleteDeploymentById:Ljava/lang/Runnable;

.field private mDeployments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/DeploymentsData;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyList:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mIsCheckinsEnabled:Ljava/lang/Runnable;

.field private mListView:Landroid/widget/ListView;

.field private mLocationMgr:Landroid/location/LocationManager;

.field private mTextView:Landroid/widget/TextView;

.field private refreshState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/ushahidi/android/app/util/DeviceCurrentLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/DeploymentSearch;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Lcom/ushahidi/android/app/DashboardActivity;-><init>()V

    .line 48
    iput v3, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentId:I

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "50"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "250"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "750"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1500"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->items:[Ljava/lang/String;

    .line 66
    iput-boolean v3, p0, Lcom/ushahidi/android/app/DeploymentSearch;->refreshState:Z

    .line 68
    iput-boolean v3, p0, Lcom/ushahidi/android/app/DeploymentSearch;->checkin:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->distance:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/ushahidi/android/app/DeploymentSearch$3;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/DeploymentSearch$3;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mDeleteDeploymentById:Ljava/lang/Runnable;

    .line 498
    new-instance v0, Lcom/ushahidi/android/app/DeploymentSearch$10;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/DeploymentSearch$10;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mIsCheckinsEnabled:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/DeploymentSearch;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/DeploymentSearch;->showResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/DeploymentSearch;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mDeployments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/DeploymentSearch;)I
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 46
    iget v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentId:I

    return v0
.end method

.method static synthetic access$502(Lcom/ushahidi/android/app/DeploymentSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->distance:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ushahidi/android/app/DeploymentSearch;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ushahidi/android/app/DeploymentSearch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->checkin:Z

    return v0
.end method

.method static synthetic access$802(Lcom/ushahidi/android/app/DeploymentSearch;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->refreshState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/ushahidi/android/app/DeploymentSearch;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/DeploymentSearch;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->updateRefreshStatus()V

    return-void
.end method

.method private showResults(Ljava/lang/String;)V
    .locals 12
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 277
    const/4 v6, 0x0

    .line 279
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllDeployments()Landroid/database/Cursor;

    move-result-object v6

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentAdapter;->removeItems()V

    .line 291
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentAdapter;->notifyDataSetChanged()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mDeployments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    if-eqz v6, :cond_4

    .line 296
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 298
    .local v8, "deploymentIdIndex":I
    const-string v0, "name"

    .line 299
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 300
    .local v9, "deploymentNameIndex":I
    const-string v0, "desc"

    .line 301
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 302
    .local v7, "deploymentDescIndex":I
    const-string v0, "url"

    .line 303
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 304
    .local v10, "deploymentUrlIndex":I
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentAdapter;->removeItems()V

    .line 306
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentAdapter;->notifyDataSetChanged()V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mDeployments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    :cond_2
    new-instance v11, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-direct {v11}, Lcom/ushahidi/android/app/data/DeploymentsData;-><init>()V

    .line 312
    .local v11, "deploymentsData":Lcom/ushahidi/android/app/data/DeploymentsData;
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mDeployments:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ushahidi/android/app/data/DeploymentsData;->setId(Ljava/lang/String;)V

    .line 315
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ushahidi/android/app/data/DeploymentsData;->setName(Ljava/lang/String;)V

    .line 316
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ushahidi/android/app/data/DeploymentsData;->setDesc(Ljava/lang/String;)V

    .line 317
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ushahidi/android/app/data/DeploymentsData;->setUrl(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0, v11}, Lcom/ushahidi/android/app/DeploymentAdapter;->addItem(Lcom/ushahidi/android/app/data/DeploymentsData;)V

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    .end local v7    # "deploymentDescIndex":I
    .end local v8    # "deploymentIdIndex":I
    .end local v9    # "deploymentNameIndex":I
    .end local v10    # "deploymentUrlIndex":I
    .end local v11    # "deploymentsData":Lcom/ushahidi/android/app/data/DeploymentsData;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 324
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentAdapter;->notifyDataSetChanged()V

    .line 325
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->displayEmptyListText()V

    .line 331
    :cond_4
    return-void

    .line 283
    :cond_5
    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/ushahidi/android/app/DeploymentSearch;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private updateRefreshStatus()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 190
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->refreshState:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 191
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/ushahidi/android/app/DeploymentSearch;->refreshState:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    return-void

    :cond_0
    move v0, v2

    .line 190
    goto :goto_0

    :cond_1
    move v2, v1

    .line 192
    goto :goto_1
.end method


# virtual methods
.method public activateDeployment(Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 468
    sget-object v7, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v7, p1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchDeploymentById(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 469
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v5, ""

    .line 472
    .local v5, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 474
    const-string v7, "url"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 475
    .local v6, "urlIndex":I
    const-string v7, "latitude"

    .line 476
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 477
    .local v2, "latitudeIndex":I
    const-string v7, "longitude"

    .line 478
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 481
    .local v4, "longitudeIndex":I
    :cond_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "latitude":Ljava/lang/String;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "longitude":Ljava/lang/String;
    invoke-static {p1}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/ushahidi/android/app/UshahidiPref;->activeDeployment:I

    .line 485
    sput-object v5, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    .line 486
    sput-object v1, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    .line 487
    sput-object v3, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLongitude:Ljava/lang/String;

    .line 488
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 491
    .end local v1    # "latitude":Ljava/lang/String;
    .end local v2    # "latitudeIndex":I
    .end local v3    # "longitude":Ljava/lang/String;
    .end local v4    # "longitudeIndex":I
    .end local v6    # "urlIndex":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 492
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->saveSettings(Landroid/content/Context;)V

    .line 493
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 496
    :cond_2
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const v0, 0x7f060074

    invoke-static {p0, v0}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 257
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllDeployment()Z

    .line 243
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->clearData()Z

    .line 244
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentAdapter;->removeItems()V

    .line 245
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/DeploymentAdapter;->notifyDataSetChanged()V

    .line 246
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->showResults(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->displayEmptyListText()V

    .line 250
    const/4 v0, 0x0

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->activeDeployment:I

    .line 251
    const-string v0, ""

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    .line 252
    const-string v0, "0.0"

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLatitude:Ljava/lang/String;

    .line 253
    const-string v0, "0.0"

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->deploymentLongitude:Ljava/lang/String;

    .line 254
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->saveSettings(Landroid/content/Context;)V

    .line 255
    const v0, 0x7f060068

    invoke-static {p0, v0}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected createDialog(I)V
    .locals 13
    .param p1, "d"    # I

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 340
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f060097

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 342
    iget-object v10, p0, Lcom/ushahidi/android/app/DeploymentSearch;->items:[Ljava/lang/String;

    new-instance v11, Lcom/ushahidi/android/app/DeploymentSearch$4;

    invoke-direct {v11, p0}, Lcom/ushahidi/android/app/DeploymentSearch$4;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    invoke-virtual {v2, v10, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 350
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 354
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v3, "clearBuilder":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f06002c

    .line 356
    invoke-virtual {p0, v10}, Lcom/ushahidi/android/app/DeploymentSearch;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    .line 357
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f06009d

    .line 358
    invoke-virtual {p0, v11}, Lcom/ushahidi/android/app/DeploymentSearch;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/ushahidi/android/app/DeploymentSearch$6;

    invoke-direct {v12, p0}, Lcom/ushahidi/android/app/DeploymentSearch$6;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f06009c

    .line 365
    invoke-virtual {p0, v11}, Lcom/ushahidi/android/app/DeploymentSearch;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/ushahidi/android/app/DeploymentSearch$5;

    invoke-direct {v12, p0}, Lcom/ushahidi/android/app/DeploymentSearch$5;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 372
    .local v4, "clearDialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 377
    .end local v3    # "clearBuilder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "clearDialog":Landroid/app/AlertDialog;
    :pswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 378
    .local v8, "factory":Landroid/view/LayoutInflater;
    const v10, 0x7f030001

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 379
    .local v9, "textEntryView":Landroid/view/View;
    const v10, 0x7f0a001a

    .line 380
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 382
    .local v7, "deploymentUrl":Landroid/widget/EditText;
    const v10, 0x7f0a0018

    .line 383
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 386
    .local v6, "deploymentName":Landroid/widget/EditText;
    new-instance v10, Lcom/ushahidi/android/app/DeploymentSearch$7;

    invoke-direct {v10, p0, v7}, Lcom/ushahidi/android/app/DeploymentSearch$7;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;Landroid/widget/EditText;)V

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .local v0, "addBuilder":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f060001

    .line 403
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 404
    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f060010

    new-instance v12, Lcom/ushahidi/android/app/DeploymentSearch$9;

    invoke-direct {v12, p0, v7, v6}, Lcom/ushahidi/android/app/DeploymentSearch$9;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 405
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f06000c

    new-instance v12, Lcom/ushahidi/android/app/DeploymentSearch$8;

    invoke-direct {v12, p0}, Lcom/ushahidi/android/app/DeploymentSearch$8;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    .line 420
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 428
    .local v5, "deploymentDialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public displayEmptyListText()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mEmptyList:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mEmptyList:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public goToReports()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "tab_index"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v2, "tab"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v1, v3}, Lcom/ushahidi/android/app/DeploymentSearch;->startActivityForResult(Landroid/content/Intent;I)V

    .line 453
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/DeploymentSearch;->setResult(I)V

    .line 454
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->finish()V

    .line 455
    return-void
.end method

.method public isCheckinsEnabled()V
    .locals 1

    .prologue
    .line 517
    invoke-static {p0}, Lcom/ushahidi/android/app/util/Util;->isCheckinEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x1

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    .line 522
    :goto_0
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->saveSettings(Landroid/content/Context;)V

    .line 523
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    goto :goto_0
.end method

.method public isDeploymentActive(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 573
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 574
    sget v0, Lcom/ushahidi/android/app/UshahidiPref;->activeDeployment:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddDeployment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 443
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->createDialog(I)V

    .line 444
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 150
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 152
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v1, v2

    iput v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentId:I

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_0
    return v4

    .line 158
    :pswitch_0
    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mDeleteDeploymentById:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->setContentView(I)V

    .line 90
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->setTitleFromActivityLabel(I)V

    .line 92
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mTextView:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mListView:Landroid/widget/ListView;

    .line 94
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mEmptyList:Landroid/widget/TextView;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mDeployments:Ljava/util/List;

    .line 97
    new-instance v0, Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/DeploymentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->deploymentAdapter:Lcom/ushahidi/android/app/DeploymentAdapter;

    .line 99
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->registerForContextMenu(Landroid/view/View;)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mHandler:Landroid/os/Handler;

    .line 101
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/ushahidi/android/app/DeploymentSearch$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/DeploymentSearch$1;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/ushahidi/android/app/DeploymentSearch$2;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/DeploymentSearch$2;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->showResults(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->displayEmptyListText()V

    .line 140
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x2

    const v1, 0x7f060031

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 211
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 212
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/ushahidi/android/app/DashboardActivity;->onDestroy()V

    .line 235
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->stopLocating()V

    .line 236
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 680
    if-eqz p1, :cond_0

    .line 681
    sput-object p1, Lcom/ushahidi/android/app/DeploymentSearch;->location:Landroid/location/Location;

    .line 683
    new-instance v0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;-><init>(Lcom/ushahidi/android/app/DeploymentSearch;Lcom/ushahidi/android/app/DeploymentSearch$1;)V

    .line 684
    .local v0, "deploymentTask":Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;
    iput-object p0, v0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->appContext:Landroid/content/Context;

    .line 685
    sget-object v1, Lcom/ushahidi/android/app/DeploymentSearch;->location:Landroid/location/Location;

    iput-object v1, v0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->location:Landroid/location/Location;

    .line 686
    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->distance:Ljava/lang/String;

    iput-object v1, v0, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->distance:Ljava/lang/String;

    .line 687
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 689
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DeploymentSearch;->stopLocating()V

    .line 692
    .end local v0    # "deploymentTask":Lcom/ushahidi/android/app/DeploymentSearch$RefreshDeploymentTask;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 222
    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 219
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->createDialog(I)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00a0
        :pswitch_0
    .end packed-switch
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 698
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 704
    return-void
.end method

.method public onRefreshReports(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->createDialog(I)V

    .line 440
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/ushahidi/android/app/DashboardActivity;->onStart()V

    .line 230
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 710
    return-void
.end method

.method public setDeviceLocation()V
    .locals 10

    .prologue
    .line 632
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DeploymentSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    .line 634
    const-wide/16 v2, 0x7530

    .line 638
    .local v2, "updateTimeMsec":J
    :try_start_0
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    .line 639
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 638
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v9

    .line 642
    .local v9, "low":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    .line 643
    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v4

    const/4 v5, 0x1

    .line 642
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v8

    .line 645
    .local v8, "high":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 647
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v8}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v8    # "high":Landroid/location/LocationProvider;
    .end local v9    # "low":Landroid/location/LocationProvider;
    :cond_0
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v6

    .line 652
    .local v6, "ex1":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 656
    :catch_1
    move-exception v7

    .line 657
    .local v7, "ex2":Ljava/lang/Exception;
    sget-object v0, Lcom/ushahidi/android/app/DeploymentSearch;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopLocating()V
    .locals 3

    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/ushahidi/android/app/DeploymentSearch;->mLocationMgr:Landroid/location/LocationManager;

    .line 676
    :goto_1
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/DeploymentSearch;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 673
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 674
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/ushahidi/android/app/DeploymentSearch;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
