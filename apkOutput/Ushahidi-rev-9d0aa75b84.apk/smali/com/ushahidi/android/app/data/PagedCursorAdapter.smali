.class public Lcom/ushahidi/android/app/data/PagedCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PagedCursorAdapter.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mProjection:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "projection"    # [Ljava/lang/String;
    .param p8, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    iput-object p7, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mProjection:[Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mUri:Landroid/net/Uri;

    .line 59
    iput-object p8, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    const-string v1, "LIMIT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    const-string v4, "LIMIT 0,"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "newSortOrder":Ljava/lang/String;
    iput-object v6, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    .line 75
    .end local v6    # "newSortOrder":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/ushahidi/android/app/data/PagedCursorAdapter;->mSortOrder:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
