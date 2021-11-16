.class public Lcom/ushahidi/android/app/checkin/Checkin;
.super Ljava/lang/Object;
.source "Checkin.java"


# instance fields
.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private loc:Ljava/lang/String;

.field private lon:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->loc:Ljava/lang/String;

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->lon:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/Checkin;->date:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/Checkin;->id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkinId"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinUtil;->getCheckinMedia(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->image:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .param p1, "lat"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/Checkin;->lat:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setLoc(Ljava/lang/String;)V
    .locals 0
    .param p1, "loc"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/Checkin;->loc:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLon(Ljava/lang/String;)V
    .locals 0
    .param p1, "lon"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/Checkin;->lon:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/Checkin;->msg:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinUtil;->getCheckinUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkinId"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/ushahidi/android/app/checkin/CheckinUtil;->getCheckinThumbnail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/Checkin;->thumbnail:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/Checkin;->user:Ljava/lang/String;

    .line 43
    return-void
.end method
