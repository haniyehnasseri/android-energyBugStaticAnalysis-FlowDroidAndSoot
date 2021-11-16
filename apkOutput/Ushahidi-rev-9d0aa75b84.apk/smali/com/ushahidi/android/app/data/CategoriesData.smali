.class public Lcom/ushahidi/android/app/data/CategoriesData;
.super Ljava/lang/Object;
.source "CategoriesData.java"


# instance fields
.field private categoryColor:Ljava/lang/String;

.field private categoryDescription:Ljava/lang/String;

.field private categoryId:I

.field private categoryTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryId:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryTitle:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryDescription:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryId:I

    return v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryColor:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCategoryDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryDescription:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryId:I

    .line 55
    return-void
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushahidi/android/app/data/CategoriesData;->categoryTitle:Ljava/lang/String;

    .line 39
    return-void
.end method
