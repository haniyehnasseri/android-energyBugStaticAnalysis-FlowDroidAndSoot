.class public final Lcom/ushahidi/android/app/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PhotoGallery:[I

.field public static final PhotoGallery_android_galleryItemBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 611
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101004c

    aput v2, v0, v1

    sput-object v0, Lcom/ushahidi/android/app/R$styleable;->PhotoGallery:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
