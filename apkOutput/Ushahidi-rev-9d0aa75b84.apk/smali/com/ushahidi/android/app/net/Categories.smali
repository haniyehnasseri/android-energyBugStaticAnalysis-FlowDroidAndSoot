.class public Lcom/ushahidi/android/app/net/Categories;
.super Ljava/lang/Object;
.source "Categories.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllCategoriesFromWeb()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 34
    const-string v0, ""

    .line 36
    .local v0, "categories":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "uriBuilder":Ljava/lang/StringBuilder;
    const-string v5, "/api?task=categories"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v5, "&resp=xml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetURL(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 42
    .local v1, "response":Lorg/apache/http/HttpResponse;
    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v4

    .line 46
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 48
    .local v2, "statusCode":I
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_0

    .line 49
    invoke-static {v1}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/ushahidi/android/app/UshahidiPref;->categoriesResponse:Ljava/lang/String;

    .line 51
    const/4 v4, 0x1

    goto :goto_0
.end method
