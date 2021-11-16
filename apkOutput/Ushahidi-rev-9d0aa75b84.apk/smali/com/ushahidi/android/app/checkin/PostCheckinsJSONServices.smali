.class public Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;
.super Ljava/lang/Object;
.source "PostCheckinsJSONServices.java"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private processingResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "JSONString"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->processingResult:Z

    .line 22
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->jsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->processingResult:Z

    goto :goto_0
.end method

.method private getErrorObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-boolean v2, p0, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->processingResult:Z

    if-eqz v2, :cond_0

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->getErrorObject()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :cond_0
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-boolean v2, p0, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->processingResult:Z

    if-eqz v2, :cond_0

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->getErrorObject()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public isProcessingResult()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/ushahidi/android/app/checkin/PostCheckinsJSONServices;->processingResult:Z

    return v0
.end method
