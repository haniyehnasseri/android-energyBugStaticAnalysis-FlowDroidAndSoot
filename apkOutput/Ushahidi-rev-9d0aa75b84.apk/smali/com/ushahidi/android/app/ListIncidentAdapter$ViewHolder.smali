.class Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListIncidentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/ListIncidentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field date:Landroid/widget/TextView;

.field iLocation:Landroid/widget/TextView;

.field mCategories:Landroid/widget/TextView;

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ushahidi/android/app/ListIncidentAdapter;

.field thumbnail:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/ListIncidentAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ushahidi/android/app/ListIncidentAdapter;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;->this$0:Lcom/ushahidi/android/app/ListIncidentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const v0, 0x7f0a005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f0a005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0a005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0a005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;->iLocation:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0a005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;->status:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0a0054

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidentAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 141
    return-void
.end method
