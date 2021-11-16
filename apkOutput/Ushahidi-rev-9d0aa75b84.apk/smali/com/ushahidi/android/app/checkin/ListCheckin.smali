.class public Lcom/ushahidi/android/app/checkin/ListCheckin;
.super Landroid/app/Activity;
.source "ListCheckin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/checkin/ListCheckin$CheckinsTask;
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

.field private static final REQUEST_CODE_ABOUT:I = 0x5

.field private static final REQUEST_CODE_SETTINGS:I = 0x4

.field private static final SETTINGS:I = 0x6

.field private static final VIEW_CHECKINS:I = 0x3

.field public static mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;


# instance fields
.field private checkins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/checkin/Checkin;",
            ">;"
        }
    .end annotation
.end field

.field private checkinsBundle:Landroid/os/Bundle;

.field private emptyListText:Landroid/widget/TextView;

.field private ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

.field private listCheckins:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

.field final mDisplayCheckins:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->listCheckins:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkinsBundle:Landroid/os/Bundle;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/ushahidi/android/app/checkin/ListCheckin$3;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/checkin/ListCheckin$3;-><init>(Lcom/ushahidi/android/app/checkin/ListCheckin;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->mDisplayCheckins:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/checkin/ListCheckin;)V
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/ListCheckin;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->refreshForNewCheckins()V

    return-void
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/checkin/ListCheckin;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/ListCheckin;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkins:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/checkin/ListCheckin;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/ListCheckin;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkinsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ushahidi/android/app/checkin/ListCheckin;)Lcom/ushahidi/android/app/ui/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/checkin/ListCheckin;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->listCheckins:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 294
    :goto_0
    return v1

    .line 261
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 265
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->refreshForNewCheckins()V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v2, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkinsBundle:Landroid/os/Bundle;

    const-string v3, "tab_index"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/IncidentsTab;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "tab"

    iget-object v3, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkinsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 272
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 276
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 281
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/About;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 283
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->setResult(I)V

    goto :goto_0

    .line 287
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/Settings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 259
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

    .line 221
    const/4 v1, 0x2

    const v2, 0x7f06006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 222
    .local v0, "i":Landroid/view/MenuItem;
    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 224
    const/4 v1, 0x3

    const v2, 0x7f060016

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 225
    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 227
    const/4 v1, 0x4

    const v2, 0x7f06005e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 228
    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 230
    const/4 v1, 0x5

    const v2, 0x7f06006f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 231
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 233
    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 236
    const/4 v1, 0x7

    const v2, 0x7f06006c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 237
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 239
    return-void
.end method

.method private refreshForNewCheckins()V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/ushahidi/android/app/checkin/ListCheckin$CheckinsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushahidi/android/app/checkin/ListCheckin$CheckinsTask;-><init>(Lcom/ushahidi/android/app/checkin/ListCheckin;Lcom/ushahidi/android/app/checkin/ListCheckin$1;)V

    .line 243
    .local v0, "checkinsTask":Lcom/ushahidi/android/app/checkin/ListCheckin$CheckinsTask;
    iput-object p0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin$CheckinsTask;->appContext:Landroid/content/Context;

    .line 244
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/checkin/ListCheckin$CheckinsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method


# virtual methods
.method public displayEmptyListText()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->emptyListText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->emptyListText:Landroid/widget/TextView;

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
    .line 420
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 421
    return-void
.end method

