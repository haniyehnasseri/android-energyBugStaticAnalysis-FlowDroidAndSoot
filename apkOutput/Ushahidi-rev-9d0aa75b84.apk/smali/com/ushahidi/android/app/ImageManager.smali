.class public Lcom/ushahidi/android/app/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_0
    return-void
.end method

.method public static getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x190

    const/4 v6, 0x0

    .line 148
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 149
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    const/16 v0, 0x190

    .line 157
    .local v0, "REQUIRED_SIZE":I
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v5, "width_tmp":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 158
    .local v1, "height_tmp":I
    const/4 v4, 0x1

    .line 160
    .local v4, "scale":I
    :goto_0
    div-int/lit8 v7, v5, 0x2

    if-lt v7, v10, :cond_0

    div-int/lit8 v7, v1, 0x2

    if-ge v7, v10, :cond_1

    .line 168
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 170
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 174
    .end local v0    # "REQUIRED_SIZE":I
    .end local v1    # "height_tmp":I
    .end local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "scale":I
    .end local v5    # "width_tmp":I
    :goto_1
    return-object v6

    .line 162
    .restart local v0    # "REQUIRED_SIZE":I
    .restart local v1    # "height_tmp":I
    .restart local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "scale":I
    .restart local v5    # "width_tmp":I
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 163
    div-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 172
    .end local v0    # "REQUIRED_SIZE":I
    .end local v1    # "height_tmp":I
    .end local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "scale":I
    .end local v5    # "width_tmp":I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getImages(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "bD":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    return-object v1
.end method

.method public static saveImage(Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v5, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "image":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, "imageFilename":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 60
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/uploads/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->fetchImage(Ljava/lang/String;)[B

    move-result-object v4

    .line 62
    .local v4, "is":[B
    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, p0}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 65
    .end local v4    # "is":[B
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "image":Ljava/lang/String;
    .end local v3    # "imageFilename":Ljava/io/File;
    :cond_1
    sget-object v5, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 80
    return-void
.end method

.method public static saveImageFromURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "imageFilename":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    :try_start_0
    invoke-static {p0}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->fetchImage(Ljava/lang/String;)[B

    move-result-object v3

    .line 186
    .local v3, "is":[B
    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "imageFilename":Ljava/io/File;
    .end local v3    # "is":[B
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "imageFilename":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveThumbnail(Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v5, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsThumbnails:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "image":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, "thumbnailFilename":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 93
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/uploads/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->fetchImage(Ljava/lang/String;)[B

    move-result-object v3

    .line 95
    .local v3, "is":[B
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, p0}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    .end local v3    # "is":[B
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "image":Ljava/lang/String;
    .end local v4    # "thumbnailFilename":Ljava/io/File;
    :cond_1
    sget-object v5, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsThumbnails:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 113
    return-void
.end method

.method public static writeImage([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "data"    # [B
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1, p2}, Lcom/ushahidi/android/app/ImageManager;->deleteImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "Deleting Images: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz p0, :cond_0

    .line 122
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "fOut":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 124
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
