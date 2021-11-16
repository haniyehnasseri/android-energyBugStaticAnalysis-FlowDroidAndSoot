.class public Lcom/ushahidi/android/app/checkin/NetworkServices;
.super Ljava/lang/Object;
.source "NetworkServices.java"


# static fields
.field public static fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 108
    const-string v3, ""

    .line 109
    .local v3, "text":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 110
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 113
    .local v0, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
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

    .line 117
    :catch_0
    move-exception v4

    .line 120
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    :goto_1
    return-object v3

    .line 116
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 120
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v4

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v4

    .line 120
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 122
    :goto_2
    throw v4

    .line 121
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static PostFileUpload(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 55
    .local v0, "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "url":Ljava/net/URL;
    new-instance v1, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v1, v3}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .local v1, "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    :try_start_1
    const-string v5, "task"

    const-string v4, "task"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v5, "action"

    const-string v4, "action"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v5, "mobileid"

    const-string v4, "mobileid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v5, "lat"

    const-string v4, "lat"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v5, "lon"

    const-string v4, "lon"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v5, "message"

    const-string v4, "message"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v5, "firstname"

    const-string v4, "firstname"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v5, "lastname"

    const-string v4, "lastname"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v5, "email"

    const-string v4, "email"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "filename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "filename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    :cond_0
    const-string v5, "photo"

    new-instance v6, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v4, "filename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/io/File;)V

    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v2

    .line 72
    .local v2, "serverInput":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/NetworkServices;->GetText(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v0, v1

    .line 78
    .end local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .end local v2    # "serverInput":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    .restart local v0    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    :goto_0
    return-object v4

    .line 74
    :catch_0
    move-exception v4

    .line 78
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 74
    .end local v0    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .restart local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .restart local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .restart local v0    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    goto :goto_1
.end method

.method public static getCheckins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "URL"    # Ljava/lang/String;
    .param p1, "mobileId"    # Ljava/lang/String;
    .param p2, "checkinId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "fullUrl":Ljava/lang/StringBuilder;
    const-string v6, "/api"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "url":Ljava/net/URL;
    new-instance v3, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v3, v4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    .line 88
    .local v3, "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    const-string v6, "task"

    const-string v7, "checkin"

    invoke-virtual {v3, v6, v7}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v6, "action"

    const-string v7, "get_ci"

    invoke-virtual {v3, v6, v7}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v6, "sort"

    const-string v7, "desc"

    invoke-virtual {v3, v6, v7}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v6, "sqllimit"

    sget-object v7, Lcom/ushahidi/android/app/UshahidiPref;->totalReports:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v6, "mobileid"

    invoke-virtual {v3, v6, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    const-string v6, "id"

    invoke-virtual {v3, v6, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {v3}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v2

    .line 99
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/ushahidi/android/app/checkin/NetworkServices;->GetText(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 103
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "req":Lcom/ushahidi/android/app/net/ClientHttpRequest;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static postToOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;
    .locals 5
    .param p0, "IMEI"    # Ljava/lang/String;
    .param p1, "domainName"    # Ljava/lang/String;
    .param p2, "checkinDetails"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "firstname"    # Ljava/lang/String;
    .param p5, "lastname"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "latitude"    # D
    .param p9, "longitude"    # D

    .prologue
    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v1, "myParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "urlBuilder":Ljava/lang/StringBuilder;
    const-string v3, "/api"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, "task"

    const-string v4, "checkin"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v3, "action"

    const-string v4, "ci"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v3, "mobileid"

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v3, "lat"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "lon"

    invoke-static {p9, p10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "message"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v3, "firstname"

    invoke-virtual {v1, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v3, "lastname"

    invoke-virtual {v1, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v3, "email"

    invoke-virtual {v1, v3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "filename"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ushahidi/android/app/checkin/NetworkServices;->PostFileUpload(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 46
    :goto_0
    return-object v3

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method
