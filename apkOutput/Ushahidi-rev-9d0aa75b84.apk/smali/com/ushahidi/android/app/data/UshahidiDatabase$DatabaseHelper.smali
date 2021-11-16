.class Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UshahidiDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/data/UshahidiDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    const-string v0, "ushahidi_db"

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 334
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 338
    const-string v0, "CREATE TABLE IF NOT EXISTS incidents (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_mode INTEGER, incident_verified INTEGER, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_media TEXT, incident_image TEXT, is_unread BOOLEAN NOT NULL )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    const-string v0, "CREATE TABLE IF NOT EXISTS categories (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, category_title TEXT NOT NULL, category_desc TEXT, category_color TEXT, is_unread BOOLEAN NOT NULL )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    const-string v0, "CREATE TABLE IF NOT EXISTS add_incidents (_id INTEGER PRIMARY KEY , incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_hour INTEGER, incident_minute INTEGER, incident_ampm TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_photo TEXT, incident_video TEXT, incident_news TEXT, person_first TEXT, person_last TEXT, person_email TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string v0, "CREATE TABLE IF NOT EXISTS checkins (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_id INTEGER, checkin_mesg TEXT NOT NULL, checkin_date DATE NOT NULL, checki_loc_name TEXT NOT NULL, checkin_loc_latitude TEXT NOT NULL, checkin_loc_longitude TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v0, "CREATE TABLE IF NOT EXISTS checkin_media (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, media_checkin_id INTEGER, media_thumbnail_link TEXT, media_medium_link TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    const-string v0, "CREATE TABLE IF NOT EXISTS users (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_name TEXT NOT NULL, user_color TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "CREATE VIRTUAL TABLE deployment USING fts3 (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, cat_id INTEGER, deployment_active INTEGER, name TEXT NOT NULL, discovery_date DATE NOT NULL, desc TEXT NOT NULL, url TEXT NOT NULL, latitude TEXT NOT NULL, longitude TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 350
    const-string v13, "UshahidiDatabase"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Upgrading database from version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " which destroys all old data"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v13, "CREATE TABLE IF NOT EXISTS incidents (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_mode INTEGER, incident_verified INTEGER, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_media TEXT, incident_image TEXT, is_unread BOOLEAN NOT NULL )"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    const-string v13, "incidents"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 363
    .local v10, "incidentsColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "ALTER TABLE incidents RENAME TO temp_incidents"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v13, "CREATE TABLE IF NOT EXISTS incidents (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_mode INTEGER, incident_verified INTEGER, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_media TEXT, incident_image TEXT, is_unread BOOLEAN NOT NULL )"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string v13, "incidents"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 366
    const-string v13, ","

    invoke-static {v10, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "cols":Ljava/lang/String;
    const-string v13, "INSERT INTO %s (%s) SELECT %s FROM temp_%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "incidents"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    const/4 v15, 0x2

    aput-object v9, v14, v15

    const/4 v15, 0x3

    const-string v16, "incidents"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    const-string v13, "DROP TABLE IF EXISTS temp_incidents"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    const-string v13, "CREATE TABLE IF NOT EXISTS categories (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, category_title TEXT NOT NULL, category_desc TEXT, category_color TEXT, is_unread BOOLEAN NOT NULL )"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string v13, "categories"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 374
    .local v3, "categoriesColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "ALTER TABLE categories RENAME TO temp_categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string v13, "CREATE TABLE IF NOT EXISTS categories (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, category_title TEXT NOT NULL, category_desc TEXT, category_color TEXT, is_unread BOOLEAN NOT NULL )"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    const-string v13, "categories"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 377
    const-string v13, ","

    invoke-static {v3, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "catsCols":Ljava/lang/String;
    const-string v13, "INSERT INTO %s (%s) SELECT %s FROM temp_%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "categories"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v4, v14, v15

    const/4 v15, 0x3

    const-string v16, "categories"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 380
    const-string v13, "DROP TABLE IF EXISTS temp_categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    const-string v13, "CREATE TABLE IF NOT EXISTS add_incidents (_id INTEGER PRIMARY KEY , incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_hour INTEGER, incident_minute INTEGER, incident_ampm TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_photo TEXT, incident_video TEXT, incident_news TEXT, person_first TEXT, person_last TEXT, person_email TEXT )"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    const-string v13, "add_incidents"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 385
    .local v2, "addIncidentColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "ALTER TABLE add_incidents RENAME TO temp_add_incidents"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 387
    const-string v13, "CREATE TABLE IF NOT EXISTS add_incidents (_id INTEGER PRIMARY KEY , incident_title TEXT NOT NULL, incident_desc TEXT, incident_date DATE NOT NULL, incident_hour INTEGER, incident_minute INTEGER, incident_ampm TEXT NOT NULL, incident_categories TEXT NOT NULL, incident_loc_name TEXT NOT NULL, incident_loc_latitude TEXT NOT NULL, incident_loc_longitude TEXT NOT NULL, incident_photo TEXT, incident_video TEXT, incident_news TEXT, person_first TEXT, person_last TEXT, person_email TEXT )"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    const-string v13, "add_incidents"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 389
    const-string v13, ","

    invoke-static {v2, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "addIncidentCols":Ljava/lang/String;
    const-string v13, "INSERT INTO %s (%s) SELECT %s FROM temp_%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "add_incidents"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v15, 0x3

    const-string v16, "add_incidents"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    const-string v13, "DROP TABLE IF EXISTS temp_add_incidents"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    const-string v13, "CREATE TABLE IF NOT EXISTS checkins (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_id INTEGER, checkin_mesg TEXT NOT NULL, checkin_date DATE NOT NULL, checki_loc_name TEXT NOT NULL, checkin_loc_latitude TEXT NOT NULL, checkin_loc_longitude TEXT NOT NULL)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    const-string v13, "checkins"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 397
    .local v6, "checkinsColums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "ALTER TABLE checkins RENAME TO temp_checkins"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    const-string v13, "CREATE TABLE IF NOT EXISTS checkins (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_id INTEGER, checkin_mesg TEXT NOT NULL, checkin_date DATE NOT NULL, checki_loc_name TEXT NOT NULL, checkin_loc_latitude TEXT NOT NULL, checkin_loc_longitude TEXT NOT NULL)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const-string v13, "checkins"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 400
    const-string v13, ","

    invoke-static {v6, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "checkinsCols":Ljava/lang/String;
    const-string v13, "INSERT INTO %s (%s) SELECT %s FROM temp_%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "checkins"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    const/4 v15, 0x3

    const-string v16, "checkins"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    const-string v13, "DROP TABLE IF EXISTS temp_checkins"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    const-string v13, "CREATE TABLE IF NOT EXISTS checkin_media (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, media_checkin_id INTEGER, media_thumbnail_link TEXT, media_medium_link TEXT)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const-string v13, "checkin_media"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 408
    .local v8, "checkinsMediaColums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "ALTER TABLE checkin_media RENAME TO temp_checkin_media"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    const-string v13, "CREATE TABLE IF NOT EXISTS checkin_media (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, media_checkin_id INTEGER, media_thumbnail_link TEXT, media_medium_link TEXT)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    const-string v13, "checkin_media"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 412
    const-string v13, ","

    invoke-static {v8, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, "checkinsMediaCols":Ljava/lang/String;
    const-string v13, "INSERT INTO %s (%s) SELECT %s FROM temp_%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "checkin_media"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    const/4 v15, 0x2

    aput-object v7, v14, v15

    const/4 v15, 0x3

    const-string v16, "checkin_media"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    const-string v13, "DROP TABLE IF EXISTS temp_checkin_media"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v13, "CREATE TABLE IF NOT EXISTS users (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_name TEXT NOT NULL, user_color TEXT)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 420
    const-string v13, "users"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 421
    .local v12, "usersColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "ALTER TABLE users RENAME TO temp_users"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    const-string v13, "CREATE TABLE IF NOT EXISTS users (_id INTEGER PRIMARY KEY ON CONFLICT REPLACE, user_name TEXT NOT NULL, user_color TEXT)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    const-string v13, "users"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 424
    const-string v13, ","

    invoke-static {v12, v13}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 425
    .local v11, "usersCols":Ljava/lang/String;
    const-string v13, "INSERT INTO %s (%s) SELECT %s FROM temp_%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "users"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v11, v14, v15

    const/4 v15, 0x3

    const-string v16, "users"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    const-string v13, "DROP TABLE IF EXISTS temp_users"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 430
    const-string v13, "DROP TABLE IF EXISTS deployment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p1}, Lcom/ushahidi/android/app/data/UshahidiDatabase$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    return-void
.end method
