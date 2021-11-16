.class public Lcom/ushahidi/android/app/data/UsersData;
.super Ljava/lang/Object;
.source "UsersData.java"


# instance fields
.field private color:Ljava/lang/String;

.field private userId:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushahidi/android/app/data/UsersData;->userId:I

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/UsersData;->userName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/UsersData;->color:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UsersData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/ushahidi/android/app/data/UsersData;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushahidi/android/app/data/UsersData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushahidi/android/app/data/UsersData;->color:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/ushahidi/android/app/data/UsersData;->userId:I

    .line 14
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushahidi/android/app/data/UsersData;->userName:Ljava/lang/String;

    .line 22
    return-void
.end method
