.class public Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OfflineIncidentSendReceiver.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final OFFLINE_MESSAGES_SENT:I = 0x1


# instance fields
.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createNotfication(Landroid/content/Context;)Landroid/app/Notification;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const v0, 0x7f02005f

    .line 130
    .local v0, "icon":I
    const v4, 0x7f06007a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 132
    .local v2, "when":J
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    return-object v4
.end method

.method private postToOnlineAllOfflineIncidents(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 81
    new-instance v1, Lcom/ushahidi/android/app/data/UshahidiDatabase;

    invoke-direct {v1, p1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "db":Lcom/ushahidi/android/app/data/UshahidiDatabase;
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->open()Lcom/ushahidi/android/app/data/UshahidiDatabase;

    .line 84
    const/4 v4, 0x0

    .line 86
    .local v4, "someOfflineIncidentsSent":Z
    const-string v6, "UshahidiService"

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 87
    .local v3, "settings":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Domain"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, "urlBuilder":Ljava/lang/StringBuilder;
    const-string v6, "/api"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->fetchAllOfflineIncidents()Landroid/database/Cursor;

    move-result-object v0

    .line 92
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 94
    invoke-static {p1}, Lcom/ushahidi/android/app/util/Util;->isCheckinEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    sget-object v6, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->CLASS_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending message with title : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    .line 99
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->preparePostParams(Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v7

    .line 101
    invoke-static {v6, v7}, Lcom/ushahidi/android/app/net/UshahidiHttpClient;->PostFileUpload(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 106
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->deleteAddIncident(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v4, 0x1

    .line 111
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v1}, Lcom/ushahidi/android/app/data/UshahidiDatabase;->close()V

    .line 119
    return v4
.end method

.method private preparePostParams(Landroid/database/Cursor;)Ljava/util/HashMap;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "task"

    const-string v2, "report"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "incident_title"

    const/4 v2, 0x1

    .line 146
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "incident_description"

    const/4 v2, 0x2

    .line 148
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "incident_date"

    const/4 v2, 0x3

    .line 150
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "incident_hour"

    const/4 v2, 0x4

    .line 152
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "incident_minute"

    const/4 v2, 0x5

    .line 154
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "incident_ampm"

    const/4 v2, 0x6

    .line 156
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "incident_category"

    const/4 v2, 0x7

    .line 158
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "latitude"

    const/16 v2, 0x9

    .line 160
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "longitude"

    const/16 v2, 0xa

    .line 162
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "location_name"

    const/16 v2, 0x8

    .line 164
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "person_first"

    const/16 v2, 0xe

    .line 166
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "person_last"

    const/16 v2, 0xf

    .line 168
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "person_email"

    const/16 v2, 0x10

    .line 170
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "filename"

    const/16 v2, 0xb

    .line 172
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 42
    sget-object v5, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->CLASS_TAG:Ljava/lang/String;

    const-string v6, "received connection state changed broadcast"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    sget-object v5, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->CLASS_TAG:Ljava/lang/String;

    const-string v6, "High possibility connection is on, so try sending any off line incidents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->postToOnlineAllOfflineIncidents(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const-string v5, "notification"

    .line 52
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 55
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->createNotfication(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    .line 58
    .local v3, "notification":Landroid/app/Notification;
    const v5, 0x7f060079

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    const v5, 0x7f060078

    .line 60
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "contentText":Ljava/lang/CharSequence;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v4, "notificationIntent":Landroid/content/Intent;
    invoke-static {p1, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 65
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, p1, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 68
    iget-object v5, p0, Lcom/ushahidi/android/app/OfflineIncidentSendReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 71
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "contentText":Ljava/lang/CharSequence;
    .end local v2    # "contentTitle":Ljava/lang/CharSequence;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
