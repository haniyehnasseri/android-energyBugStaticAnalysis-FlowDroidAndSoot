.class public Lcom/ushahidi/android/app/data/IncidentsData;
.super Ljava/lang/Object;
.source "IncidentsData.java"


# instance fields
.field private incidentCategories:Ljava/lang/String;

.field private incidentDate:Ljava/lang/String;

.field private incidentDesc:Ljava/lang/String;

.field private incidentId:I

.field private incidentImage:Ljava/lang/String;

.field private incidentLocLatitude:Ljava/lang/String;

.field private incidentLocLongitude:Ljava/lang/String;

.field private incidentLocation:Ljava/lang/String;

.field private incidentMode:I

.field private incidentThumbnail:Ljava/lang/String;

.field private incidentTitle:Ljava/lang/String;

.field private incidentVerified:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentTitle:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentDesc:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocation:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentDate:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentMode:I

    .line 34
    iput v1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentVerified:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocLatitude:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocLongitude:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentCategories:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentThumbnail:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentImage:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentId:I

    .line 50
    return-void
.end method


# virtual methods
.method public getIncidentCategories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentCategories:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentId:I

    return v0
.end method

.method public getIncidentImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentImage:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentLocLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentLocLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentMode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentMode:I

    return v0
.end method

.method public getIncidentThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentVerified()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentVerified:I

    return v0
.end method

.method public setIncidentCategories(Ljava/lang/String;)V
    .locals 0
    .param p1, "categories"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentCategories:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setIncidentDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentDate:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setIncidentDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentDesc:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIncidentId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentId:I

    .line 58
    return-void
.end method

.method public setIncidentImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentImage:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setIncidentLocLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocLatitude:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setIncidentLocLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocLongitude:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setIncidentLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentLocation:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setIncidentMode(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentMode:I

    .line 138
    return-void
.end method

.method public setIncidentThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentThumbnail:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setIncidentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentTitle:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setIncidentVerified(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/ushahidi/android/app/data/IncidentsData;->incidentVerified:I

    .line 130
    return-void
.end method
