.class public Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;
.super Ljava/lang/Object;
.source "RetrieveCheckinsJSONServices.java"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private processingResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "JSONString"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->processingResult:Z

    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->jsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->processingResult:Z

    goto :goto_0
.end method

.method private getCheckinsArray()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->getCheckinsObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "checkins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCheckinsObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCheckinsUsersArray()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->getCheckinsObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCheckinsList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 86
    iget-boolean v7, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->processingResult:Z

    if-eqz v7, :cond_2

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "checkinsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/checkin/Checkin;>;"
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->getCheckinsArray()Lorg/json/JSONArray;

    move-result-object v1

    .line 89
    .local v1, "checkinsArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 91
    .local v0, "arraySize":I
    const/4 v3, 0x0

    .local v3, "checkinsLoop":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 92
    new-instance v4, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-direct {v4}, Lcom/ushahidi/android/app/checkin/Checkin;-><init>()V

    .line 95
    .local v4, "currentCheckin":Lcom/ushahidi/android/app/checkin/Checkin;
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "loc"

    .line 97
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-virtual {v4, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setLoc(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "lat"

    .line 99
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual {v4, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setLat(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "lon"

    .line 101
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v4, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setLon(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "date"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setDate(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "msg"

    .line 105
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-virtual {v4, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setMsg(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "user"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ushahidi/android/app/checkin/Checkin;->setUser(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "media"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 109
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "media"

    .line 110
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "id"

    .line 111
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {p0, v7, v8}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->savedMediaCheckinsList(Lorg/json/JSONArray;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 114
    :catch_0
    move-exception v5

    .line 116
    .local v5, "e":Lorg/json/JSONException;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->processingResult:Z

    move-object v2, v6

    .line 126
    .end local v0    # "arraySize":I
    .end local v1    # "checkinsArray":Lorg/json/JSONArray;
    .end local v2    # "checkinsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/checkin/Checkin;>;"
    .end local v3    # "checkinsLoop":I
    .end local v4    # "currentCheckin":Lcom/ushahidi/android/app/checkin/Checkin;
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-object v2

    :cond_2
    move-object v2, v6

    goto :goto_1
.end method

.method public getCheckinsUsersList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushahidi/android/app/data/UsersData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 59
    iget-boolean v6, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->processingResult:Z

    if-eqz v6, :cond_1

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "checkinsUsersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/data/UsersData;>;"
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->getCheckinsUsersArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 63
    .local v0, "checkinsUsersArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 64
    new-instance v4, Lcom/ushahidi/android/app/data/UsersData;

    invoke-direct {v4}, Lcom/ushahidi/android/app/data/UsersData;-><init>()V

    .line 67
    .local v4, "users":Lcom/ushahidi/android/app/data/UsersData;
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ushahidi/android/app/data/UsersData;->setId(I)V

    .line 69
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ushahidi/android/app/data/UsersData;->setUserName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ushahidi/android/app/data/UsersData;->setColor(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Lorg/json/JSONException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->processingResult:Z

    move-object v1, v5

    .line 82
    .end local v0    # "checkinsUsersArray":Lorg/json/JSONArray;
    .end local v1    # "checkinsUsersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/data/UsersData;>;"
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "index":I
    .end local v4    # "users":Lcom/ushahidi/android/app/data/UsersData;
    :cond_0
    :goto_1
    return-object v1

    :cond_1
    move-object v1, v5

    goto :goto_1
.end method

.method public isProcessingResult()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/ushahidi/android/app/checkin/RetrieveCheckinsJSONServices;->processingResult:Z

    return v0
.end method

.method public savedMediaCheckinsList(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 9
    .param p1, "checkinsCheckinsMediaArray"    # Lorg/json/JSONArray;
    .param p2, "checkinId"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "checkinsMediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/checkin/CheckinMedia;>;"
    const-string v2, ""

    .line 133
    .local v2, "fileName":Ljava/lang/String;
    const-string v4, ""

    .line 134
    .local v4, "thumbNail":Ljava/lang/String;
    const-string v6, ""

    .line 135
    .local v6, "url":Ljava/lang/String;
    const-string v5, ""

    .line 136
    .local v5, "thumbnailUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 137
    new-instance v0, Lcom/ushahidi/android/app/checkin/CheckinMedia;

    invoke-direct {v0}, Lcom/ushahidi/android/app/checkin/CheckinMedia;-><init>()V

    .line 140
    .local v0, "checkinMedia":Lcom/ushahidi/android/app/checkin/CheckinMedia;
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    .line 141
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->setMediaId(I)V

    .line 142
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->setCheckinId(I)V

    .line 144
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "medium"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "medium"

    .line 149
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    .line 148
    invoke-static {v7, v2, v8}, Lcom/ushahidi/android/app/ImageManager;->saveImageFromURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v2}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->setMediumLink(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 156
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 155
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 158
    sget-object v7, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v5, v4, v7}, Lcom/ushahidi/android/app/ImageManager;->saveImageFromURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v4}, Lcom/ushahidi/android/app/checkin/CheckinMedia;->setThumbnailLink(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "checkinMedia":Lcom/ushahidi/android/app/checkin/CheckinMedia;
    :cond_0
    sget-object v7, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v7, v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addCheckinMedia(Ljava/util/List;)V

    .line 168
    return-void

    .line 161
    .restart local v0    # "checkinMedia":Lcom/ushahidi/android/app/checkin/CheckinMedia;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
