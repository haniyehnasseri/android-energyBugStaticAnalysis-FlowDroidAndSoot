.class public Lcom/ushahidi/android/app/data/DeploymentProvider;
.super Landroid/content/ContentProvider;
.source "DeploymentProvider.java"


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEPLOYMENT_DESC_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.ushahidi.searchabledeployment"

.field public static final DEPLOYMENT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.ushahidi.searchabledeployment"

.field private static final GET_DEPLOYMENT:I = 0x1

.field private static final REFRESH_SHORTCUT:I = 0x3

.field private static final SEARCH_DEPLOYMENTS:I = 0x0

.field private static final SEARCH_SUGGEST:I = 0x2

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "com.ushahidi.android.app.data.deploymentprovider"

    sput-object v0, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deployment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/data/DeploymentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    invoke-static {}, Lcom/ushahidi/android/app/data/DeploymentProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/data/DeploymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 63
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 65
    .local v0, "matcher":Landroid/content/UriMatcher;
    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "deployment"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "deployment/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v1, Lcom/ushahidi/android/app/data/DeploymentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-object v0
.end method

.method private getDeployment(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "rowId":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "desc"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "url"

    aput-object v3, v0, v2

    .line 159
    .local v0, "columns":[Ljava/lang/String;
    sget-object v2, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v2, v1, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getDeployment(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 129
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    .line 137
    .local v0, "columns":[Ljava/lang/String;
    sget-object v1, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v1, p1, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getDeploymentMatches(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private refreshShortcut(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "rowId":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "desc"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "url"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "suggest_shortcut_id"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "suggest_intent_data_id"

    aput-object v3, v0, v2

    .line 180
    .local v0, "columns":[Ljava/lang/String;
    sget-object v2, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v2, v1, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getDeployment(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 142
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "url"

    aput-object v2, v0, v1

    .line 147
    .local v0, "columns":[Ljava/lang/String;
    const-string v1, "Search Query"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v1, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v1, p1, v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->getDeploymentMatches(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 189
    sget-object v0, Lcom/ushahidi/android/app/data/DeploymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.ushahidi.searchabledeployment"

    .line 197
    :goto_0
    return-object v0

    .line 193
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.ushahidi.searchabledeployment"

    goto :goto_0

    .line 195
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 197
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 105
    sget-object v0, Lcom/ushahidi/android/app/data/DeploymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    if-nez p4, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectionArgs must be provided for the Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    aget-object v0, p4, v1

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/data/DeploymentProvider;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 113
    :pswitch_1
    if-nez p4, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectionArgs must be provided for the Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    aget-object v0, p4, v1

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/data/DeploymentProvider;->search(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/data/DeploymentProvider;->getDeployment(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/data/DeploymentProvider;->refreshShortcut(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
