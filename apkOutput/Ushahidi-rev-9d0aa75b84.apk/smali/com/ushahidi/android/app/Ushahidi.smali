.class public Lcom/ushahidi/android/app/Ushahidi;
.super Lcom/ushahidi/android/app/DashboardActivity;
.source "Ushahidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/Ushahidi$ReportsTask;
    }
.end annotation


# static fields
.field private static final ABOUT:I = 0x6

.field private static final ADD_INCIDENT:I = 0x2

.field private static final ADD_INCIDENTS:I = 0x2

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_PROMPT:I = 0x0

.field private static final INCIDENTS:I = 0x3

.field private static final INCIDENT_MAP:I = 0x4

.field private static final LIST_INCIDENT:I = 0x3

.field private static final LIST_INCIDENTS:I = 0x0

.field private static final MAP_INCIDENTS:I = 0x1

.field private static final REQUEST_CODE_ABOUT:I = 0x2

.field private static final REQUEST_CODE_SETTINGS:I = 0x1

.field private static final SETTINGS:I = 0x5

.field private static final SYNC:I = 0x7

.field private static final VIEW_SEARCH:I = 0x5

.field private static final VIEW_SETTINGS:I = 0x4


# instance fields
.field private aboutBtn:Landroid/widget/Button;

.field private addBtn:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private checkinAddBtn:Landroid/widget/Button;

.field private checkinListBtn:Landroid/widget/Button;

.field private dialogErrorMsg:Ljava/lang/String;

.field private listBtn:Landroid/widget/Button;

.field final mDisplayErrorPrompt:Ljava/lang/Runnable;

.field final mDisplayPrompt:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mapBtn:Landroid/widget/Button;

.field private refreshState:Z

.field private searchBtn:Landroid/widget/Button;

.field private settingsBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ushahidi/android/app/DashboardActivity;-><init>()V

    .line 94
    const-string v0, "An error occurred fetching the reports. Make sure you have entered an Ushahidi instance."

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->dialogErrorMsg:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushahidi/android/app/Ushahidi;->refreshState:Z

    .line 309
    new-instance v0, Lcom/ushahidi/android/app/Ushahidi$11;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/Ushahidi$11;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->mDisplayPrompt:Ljava/lang/Runnable;

    .line 315
    new-instance v0, Lcom/ushahidi/android/app/Ushahidi$12;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/Ushahidi$12;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->mDisplayErrorPrompt:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/Ushahidi;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/Ushahidi;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ushahidi/android/app/Ushahidi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/Ushahidi;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/ushahidi/android/app/Ushahidi;->refreshState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/Ushahidi;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/Ushahidi;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ushahidi/android/app/Ushahidi;->updateRefreshStatus()V

    return-void
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 400
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 450
    :goto_0
    return v2

    .line 402
    :pswitch_0
    iget-object v4, p0, Lcom/ushahidi/android/app/Ushahidi;->bundle:Landroid/os/Bundle;

    const-string v5, "tab_index"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v4, "tab"

    iget-object v5, p0, Lcom/ushahidi/android/app/Ushahidi;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0, v0, v3}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 406
    invoke-virtual {p0, v6}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    goto :goto_0

    .line 410
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/ushahidi/android/app/Ushahidi;->bundle:Landroid/os/Bundle;

    const-string v4, "tab_index"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    const-string v3, "tab"

    iget-object v4, p0, Lcom/ushahidi/android/app/Ushahidi;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 414
    invoke-virtual {p0, v6}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    goto :goto_0

    .line 418
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :pswitch_2
    sget v3, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    if-ne v3, v2, :cond_0

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 421
    invoke-virtual {p0, v6}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    goto :goto_0

    .line 423
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 425
    invoke-virtual {p0, v6}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    goto :goto_0

    .line 430
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/About;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 432
    invoke-virtual {p0, v6}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    goto :goto_0

    .line 436
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :pswitch_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/ushahidi/android/app/Settings;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 439
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 440
    invoke-virtual {p0, v6}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    goto :goto_0

    .line 444
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;-><init>(Lcom/ushahidi/android/app/Ushahidi;Lcom/ushahidi/android/app/Ushahidi$1;)V

    .line 445
    .local v1, "reportsTask":Lcom/ushahidi/android/app/Ushahidi$ReportsTask;
    iput-object p0, v1, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    .line 446
    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f020053

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 368
    sget v1, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    if-ne v1, v2, :cond_0

    .line 369
    const v1, 0x7f060016

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 370
    .local v0, "i":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 376
    :goto_0
    sget v1, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    if-ne v1, v2, :cond_1

    .line 377
    const v1, 0x7f060020

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 378
    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 384
    :goto_1
    const/4 v1, 0x4

    const v2, 0x7f06005e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 385
    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 387
    const/4 v1, 0x7

    const v2, 0x7f06006f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 388
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 390
    const/4 v1, 0x5

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 391
    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 393
    const/4 v1, 0x6

    const v2, 0x7f06006c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 394
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 396
    return-void

    .line 372
    .end local v0    # "i":Landroid/view/MenuItem;
    :cond_0
    const v1, 0x7f06005d

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 373
    .restart local v0    # "i":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 380
    :cond_1
    const v1, 0x7f06005b

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 381
    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateRefreshStatus()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 359
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/ushahidi/android/app/Ushahidi;->refreshState:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 360
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/ushahidi/android/app/Ushahidi;->refreshState:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    return-void

    :cond_0
    move v0, v2

    .line 359
    goto :goto_0

    :cond_1
    move v2, v1

    .line 361
    goto :goto_1
