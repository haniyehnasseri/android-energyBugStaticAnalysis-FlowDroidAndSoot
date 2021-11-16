.class public Lcom/ushahidi/android/app/UshahidiApplication;
.super Landroid/app/Application;
.source "UshahidiApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UshahidiApplication"

.field public static mApi:Lcom/ushahidi/android/app/net/UshahidiHttpClient;

.field public static mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

.field public static mImageManager:Lcom/ushahidi/android/app/ImageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private cleanupImages()V
    .locals 4

    .prologue
    .line 61
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v2, "keepers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllIncidents()Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "incident_media"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "imageIndex":I
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    .end local v1    # "imageIndex":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    sget-object v3, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllCategories()Landroid/database/Cursor;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    const-string v3, "incident_media"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 79
    .restart local v1    # "imageIndex":I
    :cond_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    .end local v1    # "imageIndex":I
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    new-instance v0, Lcom/ushahidi/android/app/ImageManager;

    invoke-direct {v0}, Lcom/ushahidi/android/app/ImageManager;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mImageManager:Lcom/ushahidi/android/app/ImageManager;

    .line 46
    new-instance v0, Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    .line 47
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->open()Lcom/ushahidi/android/app/data/UshahidiDatabase;

    .line 48
    new-instance v0, Lcom/ushahidi/android/app/net/UshahidiHttpClient;

    invoke-direct {v0}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mApi:Lcom/ushahidi/android/app/net/UshahidiHttpClient;

    .line 50
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/ushahidi/android/app/UshahidiApplication;->cleanupImages()V

    .line 55
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->close()V

    .line 57
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 58
    return-void
.end method
