.class public Lcom/ushahidi/android/app/data/UshahidiDatabase;
.super Ljava/lang/Object;
.source "UshahidiDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final ADD_INCIDENTS_COLUMNS:[Ljava/lang/String;

.field private static final ADD_INCIDENTS_TABLE:Ljava/lang/String; = "add_incidents"

.field private static final ADD_INCIDENTS_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS add_incidents (_id INTEGER PRIMARY KEY , incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_hour INTEGER, incident_minute INTEGER, incident_ampm TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_photo TEXT, incident_video TEXT, incident_news TEXT, person_first TEXT, person_last TEXT, person_email TEXT )"

.field public static final ADD_INCIDENT_AMPM:Ljava/lang/String; = "incident_ampm"

.field public static final ADD_INCIDENT_AMPM_INDEX:I = 0x6

.field public static final ADD_INCIDENT_CATEGORIES:Ljava/lang/String; = "incident_categories"

.field public static final ADD_INCIDENT_CATEGORIES_INDEX:I = 0x7

.field public static final ADD_INCIDENT_DATE:Ljava/lang/String; = "incident_date"

.field public static final ADD_INCIDENT_DATE_INDEX:I = 0x3

.field public static final ADD_INCIDENT_DESC:Ljava/lang/String; = "incident_desc"

.field public static final ADD_INCIDENT_DESC_INDEX:I = 0x2

.field public static final ADD_INCIDENT_HOUR:Ljava/lang/String; = "incident_hour"

.field public static final ADD_INCIDENT_HOUR_INDEX:I = 0x4

.field public static final ADD_INCIDENT_ID:Ljava/lang/String; = "_id"

.field public static final ADD_INCIDENT_ID_INDEX:I = 0x0

.field public static final ADD_INCIDENT_LOC_LATITUDE:Ljava/lang/String; = "incident_loc_latitude"

.field public static final ADD_INCIDENT_LOC_LONGITUDE:Ljava/lang/String; = "incident_loc_longitude"

.field public static final ADD_INCIDENT_LOC_NAME:Ljava/lang/String; = "incident_loc_name"

.field public static final ADD_INCIDENT_MINUTE:Ljava/lang/String; = "incident_minute"

.field public static final ADD_INCIDENT_MINUTE_INDEX:I = 0x5

.field public static final ADD_INCIDENT_NEWS:Ljava/lang/String; = "incident_news"

.field public static final ADD_INCIDENT_NEWS_INDEX:I = 0xd

.field public static final ADD_INCIDENT_PHOTO:Ljava/lang/String; = "incident_photo"

.field public static final ADD_INCIDENT_PHOTO_INDEX:I = 0xb

.field public static final ADD_INCIDENT_TITLE:Ljava/lang/String; = "incident_title"

.field public static final ADD_INCIDENT_TITLE_INDEX:I = 0x1

.field public static final ADD_INCIDENT_VIDEO:Ljava/lang/String; = "incident_video"

.field public static final ADD_INCIDENT_VIDEO_INDEX:I = 0xc

.field public static final ADD_PERSON_EMAIL:Ljava/lang/String; = "person_email"

.field public static final ADD_PERSON_EMAIL_INDEX:I = 0x10

.field public static final ADD_PERSON_FIRST:Ljava/lang/String; = "person_first"

.field public static final ADD_PERSON_FIRST_INDEX:I = 0xe

.field public static final ADD_PERSON_LAST:Ljava/lang/String; = "person_last"

.field public static final ADD_PERSON_LAST_INDEX:I = 0xf

