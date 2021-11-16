.class public Lcom/ushahidi/android/app/ListIncidents;
.super Landroid/app/Activity;
.source "ListIncidents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/ListIncidents$ReportsTask;
    }
.end annotation


# static fields
.field private static final ABOUT:I = 0x7

.field private static final ADD_INCIDENT:I = 0x3

.field private static final GOTOHOME:I = 0x0

.field private static final HOME:I = 0x2

.field private static final INCIDENTS_MAP:I = 0x2

.field private static final INCIDENT_MAP:I = 0x4

.field private static final INCIDENT_REFRESH:I = 0x5

.field private static final POST_INCIDENT:I = 0x1

.field private static final REQUEST_CODE_ABOUT:I = 0x2

.field private static final REQUEST_CODE_SETTINGS:I = 0x1

.field private static final SETTINGS:I = 0x6

.field private static final VIEW_INCIDENT:I = 0x3

.field public static mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;


# instance fields
.field private emptyListText:Landroid/widget/TextView;

.field private ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

.field private incidentsBundle:Landroid/os/Bundle;

.field private listIncidents:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

.field final mDisplayCategories:Ljava/lang/Runnable;

.field final mDisplayIncidents:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mOldIncidents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;"
        }
    .end annotation
.end field

.field private spinner:Landroid/widget/Spinner;

.field private spinnerArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private vectorCategories:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->listIncidents:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    .line 83
    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->spinner:Landroid/widget/Spinner;

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->incidentsBundle:Landroid/os/Bundle;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->vectorCategories:Ljava/util/Vector;

    .line 189
    new-instance v0, Lcom/ushahidi/android/app/ListIncidents$3;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/ListIncidents$3;-><init>(Lcom/ushahidi/android/app/ListIncidents;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mDisplayIncidents:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/ushahidi/android/app/ListIncidents$4;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/ListIncidents$4;-><init>(Lcom/ushahidi/android/app/ListIncidents;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mDisplayCategories:Ljava/lang/Runnable;

    .line 481
    new-instance v0, Lcom/ushahidi/android/app/ListIncidents$5;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/ListIncidents$5;-><init>(Lcom/ushahidi/android/app/ListIncidents;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->spinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ListIncidents;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mOldIncidents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/ListIncidents;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ListIncidents;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->incidentsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/ListIncidents;)Lcom/ushahidi/android/app/ui/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ListIncidents;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->listIncidents:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/ListIncidents;)Lcom/ushahidi/android/app/ListIncidentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ListIncidents;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ushahidi/android/app/ListIncidents;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ListIncidents;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->vectorCategories:Ljava/util/Vector;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 299
    :goto_0
    return v1

    .line 266
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/ListIncidents;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 270
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ListIncidents;->refreshForReports()V

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->incidentsBundle:Landroid/os/Bundle;

    const-string v3, "tab_index"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "tab"

    iget-object v3, p0, Lcom/ushahidi/android/app/ListIncidents;->incidentsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0, v4}, Lcom/ushahidi/android/app/ListIncidents;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 281
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/ListIncidents;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 286
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/About;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/ushahidi/android/app/ListIncidents;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/ListIncidents;->setResult(I)V

    goto :goto_0

    .line 292
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/Settings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/ListIncidents;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 242
    const/4 v1, 0x2

    const v2, 0x7f06006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 243
    .local v0, "i":Landroid/view/MenuItem;
    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 245
    const/4 v1, 0x3

    const v2, 0x7f06005d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 246
    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 248
    const/4 v1, 0x4

    const v2, 0x7f06005e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 249
    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 251
    const/4 v1, 0x5

    const v2, 0x7f06006f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 252
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 254
    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 255
    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 257
    const/4 v1, 0x7

    const v2, 0x7f06006c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 258
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 260
    return-void
.end method


# virtual methods
.method public displayEmptyListText()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ListIncidentAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->emptyListText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->emptyListText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 500
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 501
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ListIncidents;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

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
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ListIncidents;->setContentView(I)V

    .line 103
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ListIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->listIncidents:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    .line 104
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ListIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->emptyListText:Landroid/widget/TextView;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mOldIncidents:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/ushahidi/android/app/ListIncidentAdapter;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/ListIncidentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    .line 108
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->listIncidents:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    new-instance v1, Lcom/ushahidi/android/app/ListIncidents$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/ListIncidents$1;-><init>(Lcom/ushahidi/android/app/ListIncidents;)V

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->listIncidents:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    new-instance v1, Lcom/ushahidi/android/app/ListIncidents$2;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/ListIncidents$2;-><init>(Lcom/ushahidi/android/app/ListIncidents;)V

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setOnRefreshListener(Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;)V

    .line 149
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ListIncidents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->spinner:Landroid/widget/Spinner;

    .line 151
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents;->mDisplayIncidents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents;->mDisplayCategories:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->markAllIncidentssRead()V

    .line 155
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->markAllCategoriesRead()V

    .line 156
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ListIncidents;->displayEmptyListText()V

    .line 158
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ListIncidents;->populateMenu(Landroid/view/Menu;)V

    .line 218
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ListIncidents;->populateMenu(Landroid/view/Menu;)V

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ListIncidents;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

