.class public Lcom/ushahidi/android/app/IncidentsTab;
.super Landroid/app/TabActivity;
.source "IncidentsTab.java"


# static fields
.field private static final VIEW_SEARCH:I


# instance fields
.field private activityTitle:Landroid/widget/TextView;

.field private bundle:Landroid/os/Bundle;

.field private extras:Landroid/os/Bundle;

.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/IncidentsTab;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/IncidentsTab;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public static setTabColor(Landroid/widget/TabHost;)V
    .locals 5
    .param p0, "tabhost"    # Landroid/widget/TabHost;

    .prologue
    const v4, 0x1020016

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "#404041"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 138
    .local v1, "tv":Landroid/widget/TextView;
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "#8A1F03"

    .line 144
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .restart local v1    # "tv":Landroid/widget/TextView;
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    return-void
.end method


# virtual methods
.method public checkinEnabled()V
    .locals 6

    .prologue
    const v5, 0x7f0600a1

    const v3, 0x7f0600a0

    const v2, 0x7f06009f

    const v4, 0x7f020065

    .line 94
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 95
    sget v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 96
    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/IncidentsTab;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/IncidentsTab;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->activityTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->activityTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/IncidentsTab;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    const-string v2, "list_checkins"

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 101
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/IncidentsTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/checkin/ListCheckin;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 106
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    const-string v2, "checkin"

    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 108
    invoke-virtual {p0, v5}, Lcom/ushahidi/android/app/IncidentsTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinMap;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 129
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->activityTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->activityTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    const-string v2, "list_reports"

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 117
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/IncidentsTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/ListIncidents;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 122
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    const-string v2, "map"

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 124
    invoke-virtual {p0, v5}, Lcom/ushahidi/android/app/IncidentsTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/IncidentMap;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method protected goHome(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public onAddReport(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 173
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 174
    sget v2, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 175
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "checkinActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/IncidentsTab;->startActivity(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/IncidentsTab;->setResult(I)V

    .line 185
    .end local v0    # "checkinActivityIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ushahidi/android/app/IncidentsTab;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/IncidentsTab;->setResult(I)V

    goto :goto_0
.end method

.method public onClickHome(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/IncidentsTab;->goHome(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/IncidentsTab;->setContentView(I)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->bundle:Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->extras:Landroid/os/Bundle;

    .line 58
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/IncidentsTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->activityTitle:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    .line 63
    invoke-virtual {p0}, Lcom/ushahidi/android/app/IncidentsTab;->checkinEnabled()V

    .line 65
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 68
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Lcom/ushahidi/android/app/IncidentsTab;->setTabColor(Landroid/widget/TabHost;)V

    .line 71
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/ushahidi/android/app/IncidentsTab$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/IncidentsTab$1;-><init>(Lcom/ushahidi/android/app/IncidentsTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->extras:Landroid/os/Bundle;

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->bundle:Landroid/os/Bundle;

    .line 81
    iget-object v0, p0, Lcom/ushahidi/android/app/IncidentsTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/ushahidi/android/app/IncidentsTab;->bundle:Landroid/os/Bundle;

    const-string v2, "tab_index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 90
    return-void
.end method

.method public onSearchDeployments(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/DeploymentSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/IncidentsTab;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/IncidentsTab;->setResult(I)V

    .line 170
    return-void
.end method
