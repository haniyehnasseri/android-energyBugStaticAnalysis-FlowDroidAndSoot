.class public Lcom/ushahidi/android/app/checkin/ListCheckinText;
.super Ljava/lang/Object;
.source "ListCheckinText.java"


# instance fields
.field private arrow:Landroid/graphics/drawable/Drawable;

.field private categories:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:I

.field private isSelectable:Z

.field private location:Ljava/lang/String;

.field private media:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thumbnail:Landroid/graphics/drawable/Drawable;

.field private thumbnailUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->title:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->date:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->status:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->description:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->location:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->media:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->categories:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->id:I

    .line 61
    iput-object v1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->arrow:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "media"    # Ljava/lang/String;
    .param p8, "categories"    # Ljava/lang/String;
    .param p9, "id"    # I
    .param p10, "arrow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object p2, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->title:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->date:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->status:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->description:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->location:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->media:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->categories:Ljava/lang/String;

    .line 75
    iput p9, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->id:I

    .line 76
    iput-object p10, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->arrow:Landroid/graphics/drawable/Drawable;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "media"    # Ljava/lang/String;
    .param p8, "categories"    # Ljava/lang/String;
    .param p9, "id"    # I
    .param p10, "arrow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->thumbnailUri:Landroid/net/Uri;

    .line 83
    iput-object p2, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->title:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->date:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->status:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->description:Ljava/lang/String;

    .line 87
    iput-object p6, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->location:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->media:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->categories:Ljava/lang/String;

    .line 90
    iput p9, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->id:I

    .line 91
    iput-object p10, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->arrow:Landroid/graphics/drawable/Drawable;

    .line 92
    return-void
.end method


# virtual methods
.method public getArrow()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->arrow:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->id:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->media:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->isSelectable:Z

    return v0
.end method

.method public setArrow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "arrow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->arrow:Landroid/graphics/drawable/Drawable;

    .line 185
    return-void
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0
    .param p1, "categories"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->categories:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->date:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->description:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->id:I

    .line 177
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->location:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .locals 0
    .param p1, "media"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->media:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->isSelectable:Z

    .line 100
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->status:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 104
    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->thumbnailUri:Landroid/net/Uri;

    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/ListCheckinText;->title:Ljava/lang/String;

    .line 120
    return-void
.end method