.method protected onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/ListIncidentAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents;->mDisplayIncidents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    iget-object v0, p0, Lcom/ushahidi/android/app/ListIncidents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/ListIncidents;->mDisplayCategories:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->markAllIncidentssRead()V

    .line 170
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->markAllCategoriesRead()V

    .line 172
    :cond_0
    return-void
.end method

.method public refreshForReports()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;-><init>(Lcom/ushahidi/android/app/ListIncidents;Lcom/ushahidi/android/app/ListIncidents$1;)V

    .line 210
    .local v0, "reportsTask":Lcom/ushahidi/android/app/ListIncidents$ReportsTask;
    iput-object p0, v0, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->appContext:Landroid/content/Context;

    .line 211
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidents$ReportsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    return-void
.end method

.method public showCategories()V
    .locals 5

    .prologue
    .line 458
    sget-object v2, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllCategories()Landroid/database/Cursor;

    move-result-object v0

    .line 459
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v2, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual {v2}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchCategoriesCount()I

    .line 461
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->vectorCategories:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 462
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->vectorCategories:Ljava/util/Vector;

    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/ListIncidents;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    const-string v2, "category_title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 466
    .local v1, "titleIndex":I
    :cond_0
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->vectorCategories:Ljava/util/Vector;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    .end local v1    # "titleIndex":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 470
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    iget-object v4, p0, Lcom/ushahidi/android/app/ListIncidents;->vectorCategories:Ljava/util/Vector;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 473
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 474
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/ushahidi/android/app/ListIncidents;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 476
    iget-object v2, p0, Lcom/ushahidi/android/app/ListIncidents;->spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/ushahidi/android/app/ListIncidents;->spinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 478
    return-void
.end method

