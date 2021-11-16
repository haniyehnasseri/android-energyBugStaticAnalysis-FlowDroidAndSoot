.class public abstract Lcom/ushahidi/android/app/DashboardActivity;
.super Landroid/app/Activity;
.source "DashboardActivity.java"


# static fields
.field private static final VIEW_SEARCH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public goHome(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public onClickAdd(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushahidi/android/app/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onClickHome(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/DashboardActivity;->goHome(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onClickSearch(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/ushahidi/android/app/DashboardActivity;->onSearchRequested()Z

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 22
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 26
    return-void
.end method

.method public onRefreshReports(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    return-void
.end method

.method public onSearchDeployments(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/DashboardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/DashboardActivity;->setResult(I)V

    .line 65
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 39
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 44
    return-void
.end method

.method public setTitleFromActivityLabel(I)V
    .locals 2
    .param p1, "textViewId"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ushahidi/android/app/DashboardActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method
