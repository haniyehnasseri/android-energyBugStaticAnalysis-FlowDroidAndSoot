.class public Lcom/ushahidi/android/app/net/UshahidiGeocoder;
.super Ljava/lang/Object;
.source "UshahidiGeocoder.java"


# static fields
.field private static final GOOGLE_MAPS_GEO_URL:Ljava/lang/String; = "http://maps.google.com/maps/geo?q="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverseGeocode(DD)Ljava/lang/String;
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://maps.google.com/maps/geo?q="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "uriBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v4, "&output=json&oe=utf8&sensor=true&key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const v4, 0x7f0600d6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetURL(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 51
    .local v0, "response":Lorg/apache/http/HttpResponse;
    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v3

    .line 55
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 57
    .local v1, "statusCode":I
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_0

    .line 59
    invoke-static {v0}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->GetText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