.method public showIncidents(Ljava/lang/String;)V
    .locals 30
    .param p1, "by"    # Ljava/lang/String;

    .prologue
    .line 345
    const v27, 0x7f060006

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidents;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 346
    sget-object v27, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual/range {v27 .. v27}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllIncidents()Landroid/database/Cursor;

    move-result-object v4

    .line 360
    .local v4, "cursor":Landroid/database/Cursor;
    :goto_0
    const/4 v5, 0x0

    .line 362
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 363
    const-string v27, "_id"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 364
    .local v11, "idIndex":I
    const-string v27, "incident_title"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 365
    .local v25, "titleIndex":I
    const-string v27, "incident_date"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 366
    .local v7, "dateIndex":I
    const-string v27, "incident_verified"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 367
    .local v26, "verifiedIndex":I
    const-string v27, "incident_loc_name"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 369
    .local v18, "locationIndex":I
    const-string v27, "incident_desc"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 371
    .local v8, "descIndex":I
    const-string v27, "incident_categories"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 373
    .local v3, "categoryIndex":I
    const-string v27, "incident_media"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 375
    .local v21, "mediaIndex":I
    const-string v27, "incident_image"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 377
    .local v13, "imageIndex":I
    const-string v27, "incident_loc_latitude"

    .line 378
    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 380
    .local v15, "latitudeIndex":I
    const-string v27, "incident_loc_longitude"

    .line 381
    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 383
    .local v19, "longitudeIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ushahidi/android/app/ListIncidentAdapter;->removeItems()V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ushahidi/android/app/ListIncidentAdapter;->notifyDataSetChanged()V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->mOldIncidents:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 390
    :cond_0
    new-instance v14, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-direct {v14}, Lcom/ushahidi/android/app/data/IncidentsData;-><init>()V

    .line 391
    .local v14, "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->mOldIncidents:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v16, Lcom/ushahidi/android/app/ListIncidentText;

    invoke-direct/range {v16 .. v16}, Lcom/ushahidi/android/app/ListIncidentText;-><init>()V

    .line 394
    .local v16, "listText":Lcom/ushahidi/android/app/ListIncidentText;
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v10

    .line 395
    .local v10, "id":I
    invoke-virtual {v14, v10}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentId(I)V

    .line 396
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLatitude(Ljava/lang/String;)V

    .line 397
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLongitude(Ljava/lang/String;)V

    .line 399
    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 400
    .local v24, "title":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentTitle(Ljava/lang/String;)V

    .line 401
    invoke-static/range {v24 .. v24}, Lcom/ushahidi/android/app/util/Util;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentText;->setTitle(Ljava/lang/String;)V

    .line 403
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, "description":Ljava/lang/String;
    invoke-virtual {v14, v9}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDesc(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/ushahidi/android/app/ListIncidentText;->setDesc(Ljava/lang/String;)V

    .line 407
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "categories":Ljava/lang/String;
    invoke-virtual {v14, v2}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentCategories(Ljava/lang/String;)V

    .line 409
    invoke-static {v2}, Lcom/ushahidi/android/app/util/Util;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentText;->setCategories(Ljava/lang/String;)V

    .line 411
    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 412
    .local v17, "location":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocation(Ljava/lang/String;)V

    .line 413
    invoke-static/range {v17 .. v17}, Lcom/ushahidi/android/app/util/Util;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentText;->setLocation(Ljava/lang/String;)V

    .line 415
    const-string v27, "yyyy-MM-dd HH:mm:ss"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "MMMM dd, yyyy \'at\' hh:mm:ss aaa"

    invoke-static/range {v27 .. v29}, Lcom/ushahidi/android/app/util/Util;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, "date":Ljava/lang/String;
    invoke-virtual {v14, v6}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDate(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/ushahidi/android/app/ListIncidentText;->setDate(Ljava/lang/String;)V

    .line 421
    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 422
    .local v20, "media":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentThumbnail(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentText;->setMedia(Ljava/lang/String;)V

    .line 425
    const-string v27, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 427
    .local v23, "thumbnails":[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 428
    sget-object v27, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    const/16 v28, 0x0

    aget-object v28, v23, v28

    invoke-static/range {v27 .. v28}, Lcom/ushahidi/android/app/ImageManager;->getImages(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 433
    :goto_1
    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/ushahidi/android/app/ListIncidents;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02005f

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentText;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 436
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 437
    .local v12, "image":Ljava/lang/String;
    invoke-virtual {v14, v12}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentImage(Ljava/lang/String;)V

    .line 439
    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_5

    const v27, 0x7f060090

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidents;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 441
    .local v22, "status":Ljava/lang/String;
    :goto_3
    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentVerified(I)V

    .line 442
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentText;->setStatus(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/ushahidi/android/app/ListIncidentText;->setId(I)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/ushahidi/android/app/ListIncidents;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f020059

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentText;->setArrow(Landroid/graphics/drawable/Drawable;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidentAdapter;->addItem(Lcom/ushahidi/android/app/ListIncidentText;)V

    .line 448
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    if-nez v27, :cond_0

    .line 451
    .end local v2    # "categories":Ljava/lang/String;
    .end local v3    # "categoryIndex":I
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "dateIndex":I
    .end local v8    # "descIndex":I
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "id":I
    .end local v11    # "idIndex":I
    .end local v12    # "image":Ljava/lang/String;
    .end local v13    # "imageIndex":I
    .end local v14    # "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    .end local v15    # "latitudeIndex":I
    .end local v16    # "listText":Lcom/ushahidi/android/app/ListIncidentText;
    .end local v17    # "location":Ljava/lang/String;
    .end local v18    # "locationIndex":I
    .end local v19    # "longitudeIndex":I
    .end local v20    # "media":Ljava/lang/String;
    .end local v21    # "mediaIndex":I
    .end local v22    # "status":Ljava/lang/String;
    .end local v23    # "thumbnails":[Ljava/lang/String;
    .end local v24    # "title":Ljava/lang/String;
    .end local v25    # "titleIndex":I
    .end local v26    # "verifiedIndex":I
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ushahidi/android/app/ListIncidentAdapter;->notifyDataSetChanged()V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->listIncidents:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/ListIncidents;->ila:Lcom/ushahidi/android/app/ListIncidentAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/ushahidi/android/app/ListIncidents;->displayEmptyListText()V

    .line 455
    return-void

    .line 348
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v27, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchIncidentsByCategories(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .restart local v4    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 430
    .restart local v2    # "categories":Ljava/lang/String;
    .restart local v3    # "categoryIndex":I
    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "date":Ljava/lang/String;
    .restart local v7    # "dateIndex":I
    .restart local v8    # "descIndex":I
    .restart local v9    # "description":Ljava/lang/String;
    .restart local v10    # "id":I
    .restart local v11    # "idIndex":I
    .restart local v13    # "imageIndex":I
    .restart local v14    # "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    .restart local v15    # "latitudeIndex":I
    .restart local v16    # "listText":Lcom/ushahidi/android/app/ListIncidentText;
    .restart local v17    # "location":Ljava/lang/String;
    .restart local v18    # "locationIndex":I
    .restart local v19    # "longitudeIndex":I
    .restart local v20    # "media":Ljava/lang/String;
    .restart local v21    # "mediaIndex":I
    .restart local v23    # "thumbnails":[Ljava/lang/String;
    .restart local v24    # "title":Ljava/lang/String;
    .restart local v25    # "titleIndex":I
    .restart local v26    # "verifiedIndex":I
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v27, v5

    .line 433
    goto/16 :goto_2

    .line 439
    .restart local v12    # "image":Ljava/lang/String;
    :cond_5
    const v27, 0x7f060091

    .line 440
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ListIncidents;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_3
.end method