.end method


# virtual methods
.method public initializeUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 152
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 154
    sget v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->listBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->addBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinListBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinAddBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->listBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$1;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinListBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$2;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$2;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->settingsBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$3;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$3;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->addBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$4;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$4;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinAddBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$5;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$5;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->searchBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$6;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$6;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->aboutBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$7;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$7;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->mapBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushahidi/android/app/Ushahidi$8;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/Ushahidi$8;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->listBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->addBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinListBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinAddBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/ushahidi/android/app/DashboardActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    packed-switch p1, :pswitch_data_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAddReport(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 252
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 253
    sget v2, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 254
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    .local v0, "checkinActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->startActivity(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    .line 264
    .end local v0    # "checkinActivityIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/ushahidi/android/app/Ushahidi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/Ushahidi;->setResult(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/Ushahidi;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->setRequestedOrientation(I)V

    .line 107
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->setContentView(I)V

    .line 108
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->setTitleFromActivityLabel(I)V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->bundle:Landroid/os/Bundle;

    .line 113
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 116
    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi;->mDisplayPrompt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_1
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->listBtn:Landroid/widget/Button;

    .line 121
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinListBtn:Landroid/widget/Button;

    .line 123
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->addBtn:Landroid/widget/Button;

    .line 124
    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->checkinAddBtn:Landroid/widget/Button;

    .line 126
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->settingsBtn:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->mapBtn:Landroid/widget/Button;

    .line 128
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->searchBtn:Landroid/widget/Button;

    .line 129
    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Ushahidi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushahidi/android/app/Ushahidi;->aboutBtn:Landroid/widget/Button;

    .line 131
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Ushahidi;->initializeUI()V

    .line 133
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/Ushahidi;->populateMenu(Landroid/view/Menu;)V

    .line 336
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 306
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 271
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v1, 0x7f0600b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 272
    const v1, 0x7f0600af

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/Ushahidi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/Ushahidi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/Ushahidi$9;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/Ushahidi$9;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 283
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 288
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 289
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 290
    iget-object v1, p0, Lcom/ushahidi/android/app/Ushahidi;->dialogErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 291
    const-string v1, "Ok"

    new-instance v2, Lcom/ushahidi/android/app/Ushahidi$10;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/Ushahidi$10;-><init>(Lcom/ushahidi/android/app/Ushahidi;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 302
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/Ushahidi;->populateMenu(Landroid/view/Menu;)V

    .line 342
    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/Ushahidi;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshReports(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    new-instance v0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;-><init>(Lcom/ushahidi/android/app/Ushahidi;Lcom/ushahidi/android/app/Ushahidi$1;)V

    .line 138
    .local v0, "reportsTask":Lcom/ushahidi/android/app/Ushahidi$ReportsTask;
    iput-object p0, v0, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->appContext:Landroid/content/Context;

    .line 139
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/Ushahidi$ReportsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Ushahidi;->initializeUI()V

    .line 145
    invoke-super {p0}, Lcom/ushahidi/android/app/DashboardActivity;->onResume()V

    .line 146
    return-void
.end method
