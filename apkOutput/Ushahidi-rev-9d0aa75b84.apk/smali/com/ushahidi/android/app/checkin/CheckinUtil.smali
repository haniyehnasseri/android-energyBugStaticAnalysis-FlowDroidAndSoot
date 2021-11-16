.class public Lcom/ushahidi/android/app/checkin/CheckinUtil;
.super Ljava/lang/Object;
.source "CheckinUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 17
    const-string v1, "phone"

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 19
    .local v0, "TelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCheckinMedia(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "checkinId"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v3, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v3, p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchCheckinsMediaByCheckinId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 35
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 36
    .local v1, "mediaLink":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    const-string v3, "media_medium_link"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 38
    .local v2, "mediaMediumLink":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    .end local v2    # "mediaMediumLink":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 42
    return-object v1
.end method

.method public static getCheckinThumbnail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "checkinId"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v3, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v3, p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchCheckinsMediaByCheckinId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 47
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 48
    .local v2, "thumbnail":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "media_thumbnail_link"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "mediaMediumLink":I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .end local v1    # "mediaMediumLink":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 53
    return-object v2
.end method

.method public static getCheckinUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v3, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v3, p0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchUsersById(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 24
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 25
    .local v1, "user":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const-string v3, "user_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 27
    .local v2, "userName":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    .end local v2    # "userName":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 30
    return-object v1
.end method
