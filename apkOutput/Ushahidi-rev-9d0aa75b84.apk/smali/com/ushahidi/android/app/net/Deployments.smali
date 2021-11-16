.class public Lcom/ushahidi/android/app/net/Deployments;
.super Ljava/lang/Object;
.source "Deployments.java"


# static fields
.field private static final DEPLOYMENT_SEARCH_URL:Ljava/lang/String; = "http://tracker.ushahidi.com/list/"


# instance fields
.field private deploymentJson:Ljava/lang/String;

.field private deploymentsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushahidi/android/app/data/DeploymentsData;",
            ">;"
        }
    .end annotation
.end field

.field private jsonObject:Lorg/json/JSONObject;

.field private lat:D

.field private lon:D

.field private mDistance:Ljava/lang/String;

.field private processingResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/net/Deployments;->deploymentJson:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static GetText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 114
    const-string v3, ""

    .line 115
    .local v3, "text":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 116
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 119
    .local v0, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v4

    .line 126
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    :goto_1
    return-object v3

    .line 122
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 126
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 127
    :catch_1
    move-exception v4

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v4

    .line 126
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 128
    :goto_2
    throw v4

    .line 127
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public fetchDeployments(Ljava/lang/String;Landroid/location/Location;)Z
    .locals 6
    .param p1, "distance"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    iput-object p1, p0, Lcom/ushahidi/android/app/net/Deployments;->mDistance:Ljava/lang/String;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iput-boolean v1, p0, Lcom/ushahidi/android/app/net/Deployments;->processingResult:Z

    .line 60
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ushahidi/android/app/net/Deployments;->lat:D

    .line 61
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ushahidi/android/app/net/Deployments;->lon:D

    .line 63
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/Deployments;->getDeploymentsFromOnline()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ushahidi/android/app/net/Deployments;->deploymentJson:Ljava/lang/String;

    .line 64
    iget-object v3, p0, Lcom/ushahidi/android/app/net/Deployments;->deploymentJson:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 66
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/ushahidi/android/app/net/Deployments;->deploymentJson:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    .line 67
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/Deployments;->retrieveDeploymentJson()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/ushahidi/android/app/net/Deployments;->deploymentsData:Ljava/util/ArrayList;

    .line 69
    iget-object v3, p0, Lcom/ushahidi/android/app/net/Deployments;->deploymentsData:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 70
    sget-object v3, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v3}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAllAutoDeployment()Z

    .line 71
    sget-object v3, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    iget-object v4, p0, Lcom/ushahidi/android/app/net/Deployments;->deploymentsData:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->addDeployment(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    iput-boolean v2, p0, Lcom/ushahidi/android/app/net/Deployments;->processingResult:Z

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    move v1, v2

    .line 80
    goto :goto_0
.end method

.method public getDeploymentsFromOnline()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "http://tracker.ushahidi.com/list/"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "fullUrl":Ljava/lang/StringBuilder;
    const-string v5, "?return_vars=name,latitude,longitude,description,url,category_id,discovery_date,id"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v5, "&units=km"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&distance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->mDistance:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&lat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/ushahidi/android/app/net/Deployments;->lat:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&lon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/ushahidi/android/app/net/Deployments;->lon:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetURL(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 95
    .local v2, "response":Lorg/apache/http/HttpResponse;
    if-nez v2, :cond_1

    .line 110
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 98
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 100
    .local v3, "statusCode":I
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_0

    .line 102
    invoke-static {v2}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 105
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public retrieveDeploymentJson()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushahidi/android/app/data/DeploymentsData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 135
    .local v4, "names":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "deploymentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/data/DeploymentsData;>;"
    iget-boolean v6, p0, Lcom/ushahidi/android/app/net/Deployments;->processingResult:Z

    if-eqz v6, :cond_2

    .line 137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 138
    new-instance v0, Lcom/ushahidi/android/app/data/DeploymentsData;

    invoke-direct {v0}, Lcom/ushahidi/android/app/data/DeploymentsData;-><init>()V

    .line 141
    .local v0, "deploymentData":Lcom/ushahidi/android/app/data/DeploymentsData;
    :try_start_0
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setId(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "discovery_date"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setDate(Ljava/lang/String;)V

    .line 145
    const-string v6, "0"

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setActive(Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "latitude"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setLat(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "longitude"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setLon(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setName(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setUrl(Ljava/lang/String;)V

    .line 156
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "description"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    .line 159
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setDesc(Ljava/lang/String;)V

    .line 164
    :goto_1
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "category_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setCatId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 161
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/ushahidi/android/app/net/Deployments;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "description"

    .line 162
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/data/DeploymentsData;->setDesc(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 168
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ushahidi/android/app/net/Deployments;->processingResult:Z

    move-object v1, v5

    .line 175
    .end local v0    # "deploymentData":Lcom/ushahidi/android/app/data/DeploymentsData;
    .end local v1    # "deploymentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/data/DeploymentsData;>;"
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    :cond_1
    :goto_2
    return-object v1

    .restart local v1    # "deploymentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ushahidi/android/app/data/DeploymentsData;>;"
    :cond_2
    move-object v1, v5

    goto :goto_2
.end method
