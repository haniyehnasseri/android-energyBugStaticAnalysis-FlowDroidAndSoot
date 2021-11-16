.class Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeploymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ushahidi/android/app/DeploymentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field deploymentDesc:Landroid/widget/TextView;

.field deploymentId:Landroid/widget/TextView;

.field deploymentName:Landroid/widget/TextView;

.field deploymentUrl:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ushahidi/android/app/DeploymentAdapter;


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/DeploymentAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ushahidi/android/app/DeploymentAdapter;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->this$0:Lcom/ushahidi/android/app/DeploymentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const v0, 0x7f0a0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentName:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentDesc:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0a004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentUrl:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0a004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->deploymentId:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0a004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushahidi/android/app/DeploymentAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 106
    return-void
.end method