.field public static final CATEGORIES_COLUMNS:[Ljava/lang/String;

.field private static final CATEGORIES_TABLE:Ljava/lang/String; = "categories"

.field private static final CATEGORIES_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS categories (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, category_title TEXT NOT NULL, category_desc TEXT, category_color TEXT, is_unread BOOLEAN NOT NULL )"

.field public static final CATEGORY_COLOR:Ljava/lang/String; = "category_color"

.field public static final CATEGORY_DESC:Ljava/lang/String; = "category_desc"

.field public static final CATEGORY_ID:Ljava/lang/String; = "_id"

.field public static final CATEGORY_IS_UNREAD:Ljava/lang/String; = "is_unread"

.field public static final CATEGORY_TITLE:Ljava/lang/String; = "category_title"

.field public static final CHECKINS_COLUMNS:[Ljava/lang/String;

.field private static final CHECKINS_MEDIA_TABLE:Ljava/lang/String; = "checkin_media"

.field private static final CHECKINS_MEDIA_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS checkin_media (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, media_checkin_id INTEGER, media_thumbnail_link TEXT, media_medium_link TEXT)"

.field private static final CHECKINS_TABLE:Ljava/lang/String; = "checkins"

.field private static final CHECKINS_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS checkins (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_id INTEGER, checkin_mesg TEXT NOT NULL, checkin_date DATE NOT NULL, checki_loc_name TEXT NOT NULL, checkin_loc_latitude TEXT NOT NULL, checkin_loc_longitude TEXT NOT NULL)"

.field public static final CHECKIN_DATE:Ljava/lang/String; = "checkin_date"

.field public static final CHECKIN_ID:Ljava/lang/String; = "_id"

.field public static final CHECKIN_LOC_LATITUDE:Ljava/lang/String; = "checkin_loc_latitude"

.field public static final CHECKIN_LOC_LONGITUDE:Ljava/lang/String; = "checkin_loc_longitude"

.field public static final CHECKIN_LOC_NAME:Ljava/lang/String; = "checki_loc_name"

.field public static final CHECKIN_MEDIA_COLUMNS:[Ljava/lang/String;

.field public static final CHECKIN_MESG:Ljava/lang/String; = "checkin_mesg"

.field public static final CHECKIN_USER_ID:Ljava/lang/String; = "user_id"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ushahidi_db"

.field private static final DATABASE_VERSION:I = 0xd

.field public static final DEPLOYMENT_ACTIVE:Ljava/lang/String; = "deployment_active"

.field public static final DEPLOYMENT_CAT_ID:Ljava/lang/String; = "cat_id"

.field public static final DEPLOYMENT_COLUMNS:[Ljava/lang/String;

.field public static final DEPLOYMENT_DATE:Ljava/lang/String; = "discovery_date"

.field public static final DEPLOYMENT_DESC:Ljava/lang/String; = "desc"

.field public static final DEPLOYMENT_ID:Ljava/lang/String; = "_id"

.field public static final DEPLOYMENT_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final DEPLOYMENT_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final DEPLOYMENT_NAME:Ljava/lang/String; = "name"

.field private static final DEPLOYMENT_TABLE:Ljava/lang/String; = "deployment"

.field private static final DEPLOYMENT_TABLE_CREATE:Ljava/lang/String; = "CREATE VIRTUAL TABLE deployment USING fts3 (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, cat_id INTEGER, deployment_active INTEGER, name TEXT NOT NULL, discovery_date DATE NOT NULL, desc TEXT NOT NULL, url TEXT NOT NULL, latitude TEXT NOT NULL, longitude TEXT NOT NULL)"

.field public static final DEPLOYMENT_URL:Ljava/lang/String; = "url"

.field public static final INCIDENTS_COLUMNS:[Ljava/lang/String;

.field private static final INCIDENTS_TABLE:Ljava/lang/String; = "incidents"

.field private static final INCIDENTS_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS incidents (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_mode INTEGER, incident_verified INTEGER, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_media TEXT, incident_image TEXT, is_unread BOOLEAN NOT NULL )"

.field public static final INCIDENT_CATEGORIES:Ljava/lang/String; = "incident_categories"

.field public static final INCIDENT_DATE:Ljava/lang/String; = "incident_date"

.field public static final INCIDENT_DESC:Ljava/lang/String; = "incident_desc"

.field public static final INCIDENT_ID:Ljava/lang/String; = "_id"

.field public static final INCIDENT_IMAGE:Ljava/lang/String; = "incident_image"

.field public static final INCIDENT_IS_UNREAD:Ljava/lang/String; = "is_unread"

.field public static final INCIDENT_LOC_LATITUDE:Ljava/lang/String; = "incident_loc_latitude"

.field public static final INCIDENT_LOC_LATITUDE_INDEX:I = 0x9

.field public static final INCIDENT_LOC_LONGITUDE:Ljava/lang/String; = "incident_loc_longitude"

.field public static final INCIDENT_LOC_LONGITUDE_INDEX:I = 0xa

.field public static final INCIDENT_LOC_NAME:Ljava/lang/String; = "incident_loc_name"

.field public static final INCIDENT_LOC_NAME_INDEX:I = 0x8

.field public static final INCIDENT_MEDIA:Ljava/lang/String; = "incident_media"

.field public static final INCIDENT_MODE:Ljava/lang/String; = "incident_mode"

.field public static final INCIDENT_TITLE:Ljava/lang/String; = "incident_title"

.field public static final INCIDENT_VERIFIED:Ljava/lang/String; = "incident_verified"

.field public static final MEDIA_CHECKIN_ID:Ljava/lang/String; = "media_checkin_id"

.field public static final MEDIA_ID:Ljava/lang/String; = "_id"

.field public static final MEDIA_MEDIUM_LINK:Ljava/lang/String; = "media_medium_link"

.field public static final MEDIA_THUMBNAIL_LINK:Ljava/lang/String; = "media_thumbnail_link"

.field private static final TAG:Ljava/lang/String; = "UshahidiDatabase"

.field public static final USERS_COLUMNS:[Ljava/lang/String;

.field private static final USERS_TABLE:Ljava/lang/String; = "users"

.field private static final USERS_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS users (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_name TEXT NOT NULL, user_color TEXT)"

.field public static final USER_COLOR:Ljava/lang/String; = "user_color"

.field public static final USER_ID:Ljava/lang/String; = "_id"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "incident_title"

    aput-object v1, v0, v4

    const-string v1, "incident_desc"

    aput-object v1, v0, v5

    const-string v1, "incident_date"

    aput-object v1, v0, v6

    const-string v1, "incident_mode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "incident_verified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "incident_loc_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "incident_loc_latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "incident_loc_longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "incident_categories"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "incident_media"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "incident_image"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_unread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->INCIDENTS_COLUMNS:[Ljava/lang/String;

    .line 218
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "category_title"

    aput-object v1, v0, v4

    const-string v1, "category_desc"

    aput-object v1, v0, v5

    const-string v1, "category_color"

    aput-object v1, v0, v6

    const-string v1, "is_unread"

    aput-object v1, v0, v7

    sput-object v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->CATEGORIES_COLUMNS:[Ljava/lang/String;

    .line 225
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "incident_title"

    aput-object v1, v0, v4

    const-string v1, "incident_desc"

    aput-object v1, v0, v5

    const-string v1, "incident_date"

    aput-object v1, v0, v6

    const-string v1, "incident_hour"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "incident_minute"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "incident_ampm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "incident_categories"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "incident_loc_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "incident_loc_latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "incident_loc_longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "incident_photo"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "incident_video"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "incident_news"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "person_first"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "person_last"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "person_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->ADD_INCIDENTS_COLUMNS:[Ljava/lang/String;

    .line 234
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "user_id"

    aput-object v1, v0, v4

    const-string v1, "checkin_mesg"

    aput-object v1, v0, v5

    const-string v1, "checkin_date"

    aput-object v1, v0, v6

    const-string v1, "checki_loc_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "checkin_loc_latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "checkin_loc_longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->CHECKINS_COLUMNS:[Ljava/lang/String;

    .line 240
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "user_name"

    aput-object v1, v0, v4

    const-string v1, "user_color"

    aput-object v1, v0, v5

    sput-object v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->USERS_COLUMNS:[Ljava/lang/String;

    .line 245
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "media_checkin_id"

    aput-object v1, v0, v4

    const-string v1, "media_thumbnail_link"

    aput-object v1, v0, v5

    const-string v1, "media_medium_link"

    aput-object v1, v0, v6

    sput-object v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->CHECKIN_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 250
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "desc"

    aput-object v1, v0, v6

    const-string v1, "cat_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "deployment_active"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "discovery_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->DEPLOYMENT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mContext:Landroid/content/Context;

    .line 477
    return-void
.end method

.method private fetchUnreadCategoriesCount()I
    .locals 6

    .prologue
    .line 965
    iget-object v3, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(_id) FROM categories WHERE is_unread = 1"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 968
    .local v0, "mCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 970
    .local v1, "result":I
    if-nez v0, :cond_0

    move v2, v1

    .line 978
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 974
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 975
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 976
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v1

    .line 978
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public static getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 448
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 450
    if-eqz v2, :cond_0

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v1

    .line 458
    .end local v1    # "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz v2, :cond_1

    .line 459
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_1
    :goto_0
    return-object v0

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    if-eqz v2, :cond_1

    .line 459
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 458
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 459
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 467
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 468
    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 702
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 703
    .local v9, "mColumnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string v1, "cat_id"

    const-string v2, "cat_id"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v1, "desc"

    const-string v2, "desc"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v1, "discovery_date"

    const-string v2, "discovery_date"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v1, "latitude"

    const-string v2, "latitude"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v1, "longitude"

    const-string v2, "longitude"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v1, "_id"

    const-string v2, "rowid AS _id"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v1, "suggest_intent_data_id"

    const-string v2, "rowid AS suggest_intent_data_id"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v1, "suggest_shortcut_id"

    const-string v2, "rowid AS suggest_shortcut_id"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 723
    .local v0, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "deployment"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 725
    const-string v7, "discovery_date DESC"

    .line 726
    .local v7, "orderBy":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDbHelper:Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 729
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 735
    :goto_0
    return-object v5

    .line 731
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move-object v5, v8

    .line 735
    goto :goto_0
.end method


# virtual methods
.method public addCategories(Ljava/util/List;Z)V
    .locals 3
    .param p2, "isUnread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/CategoriesData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/CategoriesData;>;"
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1021
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/data/CategoriesData;

    .line 1022
    .local v0, "category":Lcom/ushahidi/android/app/data/CategoriesData;
    invoke-virtual {p0, v0, p2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createCategories(Lcom/ushahidi/android/app/data/CategoriesData;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1027
    .end local v0    # "category":Lcom/ushahidi/android/app/data/CategoriesData;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1025
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1029
    return-void
.end method

.method public addCheckinMedia(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/CheckinMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p1, "checkinsMedia":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/checkin/CheckinMedia;>;"
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1065
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/checkin/CheckinMedia;

    .line 1066
    .local v0, "checkinMedia":Lcom/ushahidi/android/app/checkin/CheckinMedia;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createCheckinMedia(Lcom/ushahidi/android/app/checkin/CheckinMedia;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1071
    .end local v0    # "checkinMedia":Lcom/ushahidi/android/app/checkin/CheckinMedia;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1069
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1073
    return-void
.end method

.method public addCheckins(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p1, "checkins":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/checkin/Checkin;>;"
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1035
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/checkin/Checkin;

    .line 1036
    .local v0, "checkin":Lcom/ushahidi/android/app/checkin/Checkin;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createCheckins(Lcom/ushahidi/android/app/checkin/Checkin;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1043
    .end local v0    # "checkin":Lcom/ushahidi/android/app/checkin/Checkin;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1041
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1045
    return-void
.end method

.method public addDeployment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1102
    invoke-virtual {p0, p1, p2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createAddDeployment(Ljava/lang/String;Ljava/lang/String;)J

    .line 1104
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1108
    return-void

    .line 1106
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public addDeployment(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/DeploymentsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    .local p1, "deployments":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/DeploymentsData;>;"
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1084
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/data/DeploymentsData;

    .line 1085
    .local v0, "deployment":Lcom/ushahidi/android/app/data/DeploymentsData;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createDeployment(Lcom/ushahidi/android/app/data/DeploymentsData;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1090
    .end local v0    # "deployment":Lcom/ushahidi/android/app/data/DeploymentsData;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1088
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1092
    return-void
.end method

.method public addIncidents(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/AddIncidentData;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, "addIncidents":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/AddIncidentData;>;"
    const-wide/16 v2, 0x0

    .line 1004
    .local v2, "rowId":J
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1005
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/data/AddIncidentData;

    .line 1006
    .local v0, "addIncident":Lcom/ushahidi/android/app/data/AddIncidentData;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createAddIncident(Lcom/ushahidi/android/app/data/AddIncidentData;)J

    move-result-wide v2

    .line 1007
    goto :goto_0

    .line 1008
    .end local v0    # "addIncident":Lcom/ushahidi/android/app/data/AddIncidentData;
    :cond_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1014
    return-wide v2

    .line 1011
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public addIncidents(Ljava/util/List;Z)V
    .locals 4
    .param p2, "isUnread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, "incidents":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/IncidentsData;>;"
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 985
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/data/IncidentsData;

    .line 986
    .local v0, "incident":Lcom/ushahidi/android/app/data/IncidentsData;
    invoke-virtual {p0, v0, p2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createIncidents(Lcom/ushahidi/android/app/data/IncidentsData;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 992
    .end local v0    # "incident":Lcom/ushahidi/android/app/data/IncidentsData;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 989
    :cond_0
    :try_start_1
    const-string v1, "incidents"

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->totalReports:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_id"

    invoke-virtual {p0, v1, v2, v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->limitRows(Ljava/lang/String;ILjava/lang/String;)I

    .line 990
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 994
    return-void
.end method

.method public addNewCategoryAndCountUnread(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/CategoriesData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 942
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/CategoriesData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addCategories(Ljava/util/List;Z)V

    .line 944
    invoke-direct {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchUnreadCategoriesCount()I

    move-result v0

    return v0
.end method

.method public addNewIncidentsAndCountUnread(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "newIncidents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/data/IncidentsData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addIncidents(Ljava/util/List;Z)V

    .line 611
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchUnreadCount()I

    move-result v0

    return v0
.end method

.method public addUsers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/UsersData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/UsersData;>;"
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1051
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/data/UsersData;

    .line 1052
    .local v0, "user":Lcom/ushahidi/android/app/data/UsersData;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->createUsers(Lcom/ushahidi/android/app/data/UsersData;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1057
    .end local v0    # "user":Lcom/ushahidi/android/app/data/UsersData;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1055
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1059
    return-void
.end method

.method public clearData()Z
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllIncidents()Z

    .line 799
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllCategories()Z

    .line 800
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteUsers()Z

    .line 801
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllCheckins()Z

    .line 802
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteCheckinMedia()Z

    .line 803
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllDeployment()Z

    .line 805
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->rmDir(Ljava/lang/String;)V

    .line 806
    const/4 v0, 0x1

    return v0
.end method

.method public clearReports()Z
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllIncidents()Z

    .line 813
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllCategories()Z

    .line 814
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteUsers()Z

    .line 815
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllCheckins()Z

    .line 816
    invoke-virtual {p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteCheckinMedia()Z

    .line 818
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->rmDir(Ljava/lang/String;)V

    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDbHelper:Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;->close()V

    .line 488
    return-void
.end method

.method public createAddDeployment(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 597
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v1, "cat_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "desc"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v1, "discovery_date"

    const-string v2, "datetime()"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "latitude"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "longitude"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "deployment"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createAddIncident(Lcom/ushahidi/android/app/data/AddIncidentData;)J
    .locals 4
    .param p1, "addIncident"    # Lcom/ushahidi/android/app/data/AddIncidentData;

    .prologue
    .line 512
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 514
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "incident_title"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "incident_desc"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v1, "incident_date"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v1, "incident_hour"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string v1, "incident_minute"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v1, "incident_ampm"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentAmPm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "incident_categories"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentCategories()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "incident_loc_name"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentLocName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "incident_loc_latitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentLocLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "incident_loc_longitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentLocLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v1, "incident_photo"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentPhoto()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "incident_video"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentVideo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v1, "incident_news"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getIncidentNews()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v1, "person_first"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getPersonFirst()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v1, "person_last"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getPersonLast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v1, "person_email"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/AddIncidentData;->getPersonEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "add_incidents"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createCategories(Lcom/ushahidi/android/app/data/CategoriesData;Z)J
    .locals 4
    .param p1, "categories"    # Lcom/ushahidi/android/app/data/CategoriesData;
    .param p2, "isUnread"    # Z

    .prologue
    .line 535
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/CategoriesData;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    const-string v1, "category_title"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/CategoriesData;->getCategoryTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v1, "category_desc"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/CategoriesData;->getCategoryDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v1, "category_color"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/CategoriesData;->getCategoryColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "is_unread"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 541
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createCheckinMedia(Lcom/ushahidi/android/app/checkin/CheckinMedia;)J
    .locals 4
    .param p1, "checkinMedia"    # Lcom/ushahidi/android/app/checkin/CheckinMedia;

    .prologue
    .line 572
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 574
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->getMediaId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const-string v1, "media_checkin_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->getCheckinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string v1, "media_thumbnail_link"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->getThumbnailLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v1, "media_medium_link"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->getMediumLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "checkin_media"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createCheckins(Lcom/ushahidi/android/app/checkin/Checkin;)J
    .locals 4
    .param p1, "checkins"    # Lcom/ushahidi/android/app/checkin/Checkin;

    .prologue
    .line 552
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 553
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/Checkin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/Checkin;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v1, "checkin_mesg"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/Checkin;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "checkin_date"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/Checkin;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "checki_loc_name"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/Checkin;->getLoc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "checkin_loc_latitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/Checkin;->getLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "checkin_loc_longitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/checkin/Checkin;->getLon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "checkins"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createDeployment(Lcom/ushahidi/android/app/data/DeploymentsData;)J
    .locals 4
    .param p1, "deployment"    # Lcom/ushahidi/android/app/data/DeploymentsData;

    .prologue
    .line 582
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 584
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v1, "cat_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getCatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v1, "desc"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v1, "discovery_date"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v1, "deployment_active"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getActive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v1, "latitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v1, "longitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/DeploymentsData;->getLon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "deployment"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createIncidents(Lcom/ushahidi/android/app/data/IncidentsData;Z)J
    .locals 4
    .param p1, "incidents"    # Lcom/ushahidi/android/app/data/IncidentsData;
    .param p2, "isUnread"    # Z

    .prologue
    .line 491
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const-string v1, "incident_title"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "incident_desc"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, "incident_date"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v1, "incident_mode"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v1, "incident_verified"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentVerified()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v1, "incident_loc_name"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v1, "incident_loc_latitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v1, "incident_loc_longitude"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentLocLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v1, "incident_categories"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentCategories()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "incident_media"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentThumbnail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "incident_image"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/IncidentsData;->getIncidentImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "is_unread"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 508
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "incidents"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createUsers(Lcom/ushahidi/android/app/data/UsersData;)J
    .locals 4
    .param p1, "users"    # Lcom/ushahidi/android/app/data/UsersData;

    .prologue
    .line 564
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 565
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/UsersData;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v1, "user_name"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/UsersData;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v1, "user_color"

    invoke-virtual {p1}, Lcom/ushahidi/android/app/data/UsersData;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "users"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public deleteAddIncident(I)Z
    .locals 4
    .param p1, "addIncidentId"    # I

    .prologue
    .line 883
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "add_incidents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAddIncidents()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "add_incidents"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllAutoDeployment()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 855
    const-string v1, "_id <> ?"

    .line 856
    .local v1, "whereClause":Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 859
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "deployment"

    invoke-virtual {v4, v5, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public deleteAllCategories()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 828
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "categories"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllCheckins()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 836
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "checkins"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllDeployment()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 848
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "deployment"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllIncidents()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 824
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "incidents"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteCategory(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 832
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "categories"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteCheckinMedia()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 844
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "checkin_media"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteDeploymentById(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 871
    const-string v1, "rowid = ? "

    .line 872
    .local v1, "whereClause":Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 873
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "deployment"

    invoke-virtual {v4, v5, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public deleteDeploymentByIdAndUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 863
    const-string v1, "WHERE _id =? AND url =? "

    .line 864
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    .line 867
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "deployment"

    invoke-virtual {v4, v5, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public deleteUsers()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 840
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "users"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchAllCategories()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "categories"

    sget-object v2, Lcom/ushahidi/android/app/data/UshahidiDatabase;->CATEGORIES_COLUMNS:[Ljava/lang/String;

    const-string v7, "_id DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllCheckins()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 648
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "checkins"

    sget-object v2, Lcom/ushahidi/android/app/data/UshahidiDatabase;->CHECKINS_COLUMNS:[Ljava/lang/String;

    const-string v7, "checkin_date DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllDeployments()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 654
    invoke-direct {p0, v0, v0, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllIncidents()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 615
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "incidents"

    sget-object v2, Lcom/ushahidi/android/app/data/UshahidiDatabase;->INCIDENTS_COLUMNS:[Ljava/lang/String;

    const-string v7, "incident_date DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllOfflineIncidents()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 620
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "add_incidents"

    sget-object v2, Lcom/ushahidi/android/app/data/UshahidiDatabase;->ADD_INCIDENTS_COLUMNS:[Ljava/lang/String;

    const-string v7, "_id DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchCategoriesCount()I
    .locals 6

    .prologue
    .line 948
    iget-object v3, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(_id) FROM categories"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 951
    .local v0, "mCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 953
    .local v1, "result":I
    if-nez v0, :cond_0

    move v2, v1

    .line 961
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 957
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 958
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 959
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v1

    .line 961
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public fetchCheckinsByUserdId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string v0, "SELECT * FROM checkins WHERE user_id = ? ORDER BY _id COLLATE NOCASE"

    .line 771
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchCheckinsMediaByCheckinId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 788
    const-string v0, "SELECT * FROM checkin_media WHERE media_checkin_id = ? ORDER BY media_checkin_id COLLATE NOCASE"

    .line 790
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchDeploymentById(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    const-string v1, "rowid = ?"

    .line 741
    .local v1, "selection":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v4

    .line 744
    .local v2, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v4

    const-string v3, "name"

    aput-object v3, v0, v5

    const/4 v3, 0x2

    const-string v4, "latitude"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "longitude"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "url"

    aput-object v4, v0, v3

    .line 749
    .local v0, "columns":[Ljava/lang/String;
    invoke-direct {p0, v1, v2, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public fetchDeploymentByIdAndUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 753
    const-string v0, "SELECT * FROM deployment WHERE _id = ? AND url =? ORDER BY name COLLATE NOCASE"

    .line 755
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchDeploymentUrlById(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 761
    const-string v0, "SELECT url FROM deployment WHERE _id = ? "

    .line 763
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchIncidentsByCategories(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x25

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "likeFilter":Ljava/lang/String;
    const-string v1, "SELECT * FROM incidents WHERE incident_categories LIKE ? ORDER BY incident_title COLLATE NOCASE"

    .line 634
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public fetchIncidentsById(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 640
    const-string v0, "SELECT * FROM incidents WHERE _id = ? ORDER BY incident_title COLLATE NOCASE"

    .line 642
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchMaxId()I
    .locals 6

    .prologue
    .line 908
    iget-object v3, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT MAX(_id) FROM incidents"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 911
    .local v0, "mCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 913
    .local v1, "result":I
    if-nez v0, :cond_0

    move v2, v1

    .line 921
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 917
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 918
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 919
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v1

    .line 921
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public fetchUnreadCount()I
    .locals 6

    .prologue
    .line 925
    iget-object v3, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(_id) FROM incidents WHERE is_unread = 1"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 928
    .local v0, "mCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 930
    .local v1, "result":I
    if-nez v0, :cond_0

    move v2, v1

    .line 938
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 934
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 935
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 936
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v1

    .line 938
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public fetchUsersById(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 778
    const-string v0, "SELECT * FROM users WHERE _id = ? ORDER BY user_name COLLATE NOCASE"

    .line 780
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getDeployment(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "rowId"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    .line 679
    const-string v0, "rowid = ?"

    .line 680
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 684
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, v0, v1, p2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public getDeploymentMatches(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    .line 658
    const-string v0, "name MATCH ?"

    .line 659
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 663
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, v0, v1, p2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public limitRows(Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "KEY_ID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1129
    iget-object v3, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DESC LIMIT 1 OFFSET ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1134
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1136
    .local v1, "deleted":I
    if-eqz v0, :cond_1

    .line 1137
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1138
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1139
    .local v2, "limitId":I
    iget-object v3, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1141
    .end local v2    # "limitId":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1144
    :cond_1
    return v1
.end method

.method public markAllCategoriesRead()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 902
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 903
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_unread"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 904
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method public markAllIncidentssRead()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 896
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 897
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_unread"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "incidents"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method public open()Lcom/ushahidi/android/app/data/UshahidiDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;

    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDbHelper:Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;

    .line 481
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDbHelper:Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 483
    return-object p0
.end method

.method public updateDeployment(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1111
    const-string v0, "UPDATE deployment SET deployment_active= ? WHERE _id= ?"

    .line 1114
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/ushahidi/android/app/data/UshahidiDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1117
    return-void
.end method
