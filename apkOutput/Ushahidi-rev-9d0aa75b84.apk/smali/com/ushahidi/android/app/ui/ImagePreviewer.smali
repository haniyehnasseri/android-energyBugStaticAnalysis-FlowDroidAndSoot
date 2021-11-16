.class public Lcom/ushahidi/android/app/ui/ImagePreviewer;
.super Lcom/ushahidi/android/app/DashboardActivity;
.source "ImagePreviewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;
    }
.end annotation


# static fields
.field public static photoPosition:I


# instance fields
.field private activityTitle:Landroid/widget/TextView;

.field private extras:Landroid/os/Bundle;

.field private imageAdapter:Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;

.field private images:[Ljava/lang/String;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private photos:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photoPosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ushahidi/android/app/DashboardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalStorage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, "sdCard":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 250
    .end local v0    # "sdCard":Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 214
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "i":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/ushahidi/android/app/DashboardActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 159
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f060080

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->setContentView(I)V

    .line 59
    new-instance v2, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;

    invoke-direct {v2, p0, p0}, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;-><init>(Lcom/ushahidi/android/app/ui/ImagePreviewer;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->imageAdapter:Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photos:Landroid/os/Bundle;

    .line 61
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->extras:Landroid/os/Bundle;

    .line 62
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->activityTitle:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->extras:Landroid/os/Bundle;

    const-string v3, "photos"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photos:Landroid/os/Bundle;

    .line 65
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photos:Landroid/os/Bundle;

    const-string v3, "images"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photos:Landroid/os/Bundle;

    const-string v3, "position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photoPosition:I

    .line 68
    const v2, 0x7f0a005a

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageSwitcher;

    iput-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 69
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 70
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    const/high16 v3, 0x10a0000

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 71
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 72
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->activityTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->activityTitle:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v4, :cond_1

    .line 75
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->activityTitle:Landroid/widget/TextView;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "s"

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->imageAdapter:Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;

    iget-object v2, v2, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->mImageIds:Ljava/util/Vector;

    sget-object v3, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lcom/ushahidi/android/app/ImageManager;->getImages(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->activityTitle:Landroid/widget/TextView;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "ss"

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->imageAdapter:Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;

    sget v3, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photoPosition:I

    iput v3, v2, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->selectedImage:I

    .line 91
    const v2, 0x7f0a0059

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 93
    .local v0, "g":Landroid/widget/Gallery;
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->imageAdapter:Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    .line 233
    invoke-super {p0}, Lcom/ushahidi/android/app/DashboardActivity;->onDestroy()V

    .line 235
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->getExternalStorage()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 237
    iget-object v3, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 238
    .local v0, "image":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/ushahidi/android/app/ImageManager;->deleteImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "image":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->imageAdapter:Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;

    iget-object v0, v0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->mImageIds:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 100
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 101
    iget-object v5, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    sget v6, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photoPosition:I

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->savePhoto(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "state":Ljava/lang/String;
    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    .line 104
    .local v1, "reportUrl":Ljava/lang/String;
    const v5, 0x7f06009b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v9

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "shareString":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "image/jpg"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, "sdCard":Ljava/io/File;
    const-string v5, "android.intent.extra.STREAM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer;->images:[Ljava/lang/String;

    sget v8, Lcom/ushahidi/android/app/ui/ImagePreviewer;->photoPosition:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 110
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const v5, 0x7f0600a2

    invoke-virtual {p0, v5}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5, v9}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->setResult(I)V

    .line 118
    .end local v2    # "sdCard":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public savePhoto(Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "state":Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v1, "byteArrayos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 131
    .local v0, "b":Landroid/graphics/Bitmap;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 133
    .local v2, "sdCard":Ljava/io/File;
    sget-object v4, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/ushahidi/android/app/ImageManager;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 135
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-static {v4, v5, v6}, Lcom/ushahidi/android/app/ImageManager;->writeImage([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "byteArrayos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "sdCard":Ljava/io/File;
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v4

    goto :goto_0

    .line 145
    :catch_1
    move-exception v4

    goto :goto_0

    .line 143
    :catch_2
    move-exception v4

    goto :goto_0

    .line 142
    :catch_3
    move-exception v4

    goto :goto_0
.end method
