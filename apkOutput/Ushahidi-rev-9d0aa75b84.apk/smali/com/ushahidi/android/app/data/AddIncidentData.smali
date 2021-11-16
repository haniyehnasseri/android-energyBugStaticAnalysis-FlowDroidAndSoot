.class public Lcom/ushahidi/android/app/data/AddIncidentData;
.super Ljava/lang/Object;
.source "AddIncidentData.java"


# instance fields
.field private addIncidentAmPm:Ljava/lang/String;

.field private addIncidentCategories:Ljava/lang/String;

.field private addIncidentDate:Ljava/lang/String;

.field private addIncidentDesc:Ljava/lang/String;

.field private addIncidentHour:I

.field private addIncidentLocLatitude:Ljava/lang/String;

.field private addIncidentLocLongitude:Ljava/lang/String;

.field private addIncidentLocName:Ljava/lang/String;

.field private addIncidentMinute:I

.field private addIncidentNews:Ljava/lang/String;

.field private addIncidentPhoto:Ljava/lang/String;

.field private addIncidentTitle:Ljava/lang/String;

.field private addIncidentVideo:Ljava/lang/String;

.field private personEmail:Ljava/lang/String;

.field private personFirst:Ljava/lang/String;

.field private personLast:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentTitle:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentDesc:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentDate:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentHour:I

    .line 61
    iput v1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentMinute:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentAmPm:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentCategories:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocName:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocLatitude:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocLongitude:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentPhoto:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentVideo:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentNews:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personFirst:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personLast:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personEmail:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getIncidentAmPm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentAmPm:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentCategories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentCategories:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentHour()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentHour:I

    return v0
.end method

.method public getIncidentLocLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentLocLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentLocName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocName:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentMinute()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentMinute:I

    return v0
.end method

.method public getIncidentNews()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentNews:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentVideo:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonFirst()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personFirst:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonLast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personLast:Ljava/lang/String;

    return-object v0
.end method

.method public setIncidentAmPm(Ljava/lang/String;)V
    .locals 0
    .param p1, "amPm"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentAmPm:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setIncidentCategories(Ljava/lang/String;)V
    .locals 0
    .param p1, "categories"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentCategories:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setIncidentDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentDate:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setIncidentDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentDesc:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setIncidentHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentHour:I

    .line 114
    return-void
.end method

.method public setIncidentLocLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocLatitude:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setIncidentLocLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocLongitude:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setIncidentLocName(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentLocName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setIncidentMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentMinute:I

    .line 106
    return-void
.end method

.method public setIncidentNews(Ljava/lang/String;)V
    .locals 0
    .param p1, "news"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentNews:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setIncidentPhoto(Ljava/lang/String;)V
    .locals 0
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentPhoto:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setIncidentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentTitle:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setIncidentVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "video"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->addIncidentVideo:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPersonEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personEmail:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setPersonFirst(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personFirst:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setPersonLast(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/ushahidi/android/app/data/AddIncidentData;->personLast:Ljava/lang/String;

    .line 194
    return-void
.end method
