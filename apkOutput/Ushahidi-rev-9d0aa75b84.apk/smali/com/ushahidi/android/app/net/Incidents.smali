.class public Lcom/ushahidi/android/app/net/Incidents;
.super Ljava/lang/Object;
.source "Incidents.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllIncidentsFromWeb()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 33
    const-string v0, ""

    .line 35
    .local v0, "incidents":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v3, "uriBuilder":Ljava/lang/StringBuilder;
    const-string v5, "/api?task=incidents"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v5, "&by=all"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&limit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/ushahidi/android/app/UshahidiPref;->totalReports:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v5, "&resp=xml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetURL(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 43
    .local v1, "response":Lorg/apache/http/HttpResponse;
    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v4

    .line 47
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 49
    .local v2, "statusCode":I
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_0

    .line 51
    invoke-static {v1}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->incidentsResponse:Ljava/lang/String;

    .line 53
    const/4 v4, 0x1

    goto :goto_0
.end method
