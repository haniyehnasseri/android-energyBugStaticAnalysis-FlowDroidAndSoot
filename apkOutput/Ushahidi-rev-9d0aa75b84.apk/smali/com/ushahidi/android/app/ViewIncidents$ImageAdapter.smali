.class public Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewIncidents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ViewIncidents;
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

.field final synthetic this$0:Lcom/ushahidi/android/app/ViewIncidents;


# direct methods
.method public constructor <init>(Lcom/ushahidi/android/app/ViewIncidents;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ViewIncidents;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->this$0:Lcom/ushahidi/android/app/ViewIncidents;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->mContext:Landroid/content/Context;

    .line 347
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->mImageIds:Ljava/util/Vector;

    .line 349
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->mImageIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 360
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

    .line 364
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->mImageIds:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 369
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v1, p0, Lcom/ushahidi/android/app/ViewIncidents$ImageAdapter;->this$0:Lcom/ushahidi/android/app/ViewIncidents;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/ViewIncidents;->imageBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 376
    return-object v0
.end method
