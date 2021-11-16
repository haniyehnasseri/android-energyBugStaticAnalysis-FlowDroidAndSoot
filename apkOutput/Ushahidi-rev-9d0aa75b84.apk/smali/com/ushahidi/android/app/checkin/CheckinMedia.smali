.class public Lcom/ushahidi/android/app/checkin/CheckinMedia;
.super Ljava/lang/Object;
.source "CheckinMedia.java"


# instance fields
.field private checkinId:I

.field private mediaId:I

.field private mediumLink:Ljava/lang/String;

.field private thumbnailLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediaId:I

    .line 8
    iput v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->checkinId:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->thumbnailLink:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediumLink:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediaId:I

    .line 16
    iput v1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->checkinId:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->thumbnailLink:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediumLink:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getCheckinId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->checkinId:I

    return v0
.end method

.method public getMediaId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediaId:I

    return v0
.end method

.method public getMediumLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediumLink:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->thumbnailLink:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckinId(I)V
    .locals 0
    .param p1, "checkinId"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->checkinId:I

    .line 28
    return-void
.end method

.method public setMediaId(I)V
    .locals 0
    .param p1, "mediaId"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediaId:I

    .line 24
    return-void
.end method

.method public setMediumLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediumLink"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->mediumLink:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setThumbnailLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailLink"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinMedia;->thumbnailLink:Ljava/lang/String;

    .line 32
    return-void
.end method
