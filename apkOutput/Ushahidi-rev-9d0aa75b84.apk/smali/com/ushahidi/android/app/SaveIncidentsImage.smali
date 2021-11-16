.class public Lcom/ushahidi/android/app/SaveIncidentsImage;
.super Ljava/lang/Thread;
.source "SaveIncidentsImage.java"


# static fields
.field private static random:Ljava/util/Random;


# instance fields
.field public filename:Ljava/lang/String;

.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ushahidi/android/app/SaveIncidentsImage;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ushahidi/android/app/SaveIncidentsImage;->mData:[B

    .line 42
    return-void
.end method

.method protected static randomString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/ushahidi/android/app/SaveIncidentsImage;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pictureupload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ushahidi/android/app/SaveIncidentsImage;->randomString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushahidi/android/app/SaveIncidentsImage;->filename:Ljava/lang/String;

    .line 49
    const-string v1, "Capture Me"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "What: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ushahidi/android/app/SaveIncidentsImage;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/ushahidi/android/app/SaveIncidentsImage;->mData:[B

    iget-object v2, p0, Lcom/ushahidi/android/app/SaveIncidentsImage;->filename:Ljava/lang/String;

    sget-object v3, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/ushahidi/android/app/SaveIncidentsImage;->filename:Ljava/lang/String;

    sput-object v1, Lcom/ushahidi/android/app/UshahidiPref;->fileName:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ushahidi/android/app/SaveIncidentsImage;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    :cond_0
    return-void
.end method
