.class public Lcom/ushahidi/android/app/net/ClientHttpRequest;
.super Ljava/lang/Object;
.source "ClientHttpRequest.java"


# static fields
.field private static random:Ljava/util/Random;


# instance fields
.field boundary:Ljava/lang/String;

.field connection:Ljava/net/URLConnection;

.field cookies:Ljava/util/Map;

.field os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URLConnection;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->os:Ljava/io/OutputStream;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->cookies:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->boundary:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connection:Ljava/net/URLConnection;

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 77
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private boundary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "--"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->boundary:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private static pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const v3, 0x7a120

    new-array v0, v3, [B

    .line 180
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 181
    .local v2, "total":I
    monitor-enter p0

    .line 182
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "nread":I
    if-ltz v1, :cond_0

    .line 183
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 184
    add-int/2addr v2, v1

    goto :goto_0

    .line 186
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 188
    const/4 v0, 0x0

    .line 189
    return-void

    .line 186
    .end local v1    # "nread":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .param p5, "name3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 9
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .param p5, "name3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/Object;
    .param p7, "name4"    # Ljava/lang/String;
    .param p8, "value4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "cookies"    # Ljava/util/Map;
    .param p2, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post([Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "cookies"    # [Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post([Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private postCookies()V
    .locals 6

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, "cookieList":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->cookies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .local v1, "entry":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 114
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connection:Ljava/net/URLConnection;

    const-string v4, "Cookie"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    return-void
.end method

.method protected static randomString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->newline()V

    .line 155
    const-string v0, "Content-Disposition: form-data; name=\""

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 157
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(C)V

    .line 158
    return-void
.end method


# virtual methods
.method protected connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->os:Ljava/io/OutputStream;

    .line 32
    :cond_0
    return-void
.end method

.method protected newline()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connect()V

    .line 46
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public post()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->boundary()V

    .line 272
    const-string v0, "--"

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->writeln(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 274
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0, p3, p4}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .param p5, "name3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 7
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .param p5, "name3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/Object;
    .param p7, "name4"    # Ljava/lang/String;
    .param p8, "value4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 394
    invoke-virtual/range {v0 .. v6}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .param p1, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameters(Ljava/util/Map;)V

    .line 287
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookies"    # Ljava/util/Map;
    .param p2, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setCookies(Ljava/util/Map;)V

    .line 314
    invoke-virtual {p0, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameters(Ljava/util/Map;)V

    .line 315
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post([Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameters([Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public post([Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookies"    # [Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setCookies([Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameters([Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->post()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public setCookies(Ljava/util/Map;)V
    .locals 1
    .param p1, "cookies"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setCookies([Ljava/lang/String;)V
    .locals 3
    .param p1, "cookies"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 151
    :cond_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 149
    aget-object v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 223
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 233
    check-cast p2, Ljava/io/File;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/io/File;)V

    .line 237
    :goto_0
    return-void

    .line 235
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->boundary()V

    .line 168
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->writeName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->newline()V

    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->newline()V

    .line 171
    invoke-virtual {p0, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->writeln(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->boundary()V

    .line 201
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->writeName(Ljava/lang/String;)V

    .line 202
    const-string v1, "; filename=\""

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, p2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 204
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(C)V

    .line 205
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->newline()V

    .line 206
    const-string v1, "Content-Type: "

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connection:Ljava/net/URLConnection;

    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    .line 209
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->writeln(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->newline()V

    .line 211
    iget-object v1, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->os:Ljava/io/OutputStream;

    invoke-static {p3, v1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 212
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->newline()V

    .line 213
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 4
    .param p1, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_1

    .line 251
    :cond_0
    return-void

    .line 247
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setParameters([Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    if-nez p1, :cond_1

    .line 263
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 261
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected write(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connect()V

    .line 36
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 37
    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connect()V

    .line 41
    iget-object v0, p0, Lcom/ushahidi/android/app/net/ClientHttpRequest;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 42
    return-void
.end method

.method protected writeln(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->connect()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->write(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/ushahidi/android/app/net/ClientHttpRequest;->newline()V

    .line 53
    return-void
.end method