.method public onAddReport(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 204
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->loadSettings(Landroid/content/Context;)V

    .line 205
    sget v2, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 206
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ushahidi/android/app/checkin/CheckinActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, "checkinActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/ListCheckin;->setResult(I)V

    .line 217
    .end local v0    # "checkinActivityIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/AddIncident;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ushahidi/android/app/checkin/ListCheckin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    invoke-virtual {p0, v4}, Lcom/ushahidi/android/app/checkin/ListCheckin;->setResult(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/ListCheckin;->applyMenuChoice(Landroid/view/MenuItem;)Z

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

    .line 102
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->setContentView(I)V

    .line 104
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->listCheckins:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    .line 105
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->emptyListText:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->listCheckins:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    new-instance v1, Lcom/ushahidi/android/app/checkin/ListCheckin$1;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/checkin/ListCheckin$1;-><init>(Lcom/ushahidi/android/app/checkin/ListCheckin;)V

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setOnRefreshListener(Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkins:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    .line 113
    invoke-virtual {p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->displayEmptyListText()V

    .line 114
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->listCheckins:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    new-instance v1, Lcom/ushahidi/android/app/checkin/ListCheckin$2;

    invoke-direct {v1, p0}, Lcom/ushahidi/android/app/checkin/ListCheckin$2;-><init>(Lcom/ushahidi/android/app/checkin/ListCheckin;)V

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->refreshForNewCheckins()V

    .line 138
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/ListCheckin;->populateMenu(Landroid/view/Menu;)V

    .line 180
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/ListCheckin;->populateMenu(Landroid/view/Menu;)V

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/checkin/ListCheckin;->applyMenuChoice(Landroid/view/MenuItem;)Z

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

.method public onRefreshReports()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->refreshForNewCheckins()V

    .line 255
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    invoke-virtual {v0}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushahidi/android/app/checkin/ListCheckin;->mDisplayCheckins:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public showCheckins()V
    .locals 20

    .prologue
    .line 338
    sget-object v17, Lcom/ushahidi/android/app/UshahidiApplication;->mDb:Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-virtual/range {v17 .. v17}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllCheckins()Landroid/database/Cursor;

    move-result-object v2

    .line 343
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 345
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 346
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 347
    .local v7, "idIndex":I
    const-string v17, "user_id"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 348
    .local v16, "userIdIndex":I
    const-string v17, "checkin_date"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 349
    .local v5, "dateIndex":I
    const-string v17, "checki_loc_name"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 351
    .local v11, "locationIndex":I
    const-string v17, "checkin_mesg"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 353
    .local v14, "mesgIndex":I
    const-string v17, "checkin_loc_latitude"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 355
    .local v8, "latitudeIndex":I
    const-string v17, "checkin_loc_longitude"

    .line 356
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 358
    .local v12, "longitudeIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->removeItems()V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->notifyDataSetChanged()V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkins:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 365
    :cond_0
    new-instance v1, Lcom/ushahidi/android/app/checkin/Checkin;

    invoke-direct {v1}, Lcom/ushahidi/android/app/checkin/Checkin;-><init>()V

    .line 366
    .local v1, "checkinsData":Lcom/ushahidi/android/app/checkin/Checkin;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->checkins:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v9, Lcom/ushahidi/android/app/checkin/ListCheckinText;

    invoke-direct {v9}, Lcom/ushahidi/android/app/checkin/ListCheckinText;-><init>()V

    .line 369
    .local v9, "listText":Lcom/ushahidi/android/app/checkin/ListCheckinText;
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ushahidi/android/app/util/Util;->toInt(Ljava/lang/String;)I

    move-result v6

    .line 370
    .local v6, "id":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/ushahidi/android/app/checkin/Checkin;->setId(Ljava/lang/String;)V

    .line 371
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/ushahidi/android/app/checkin/Checkin;->setLat(Ljava/lang/String;)V

    .line 372
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/ushahidi/android/app/checkin/Checkin;->setLon(Ljava/lang/String;)V

    .line 374
    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v1, v15}, Lcom/ushahidi/android/app/checkin/Checkin;->setName(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ushahidi/android/app/util/Util;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->setTitle(Ljava/lang/String;)V

    .line 378
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 379
    .local v13, "mesg":Ljava/lang/String;
    invoke-virtual {v1, v13}, Lcom/ushahidi/android/app/checkin/Checkin;->setMsg(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getMsg()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ushahidi/android/app/util/Util;->capitalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->setDesc(Ljava/lang/String;)V

    .line 382
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "location":Ljava/lang/String;
    invoke-virtual {v1, v10}, Lcom/ushahidi/android/app/checkin/Checkin;->setLoc(Ljava/lang/String;)V

    .line 384
    invoke-static {v10}, Lcom/ushahidi/android/app/util/Util;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->setLocation(Ljava/lang/String;)V

    .line 386
    const-string v17, "yyyy-MM-dd hh:mm:ss"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "MMMM dd, yyyy \'at\' hh:mm:ss aaa"

    invoke-static/range {v17 .. v19}, Lcom/ushahidi/android/app/util/Util;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/ushahidi/android/app/checkin/Checkin;->setDate(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v9, v4}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->setDate(Ljava/lang/String;)V

    .line 392
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/ushahidi/android/app/checkin/Checkin;->setImage(Ljava/lang/String;)V

    .line 393
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/ushahidi/android/app/checkin/Checkin;->setThumbnail(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getThumbnail()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 396
    sget-object v17, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ushahidi/android/app/checkin/Checkin;->getThumbnail()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/ushahidi/android/app/ImageManager;->getImages(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 402
    :goto_0
    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f02005f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 405
    invoke-virtual {v9, v6}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->setId(I)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020059

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ushahidi/android/app/checkin/ListCheckinText;->setArrow(Landroid/graphics/drawable/Drawable;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->addItem(Lcom/ushahidi/android/app/checkin/ListCheckinText;)V

    .line 409
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_0

    .line 412
    .end local v1    # "checkinsData":Lcom/ushahidi/android/app/checkin/Checkin;
    .end local v4    # "date":Ljava/lang/String;
    .end local v5    # "dateIndex":I
    .end local v6    # "id":I
    .end local v7    # "idIndex":I
    .end local v8    # "latitudeIndex":I
    .end local v9    # "listText":Lcom/ushahidi/android/app/checkin/ListCheckinText;
    .end local v10    # "location":Ljava/lang/String;
    .end local v11    # "locationIndex":I
    .end local v12    # "longitudeIndex":I
    .end local v13    # "mesg":Ljava/lang/String;
    .end local v14    # "mesgIndex":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "userIdIndex":I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;->notifyDataSetChanged()V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->listCheckins:Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ushahidi/android/app/checkin/ListCheckin;->ila:Lcom/ushahidi/android/app/checkin/ListCheckinAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/ushahidi/android/app/checkin/ListCheckin;->displayEmptyListText()V

    .line 416
    return-void

    .line 398
    .restart local v1    # "checkinsData":Lcom/ushahidi/android/app/checkin/Checkin;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v5    # "dateIndex":I
    .restart local v6    # "id":I
    .restart local v7    # "idIndex":I
    .restart local v8    # "latitudeIndex":I
    .restart local v9    # "listText":Lcom/ushahidi/android/app/checkin/ListCheckinText;
    .restart local v10    # "location":Ljava/lang/String;
    .restart local v11    # "locationIndex":I
    .restart local v12    # "longitudeIndex":I
    .restart local v13    # "mesg":Ljava/lang/String;
    .restart local v14    # "mesgIndex":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "userIdIndex":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v17, v3

    .line 402
    goto :goto_1
.end method
