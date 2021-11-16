.class public Lcom/ushahidi/android/app/About;
.super Lcom/ushahidi/android/app/DashboardActivity;
.source "About.java"


# static fields
.field private static final CONTACT_URL:Ljava/lang/String; = "http://ushahidi.com/contact-us"

.field private static final DIALOG_ERROR:I = 0x0

.field private static final FACEBOOK_URL:Ljava/lang/String; = "http://www.facebook.com/ushahidi"

.field private static final GOTOHOME:I = 0x0

.field private static final HOME:I = 0x2

.field private static final MEDIA_URL:Ljava/lang/String; = "http://www.ushahidi.com"

.field private static final REQUEST_CODE_SETTINGS:I = 0x1

.field private static final SETTINGS:I = 0x3

.field private static final TEAM_URL:Ljava/lang/String; = "http://ushahidi.com/about-us/team"

.field private static final TWITTER_URL:Ljava/lang/String; = "http://twitter.com/ushahidi"


# instance fields
.field private contactUrlBtn:Landroid/widget/Button;

.field private dialogErrorMsg:Ljava/lang/String;

.field private facebookUrlBtn:Landroid/widget/Button;

.field private i:Landroid/content/Intent;

.field final mDisplayErrorPrompt:Ljava/lang/Runnable;

.field private mediaUrlBtn:Landroid/widget/Button;

.field private teamUrlBtn:Landroid/widget/Button;

.field private twitterUrlBtn:Landroid/widget/Button;

.field private version:Landroid/widget/TextView;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ushahidi/android/app/DashboardActivity;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/About;->versionName:Ljava/lang/String;

    .line 74
    const-string v0, "An error occurred fetching the reports. Make sure you have entered an Ushahidi instance."

    iput-object v0, p0, Lcom/ushahidi/android/app/About;->dialogErrorMsg:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/ushahidi/android/app/About$7;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/About$7;-><init>(Lcom/ushahidi/android/app/About;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/About;->mDisplayErrorPrompt:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/About;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/About;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushahidi/android/app/About;->i:Landroid/content/Intent;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 182
    :goto_0
    return v1

    .line 171
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ushahidi/android/app/Ushahidi;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/ushahidi/android/app/About;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 176
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ushahidi/android/app/Settings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/ushahidi/android/app/About;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 145
    const/4 v1, 0x2

    const v2, 0x7f06006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 146
    .local v0, "i":Landroid/view/MenuItem;
    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 148
    const/4 v1, 0x3

    const v2, 0x7f06006e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 149
    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->setContentView(I)V

    .line 82
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->setTitleFromActivityLabel(I)V

    .line 84
    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->mediaUrlBtn:Landroid/widget/Button;

    .line 85
    const v1, 0x7f0a0012

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->teamUrlBtn:Landroid/widget/Button;

    .line 86
    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->twitterUrlBtn:Landroid/widget/Button;

    .line 87
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->facebookUrlBtn:Landroid/widget/Button;

    .line 88
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->contactUrlBtn:Landroid/widget/Button;

    .line 90
    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->version:Landroid/widget/TextView;

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/ushahidi/android/app/About;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ushahidi/android/app/About;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/ushahidi/android/app/About;->version:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushahidi/android/app/About;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.ushahidi.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->i:Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/ushahidi/android/app/About;->mediaUrlBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/About$1;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/About$1;-><init>(Lcom/ushahidi/android/app/About;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://ushahidi.com/about-us/team"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->i:Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/ushahidi/android/app/About;->teamUrlBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/About$2;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/About$2;-><init>(Lcom/ushahidi/android/app/About;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://twitter.com/ushahidi"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->i:Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/ushahidi/android/app/About;->twitterUrlBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/About$3;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/About$3;-><init>(Lcom/ushahidi/android/app/About;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.facebook.com/ushahidi"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->i:Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/ushahidi/android/app/About;->facebookUrlBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/About$4;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/About$4;-><init>(Lcom/ushahidi/android/app/About;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://ushahidi.com/contact-us"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/ushahidi/android/app/About;->i:Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/ushahidi/android/app/About;->contactUrlBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ushahidi/android/app/About$5;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/About$5;-><init>(Lcom/ushahidi/android/app/About;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 190
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 191
    iget-object v1, p0, Lcom/ushahidi/android/app/About;->dialogErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/ushahidi/android/app/About;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushahidi/android/app/About$6;

    invoke-direct {v2, p0}, Lcom/ushahidi/android/app/About$6;-><init>(Lcom/ushahidi/android/app/About;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/About;->populateMenu(Landroid/view/Menu;)V

    .line 157
    invoke-super {p0, p1}, Lcom/ushahidi/android/app/DashboardActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/About;->applyMenuChoice(Landroid/view/MenuItem;)Z

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
