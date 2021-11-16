.class public Lcom/ushahidi/android/app/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final VALID_EMAIL_PATTERN:Ljava/lang/String; = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

.field private static final VALID_URL_PATTERN:Ljava/lang/String; = "^(https?|ftp)://[a-z0-9-]+(\\.[a-z0-9-]+)+([/?].+)?$"

.field private static jsonObject:Lorg/json/JSONObject;

.field private static mCheckins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;"
        }
    .end annotation
.end field

.field private static mNewCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/CategoriesData;",
            ">;"
        }
    .end annotation
.end field

.field private static mNewIncidents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/UsersData;",
            ">;"
        }
    .end annotation
.end field

.field private static matcher:Ljava/util/regex/Matcher;

.field private static networkInfo:Landroid/net/NetworkInfo;

.field private static pattern:Ljava/util/regex/Pattern;

.field private static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/util/Util;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 484
    const-string v3, "\\s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "words":[Ljava/lang/String;
    const-string v0, ""

    .line 486
    .local v0, "capWord":Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 488
    .local v1, "word":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/ushahidi/android/app/util/Util;->capitalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "word":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static capitalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static checkForCheckin(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    invoke-static {p0}, Lcom/ushahidi/android/app/util/Util;->isCheckinEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x1

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    .line 444
    :goto_0
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->saveSettings(Landroid/content/Context;)V

    .line 445
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    goto :goto_0
.end method

.method public static createCoarseCriteria()Landroid/location/Criteria;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 496
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 497
    .local v0, "c":Landroid/location/Criteria;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 498
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 499
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 500
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 501
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 502
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 503
    return-object v0
.end method

.method public static createFineCriteria()Landroid/location/Criteria;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 510
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 511
    .local v0, "c":Landroid/location/Criteria;
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 513
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 514
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 515
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 516
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 517
    return-object v0
.end method

.method public static deviceCameraHasAutofocus(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 594
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.camera.autofocus"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const/4 v1, 0x1

    .line 597
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deviceHasCamera(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 577
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, 0x1

    .line 580
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static extractPayloadJSON(Ljava/lang/String;)Z
    .locals 3
    .param p0, "json_data"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ushahidi/android/app/util/Util;->jsonObject:Lorg/json/JSONObject;

    .line 252
    sget-object v1, Lcom/ushahidi/android/app/util/Util;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 256
    :goto_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fetchReports(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    :try_start_0
    invoke-static {p0}, Lcom/ushahidi/android/app/util/Util;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Lcom/ushahidi/android/app/net/Categories;->getAllCategoriesFromWeb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->categoriesResponse:Ljava/lang/String;

    .line 196
    invoke-static {v0}, Lcom/ushahidi/android/app/data/HandleXml;->processCategoriesXml(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/util/Util;->mNewCategories:Ljava/util/List;

    .line 199
    :cond_0
    invoke-static {}, Lcom/ushahidi/android/app/net/Incidents;->getAllIncidentsFromWeb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->incidentsResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushahidi/android/app/data/HandleXml;->processIncidentsXml(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/util/Util;->mNewIncidents:Ljava/util/List;

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushahidi/android/app/util/Util;->mNewCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Categories \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ushahidi/android/app/util/Util;->mNewIncidents:Ljava/util/List;

    .line 204
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Reports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->totalReportsFetched:Ljava/lang/String;

    .line 206
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    sget-object v1, Lcom/ushahidi/android/app/util/Util;->mNewCategories:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addCategories(Ljava/util/List;Z)V

    .line 207
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    sget-object v1, Lcom/ushahidi/android/app/util/Util;->mNewIncidents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addIncidents(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_2
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "dateFormat"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "toFormat"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v3, ""

    .line 227
    .local v3, "formatted":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, "formatter":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 230
    .local v0, "dateStr":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 232
    .local v2, "formatDate":Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v4    # "formatter":Ljava/text/DateFormat;
    .local v5, "formatter":Ljava/text/DateFormat;
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v4, v5

    .line 239
    .end local v0    # "dateStr":Ljava/util/Date;
    .end local v2    # "formatDate":Ljava/util/Date;
    .end local v5    # "formatter":Ljava/text/DateFormat;
    .restart local v4    # "formatter":Ljava/text/DateFormat;
    :goto_0
    return-object v3

    .line 235
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/text/ParseException;
    :goto_1
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v4    # "formatter":Ljava/text/DateFormat;
    .restart local v0    # "dateStr":Ljava/util/Date;
    .restart local v2    # "formatDate":Ljava/util/Date;
    .restart local v5    # "formatter":Ljava/text/DateFormat;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "formatter":Ljava/text/DateFormat;
    .restart local v4    # "formatter":Ljava/text/DateFormat;
    goto :goto_1
.end method

.method public static generateFilename(Z)Ljava/lang/String;
    .locals 2
    .param p0, "thumbnail"    # Z

    .prologue
    .line 556
    if-eqz p0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_t.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ushahidi/android/app/util/Util;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromLocation(DDLandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const-string v2, ""

    .line 269
    .local v2, "json_data":Ljava/lang/String;
    const/4 v3, 0x0

    .line 272
    .local v3, "status":I
    :try_start_0
    invoke-static {p4}, Lcom/ushahidi/android/app/util/Util;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    invoke-static {p0, p1, p2, p3}, Lcom/ushahidi/android/app/net/UshahidiGeocoder;->reverseGeocode(DD)Ljava/lang/String;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_2

    .line 278
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/ushahidi/android/app/util/Util;->jsonObject:Lorg/json/JSONObject;

    .line 280
    sget-object v4, Lcom/ushahidi/android/app/util/Util;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "Status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 282
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 283
    sget-object v4, Lcom/ushahidi/android/app/util/Util;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "Placemark"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 285
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "AddressDetails"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Country"

    .line 286
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "AdministrativeArea"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Locality"

    .line 287
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "LocalityName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_0
    return-object v4

    .line 275
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 290
    :cond_1
    const-string v4, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, ""

    goto :goto_0

    .line 297
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    const-string v4, ""

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method public static implode(Ljava/util/Vector;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "text":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v1, ""

    .line 129
    .local v1, "implode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 130
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_0

    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    goto :goto_0

    .line 131
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 135
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static isCheckinEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 399
    const-string v3, ""

    .line 400
    .local v3, "jsonString":Ljava/lang/String;
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .local v6, "uriBuilder":Ljava/lang/StringBuilder;
    const-string v9, "/api?task=version"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v9, "&resp=json"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetURL(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 408
    .local v4, "response":Lorg/apache/http/HttpResponse;
    if-nez v4, :cond_1

    .line 434
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return v7

    .line 412
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 414
    .local v5, "statusCode":I
    const/16 v9, 0xc8

    if-ne v5, v9, :cond_0

    .line 416
    invoke-static {v4}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    .line 417
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "payload"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "checkins"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 420
    .local v0, "checkinStatus":I
    if-ne v0, v8, :cond_0

    move v7, v8

    .line 421
    goto :goto_0

    .line 429
    .end local v0    # "checkinStatus":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 432
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 434
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string v1, "connectivity"

    .line 144
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    sput-object v1, Lcom/ushahidi/android/app/util/Util;->networkInfo:Landroid/net/NetworkInfo;

    .line 149
    sget-object v1, Lcom/ushahidi/android/app/util/Util;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ushahidi/android/app/util/Util;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static joinString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static limitString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 180
    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static processCheckins(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 528
    const-string v1, ""

    .line 530
    .local v1, "strCheckinsJSON":Ljava/lang/String;
    invoke-static {p0}, Lcom/ushahidi/android/app/util/Util;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-static {v2, v3, v3}, Lcom/ushahidi/android/app/checkin/NetworkServices;->getCheckins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 535
    new-instance v0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;

    invoke-direct {v0, v1}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, "checkinsRetrieveCheckinsJSON":Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;
    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->getCheckinsUsersList()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/ushahidi/android/app/util/Util;->mUsers:Ljava/util/List;

    .line 538
    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->getCheckinsList()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/ushahidi/android/app/util/Util;->mCheckins:Ljava/util/List;

    .line 541
    .end local v0    # "checkinsRetrieveCheckinsJSON":Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;
    :cond_0
    sget-object v2, Lcom/ushahidi/android/app/util/Util;->mCheckins:Ljava/util/List;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ushahidi/android/app/util/Util;->mUsers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 542
    sget-object v2, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    sget-object v3, Lcom/ushahidi/android/app/util/Util;->mUsers:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addUsers(Ljava/util/List;)V

    .line 543
    sget-object v2, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    sget-object v3, Lcom/ushahidi/android/app/util/Util;->mCheckins:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addCheckins(Ljava/util/List;)V

    .line 544
    const/4 v2, 0x0

    .line 551
    :goto_0
    return v2

    .line 547
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 551
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static processReports(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 312
    :try_start_0
    invoke-static {p0}, Lcom/ushahidi/android/app/util/Util;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-static {}, Lcom/ushahidi/android/app/net/Categories;->getAllCategoriesFromWeb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->categoriesResponse:Ljava/lang/String;

    .line 317
    invoke-static {v1}, Lcom/ushahidi/android/app/data/HandleXml;->processCategoriesXml(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ushahidi/android/app/util/Util;->mNewCategories:Ljava/util/List;

    .line 322
    invoke-static {}, Lcom/ushahidi/android/app/net/Incidents;->getAllIncidentsFromWeb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->incidentsResponse:Ljava/lang/String;

    invoke-static {v1}, Lcom/ushahidi/android/app/data/HandleXml;->processIncidentsXml(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ushahidi/android/app/util/Util;->mNewIncidents:Ljava/util/List;

    .line 329
    sget-object v1, Lcom/ushahidi/android/app/util/Util;->mNewCategories:Ljava/util/List;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ushahidi/android/app/util/Util;->mNewIncidents:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 331
    sget-object v1, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllCategories()Z

    .line 332
    sget-object v1, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    sget-object v2, Lcom/ushahidi/android/app/util/Util;->mNewCategories:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addCategories(Ljava/util/List;Z)V

    .line 333
    sget-object v1, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    sget-object v2, Lcom/ushahidi/android/app/util/Util;->mNewIncidents:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addIncidents(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return v0

    .line 319
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 337
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 341
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static randomString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    sget-object v0, Lcom/ushahidi/android/app/util/Util;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rmDir(Ljava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "children":[Ljava/lang/String;
    const-string v4, "Directory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dir.list returned some files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 460
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    .local v3, "temp":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ushahidi/android/app/util/Util;->rmDir(Ljava/lang/String;)V

    .line 459
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 470
    .end local v3    # "temp":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 474
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_2
    return-void

    .line 472
    :cond_2
    const-string v4, "Directory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is not a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 357
    const/4 v0, 0x1

    .line 358
    .local v0, "duration":I
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 359
    return-void
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static truncateText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ufffd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static validateEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const-string v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/util/Util;->pattern:Ljava/util/regex/Pattern;

    .line 372
    sget-object v0, Lcom/ushahidi/android/app/util/Util;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/util/Util;->matcher:Ljava/util/regex/Matcher;

    .line 373
    sget-object v0, Lcom/ushahidi/android/app/util/Util;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static validateUshahidiInstance(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ushahidiUrl"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const-string v0, "^(https?|ftp)://[a-z0-9-]+(\\.[a-z0-9-]+)+([/?].+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/util/Util;->pattern:Ljava/util/regex/Pattern;

    .line 390
    sget-object v0, Lcom/ushahidi/android/app/util/Util;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/util/Util;->matcher:Ljava/util/regex/Matcher;

    .line 391
    sget-object v0, Lcom/ushahidi/android/app/util/Util;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
