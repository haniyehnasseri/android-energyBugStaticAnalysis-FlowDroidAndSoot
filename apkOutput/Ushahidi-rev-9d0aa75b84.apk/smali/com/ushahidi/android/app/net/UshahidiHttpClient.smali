.class public Lcom/ushahidi/android/app/net/UshahidiHttpClient;
.super Ljava/lang/Object;
.source "UshahidiHttpClient.java"


# static fields
.field public static final INCIDENT_AMPM:Ljava/lang/String; = "incident_ampm"

.field public static final INCIDENT_CATEGORY:Ljava/lang/String; = "incident_category"

.field public static final INCIDENT_DATE:Ljava/lang/String; = "incident_date"

.field public static final INCIDENT_DESCRIPTION:Ljava/lang/String; = "incident_description"

.field public static final INCIDENT_HOUR:Ljava/lang/String; = "incident_hour"

.field public static final INCIDENT_MINUTE:Ljava/lang/String; = "incident_minute"

.field public static final INCIDENT_TITLE:Ljava/lang/String; = "incident_title"

.field private static final IO_BUFFER_SIZE:I = 0x200

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LOCATION_NAME:Ljava/lang/String; = "location_name"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final PERSON_EMAIL:Ljava/lang/String; = "person_email"

.field public static final PERSON_FIRST:Ljava/lang/String; = "person_first"

.field public static final PERSON_LAST:Ljava/lang/String; = "person_last"

.field public static final PHOTO:Ljava/lang/String; = "filename"

.field public static final TASK:Ljava/lang/String; = "task"

.field public static final blankNVPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->blankNVPS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 273
    const-string v3, ""

    .line 274
    .local v3, "text":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 275
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 278
    .local v0, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
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

    .line 282
    :catch_0
    move-exception v4

    .line 285
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 289
    :goto_1
    return-object v3

    .line 281
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 285
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 286
    :catch_1
    move-exception v4

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v4

    .line 285
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 287
    :goto_2
    throw v4

    .line 286
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static GetText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 264
    const-string v0, ""

    .line 266
    .local v0, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetText(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 267
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static GetURL(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 92
    const/4 v3, 0x1

    sput-boolean v3, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z

    .line 96
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "User-Agent"

    const-string v4, "Ushahidi-Android/1.0)"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v3, Lcom/ushahidi/android/app/UshahidiService;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 102
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    sput-boolean v5, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z

    .line 111
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static PostFileUpload(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 10
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 162
    const/4 v1, 0x0

    .line 165
    .local v1, "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "url":Ljava/net/URL;
    new-instance v2, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v2, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .local v2, "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    :try_start_1
    const-string v7, "task"

    const-string v5, "task"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v7, "incident_title"

    const-string v5, "incident_title"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v7, "incident_description"

    const-string v5, "incident_description"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v7, "incident_date"

    const-string v5, "incident_date"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v7, "incident_hour"

    const-string v5, "incident_hour"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v7, "incident_minute"

    const-string v5, "incident_minute"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v7, "incident_ampm"

    const-string v5, "incident_ampm"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v7, "incident_category"

    const-string v5, "incident_category"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v7, "latitude"

    const-string v5, "latitude"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v7, "longitude"

    const-string v5, "longitude"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v7, "location_name"

    const-string v5, "location_name"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v7, "person_first"

    const-string v5, "person_first"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v7, "person_last"

    const-string v5, "person_last"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v7, "person_email"

    const-string v5, "person_email"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v7, "HTTP Client:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filename:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v5, "filename"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v5, "filename"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    const-string v7, "incident_photo[]"

    new-instance v8, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v5, "filename"

    .line 185
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2, v7, v8}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/io/File;)V

    .line 187
    :cond_0
    invoke-virtual {v2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v3

    .line 189
    .local v3, "serverInput":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ushahidi/android/app/util/Util;->extractPayloadJSON(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    const/4 v5, 0x1

    move-object v1, v2

    .line 198
    .end local v2    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .end local v3    # "serverInput":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    :goto_0
    return v5

    .line 194
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/net/MalformedURLException;
    :goto_1
    move v5, v6

    .line 195
    goto :goto_0

    .end local v0    # "ex":Ljava/net/MalformedURLException;
    .end local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .restart local v2    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .restart local v3    # "serverInput":Ljava/io/InputStream;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    move-object v1, v2

    .end local v2    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .restart local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    move v5, v6

    .line 198
    goto :goto_0

    .line 194
    .end local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .end local v3    # "serverInput":Ljava/io/InputStream;
    .restart local v2    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .restart local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    goto :goto_1
.end method

.method public static PostURL(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->PostURL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static PostURL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p0, "URL"    # Ljava/lang/String;
    .param p2, "Referer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 116
    const/4 v4, 0x1

    sput-boolean v4, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z

    .line 120
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "httpost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 123
    const-string v4, "Referer"

    invoke-virtual {v1, v4, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 128
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.expect-continue"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 129
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :cond_1
    :try_start_2
    sget-object v4, Lcom/ushahidi/android/app/UshahidiService;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 142
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    sput-boolean v4, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    .end local v1    # "httpost":Lorg/apache/http/client/methods/HttpPost;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 130
    .restart local v1    # "httpost":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 133
    const/4 v4, 0x0

    sput-boolean v4, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 134
    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "httpost":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    sput-boolean v7, Lcom/ushahidi/android/app/UshahidiPref;->httpRunning:Z

    move-object v2, v3

    .line 153
    goto :goto_0

    .line 145
    .restart local v1    # "httpost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    .line 256
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IO"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 243
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 244
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public static fetchImage(Ljava/lang/String;)[B
    .locals 7
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 206
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x200

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    .local v0, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x1000

    invoke-direct {v4, v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v2, v4}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 211
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 214
    invoke-static {v2}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v4}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 223
    invoke-static {v2}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v4}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    move-object v1, v2

    .line 227
    .end local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v5

    .line 218
    :catch_0
    move-exception v5

    .line 223
    :goto_1
    invoke-static {v1}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v3}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    .line 227
    const/4 v5, 0x0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v3}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .line 223
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 218
    .end local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method
