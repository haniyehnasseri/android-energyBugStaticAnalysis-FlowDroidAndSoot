.class public Lcom/ushahidi/android/app/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/Settings$ReportsTask;
    }
.end annotation


# static fields
.field public static final AUTO_FETCH_PREFERENCE:Ljava/lang/String; = "auto_fetch_preference"

.field public static final CHECKIN_PREFERENCE:Ljava/lang/String; = "checkin_preference"

.field public static final EMAIL_ADDRESS_PREFERENCE:Ljava/lang/String; = "email_address_preference"

.field public static final FLASH_LED_PREFERENCE:Ljava/lang/String; = "flash_led_preference"

.field public static final RINGTONE_PREFERENCE:Ljava/lang/String; = "ringtone_preference"

.field public static final SMS_PREFERENCE:Ljava/lang/String; = "sms_preference"

.field public static final USHAHIDI_DEPLOYMENT_PREFERENCE:Ljava/lang/String; = "ushahidi_instance_preference"

.field public static final VIBRATE_PREFERENCE:Ljava/lang/String; = "vibrate_preference"


# instance fields
.field private autoFetchCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private autoUpdateTimePref:Landroid/preference/ListPreference;

.field private checkin:Z

.field private clearCacheCheckBoxPref:Landroid/preference/DialogPreference;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private emailAddressPref:Landroid/preference/EditTextPreference;

.field private firstNamePref:Landroid/preference/EditTextPreference;

.field private flashLedCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private lastNamePref:Landroid/preference/EditTextPreference;

.field private final mHandler:Landroid/os/Handler;

.field mIsCheckinsEnabled:Ljava/lang/Runnable;

.field mValidateUrl:Ljava/lang/Runnable;

.field private minutes:Ljava/lang/String;

.field private onPhone:Ljava/lang/String;

.field private onSdCard:Ljava/lang/String;

.field private recentReports:Ljava/lang/String;

.field private ringtoneCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private saveItemsPref:Landroid/preference/ListPreference;

.field private settings:Landroid/content/SharedPreferences;

.field private totalReportsPref:Landroid/preference/ListPreference;

.field private validUrl:Z

