.class public Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImagePreviewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ui/ImagePreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mImageIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public selectedImage:I

.field final synthetic this$0:Lcom/ushahidi/android/app/ui/ImagePreviewer;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/ui/ImagePreviewer;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ui/ImagePreviewer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->this$0:Lcom/ushahidi/android/app/ui/ImagePreviewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->selectedImage:I

    .line 170
    iput-object p2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->mImageIds:Ljava/util/Vector;

    .line 173
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->mImageIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 184
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, -0x2

    .line 188
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->mImageIds:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 193
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->imageBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 199
    return-object v0
.end method

.method public imageBackgroundColor()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v2, p0, Lcom/ushahidi/android/app/ui/ImagePreviewer$ImageAdapter;->this$0:Lcom/ushahidi/android/app/ui/ImagePreviewer;

    sget-object v3, Lcom/ushahidi/android/app/R$styleable;->PhotoGallery:[I

    invoke-virtual {v2, v3}, Lcom/ushahidi/android/app/ui/ImagePreviewer;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 206
    .local v1, "mGalleryItemBackground":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    return v1
.end method