.field private vibrateCheckBoxPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/ushahidi/android/app/Settings;->validUrl:Z

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->mHandler:Landroid/os/Handler;

    .line 91
    iput-boolean v1, p0, Lcom/ushahidi/android/app/Settings;->checkin:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->onPhone:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->onSdCard:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->minutes:Ljava/lang/String;

    .line 444
    new-instance v0, Lcom/ushahidi/android/app/Settings$1;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/Settings$1;-><init>(Lcom/ushahidi/android/app/Settings;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->mValidateUrl:Ljava/lang/Runnable;

    .line 480
    new-instance v0, Lcom/ushahidi/android/app/Settings$3;

    invoke-direct {v0, p0}, Lcom/ushahidi/android/app/Settings$3;-><init>(Lcom/ushahidi/android/app/Settings;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->mIsCheckinsEnabled:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ushahidi/android/app/Settings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/Settings;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/ushahidi/android/app/Settings;->validUrl:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ushahidi/android/app/Settings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ushahidi/android/app/Settings;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/ushahidi/android/app/Settings;->validUrl:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ushahidi/android/app/Settings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/Settings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushahidi/android/app/Settings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ushahidi/android/app/Settings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/Settings;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/ushahidi/android/app/Settings;->checkin:Z

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 14

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 140
    .local v6, "root":Landroid/preference/PreferenceScreen;
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-direct {v4, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 141
    .local v4, "basicPrefCat":Landroid/preference/PreferenceCategory;
    const v11, 0x7f060009

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 142
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    const/16 v11, 0x8

    new-array v9, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const-string v12, "20 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    .line 149
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "40 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "60 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    .line 150
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "80 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x4

    const-string v12, "100 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    .line 151
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x5

    const-string v12, "250 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x6

    const-string v12, "500 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    .line 152
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x7

    const-string v12, "1000 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 155
    .local v9, "totalReportsEntries":[Ljava/lang/CharSequence;
    const/16 v11, 0x8

    new-array v10, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const-string v12, "20"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "40"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "60"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "80"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "100"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "250"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "500"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "1000"

    aput-object v12, v10, v11

    .line 159
    .local v10, "totalReportsValues":[Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 160
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 161
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 162
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    const v12, 0x7f0600a3

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 163
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    const-string v12, "total_reports_preference"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 164
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    const v12, 0x7f0600a3

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 165
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    const v12, 0x7f060054

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 166
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 169
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    const v12, 0x7f0600ab

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 170
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    const-string v12, "first_name_preference"

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 171
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    const v12, 0x7f0600ab

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 172
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    const v12, 0x7f06004d

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 173
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x60

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 174
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    const v12, 0x7f0600ac

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 178
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    const-string v12, "last_name_preference"

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 179
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    const v12, 0x7f0600ac

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 180
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    const v12, 0x7f06004f

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 181
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x60

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 182
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    const v12, 0x7f0600aa

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 186
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    const-string v12, "email_address_preference"

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 187
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    const v12, 0x7f0600aa

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 188
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    const v12, 0x7f06004c

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 189
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 190
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, "advancedPrefCat":Landroid/preference/PreferenceCategory;
    const v11, 0x7f060004

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 195
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 198
    .local v1, "advancedScreenPref":Landroid/preference/PreferenceScreen;
    const-string v11, "advanced_screen_preference"

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 199
    const v11, 0x7f060004

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 200
    const v11, 0x7f060047

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoFetchCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v12, "auto_fetch_preference"

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 205
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoFetchCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060029

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 206
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoFetchCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060048

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 207
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoFetchCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    const/4 v11, 0x5

    new-array v2, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const-string v12, "5 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->minutes:Ljava/lang/String;

    .line 212
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "10 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->minutes:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "15 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->minutes:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x3

    const-string v12, "30 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->minutes:Ljava/lang/String;

    .line 213
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x4

    const-string v12, "60 "

    iget-object v13, p0, Lcom/ushahidi/android/app/Settings;->minutes:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    .line 215
    .local v2, "autoUpdateEntries":[Ljava/lang/CharSequence;
    const/4 v11, 0x6

    new-array v3, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "5"

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const-string v12, "10"

    aput-object v12, v3, v11

    const/4 v11, 0x3

    const-string v12, "15"

    aput-object v12, v3, v11

    const/4 v11, 0x4

    const-string v12, "30"

    aput-object v12, v3, v11

    const/4 v11, 0x5

    const-string v12, "60"

    aput-object v12, v3, v11

    .line 218
    .local v3, "autoUpdateValues":[Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 219
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 220
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 221
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    const v12, 0x7f0600a4

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 222
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    const-string v12, "auto_update_time_preference"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 223
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    const v12, 0x7f0600a4

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 224
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    const v12, 0x7f060049

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 225
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 229
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/ushahidi/android/app/Settings;->onPhone:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/ushahidi/android/app/Settings;->onSdCard:Ljava/lang/String;

    aput-object v12, v7, v11

    .line 233
    .local v7, "saveItemsEntries":[Ljava/lang/CharSequence;
    const/4 v11, 0x2

    new-array v8, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const-string v12, "phone"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "card"

    aput-object v12, v8, v11

    .line 237
    .local v8, "saveItemsValues":[Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 238
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 239
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 240
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    const v12, 0x7f06007d

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 241
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    const-string v12, "save_items_preference"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 242
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    const v12, 0x7f06007d

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 243
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    const v12, 0x7f060051

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 244
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->clearCacheCheckBoxPref:Landroid/preference/DialogPreference;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-direct {v5, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 251
    .local v5, "notificationPrefCat":Landroid/preference/PreferenceCategory;
    const v11, 0x7f06000a

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 252
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->vibrateCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v12, "vibrate_preference"

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 256
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->vibrateCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0600b5

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 257
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->vibrateCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060055

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 258
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->vibrateCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->ringtoneCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v12, "ringtone_preference"

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 262
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->ringtoneCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060094

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 263
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->ringtoneCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060052

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 264
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->ringtoneCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 267
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->flashLedCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v12, "flash_led_preference"

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 268
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->flashLedCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060044

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 269
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->flashLedCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f06004e

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 270
    iget-object v11, p0, Lcom/ushahidi/android/app/Settings;->flashLedCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    return-object v6
.end method


# virtual methods
.method public isCheckinsEnabled()V
    .locals 1

    .prologue
    .line 498
    invoke-static {p0}, Lcom/ushahidi/android/app/util/Util;->isCheckinEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    .line 503
    :goto_0
    invoke-static {p0}, Lcom/ushahidi/android/app/UshahidiPref;->saveSettings(Landroid/content/Context;)V

    .line 504
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->addPreferencesFromResource(I)V

    .line 107
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    .line 109
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    .line 111
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    .line 113
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->autoFetchCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 114
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->vibrateCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 115
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->ringtoneCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 116
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->flashLedCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 118
    const v0, 0x7f060087

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->recentReports:Ljava/lang/String;

    .line 119
    const v0, 0x7f06007b

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->onPhone:Ljava/lang/String;

    .line 120
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->onSdCard:Ljava/lang/String;

    .line 121
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->minutes:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "clear_cache_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/DialogPreference;

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->clearCacheCheckBoxPref:Landroid/preference/DialogPreference;

    .line 125
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    .line 126
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    .line 127
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    .line 128
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0}, Lcom/ushahidi/android/app/Settings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 132
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->saveSettings()V

    .line 133
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 334
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 337
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 324
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 325
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->saveSettings()V

    .line 327
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    const-string v0, "auto_fetch_preference"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/UshahidiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 352
    :goto_0
    const-string v0, "vibrate_preference"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    sput-boolean v3, Lcom/ushahidi/android/app/UshahidiPref;->vibrate:Z

    .line 359
    :goto_1
    const-string v0, "ringtone_preference"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    sput-boolean v3, Lcom/ushahidi/android/app/UshahidiPref;->ringtone:Z

    .line 368
    :goto_2
    const-string v0, "flash_led_preference"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    sput-boolean v3, Lcom/ushahidi/android/app/UshahidiPref;->flashLed:Z

    .line 376
    :goto_3
    const-string v0, "ushahidi_instance_preference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "ushahidi_instance_preference"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "ushahidi_instance_preference"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->validateUrl(Ljava/lang/String;)V

    .line 385
    :cond_0
    const-string v0, "email_address_preference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const-string v0, "email_address_preference"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushahidi/android/app/util/Util;->validateEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    const v0, 0x7f060066

    invoke-static {p0, v0}, Lcom/ushahidi/android/app/util/Util;->showToast(Landroid/content/Context;I)V

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/ushahidi/android/app/Settings;->saveSettings()V

    .line 394
    return-void

    .line 348
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushahidi/android/app/UshahidiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/Settings;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 355
    :cond_3
    sput-boolean v2, Lcom/ushahidi/android/app/UshahidiPref;->vibrate:Z

    goto :goto_1

    .line 364
    :cond_4
    sput-boolean v2, Lcom/ushahidi/android/app/UshahidiPref;->ringtone:Z

    goto :goto_2

    .line 372
    :cond_5
    sput-boolean v2, Lcom/ushahidi/android/app/UshahidiPref;->flashLed:Z

    goto :goto_3
.end method

.method protected saveSettings()V
    .locals 8

    .prologue
    .line 277
    const-string v5, "UshahidiService"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/ushahidi/android/app/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/ushahidi/android/app/Settings;->settings:Landroid/content/SharedPreferences;

    .line 278
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iput-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->autoUpdateTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "autoUpdate":Ljava/lang/String;
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->saveItemsPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "saveItems":Ljava/lang/String;
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->totalReportsPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "totalReports":Ljava/lang/String;
    const/4 v0, 0x0

    .line 288
    .local v0, "autoUdateDelay":I
    const-string v5, "5"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    const/4 v0, 0x5

    .line 300
    :cond_0
    :goto_0
    const-string v5, "phone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 301
    const-string v5, ""

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/ushahidi/android/app/Settings;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "newSavePath":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Domain"

    sget-object v7, Lcom/ushahidi/android/app/UshahidiPref;->domain:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Firstname"

    iget-object v7, p0, Lcom/ushahidi/android/app/Settings;->firstNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Lastname"

    iget-object v7, p0, Lcom/ushahidi/android/app/Settings;->lastNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Email"

    iget-object v7, p0, Lcom/ushahidi/android/app/Settings;->emailAddressPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "savePath"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "AutoUpdateDelay"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "AutoFetch"

    iget-object v7, p0, Lcom/ushahidi/android/app/Settings;->autoFetchCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "TotalReports"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "CheckinEnabled"

    sget v7, Lcom/ushahidi/android/app/UshahidiPref;->isCheckinEnabled:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    iget-object v5, p0, Lcom/ushahidi/android/app/Settings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    return-void

    .line 290
    .end local v2    # "newSavePath":Ljava/lang/String;
    :cond_1
    const-string v5, "10"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    const/16 v0, 0xa

    goto :goto_0

    .line 292
    :cond_2
    const-string v5, "15"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 294
    :cond_3
    const-string v5, "30"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 296
    :cond_4
    const-string v5, "60"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    const/16 v0, 0x3c

    goto/16 :goto_0

    .line 304
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ushahidi"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newSavePath":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public validateUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 469
    new-instance v0, Lcom/ushahidi/android/app/Settings$2;

    invoke-direct {v0, p0, p1}, Lcom/ushahidi/android/app/Settings$2;-><init>(Lcom/ushahidi/android/app/Settings;Ljava/lang/String;)V

    .line 477
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 478
    return-void
.end method
