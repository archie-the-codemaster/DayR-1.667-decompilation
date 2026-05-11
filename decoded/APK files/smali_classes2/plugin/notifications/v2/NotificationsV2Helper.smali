.class final Lplugin/notifications/v2/NotificationsV2Helper;
.super Ljava/lang/Object;
.source "NotificationsV2Helper.java"


# static fields
.field private static final NOTIFICATION_SOURCE_DATA_NAME:Ljava/lang/String; = "androidPayload"

.field private static final NOTIFICATION_SOURCE_NAME:Ljava/lang/String; = "google"

.field private static previousMessageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static checkForMessageData()V
    .locals 7

    .line 247
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "google.message_id"

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 255
    sget-object v2, Lplugin/notifications/v2/NotificationsV2Helper;->previousMessageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 256
    sput-object v1, Lplugin/notifications/v2/NotificationsV2Helper;->previousMessageId:Ljava/lang/String;

    .line 259
    new-instance v1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    const-string v2, "google"

    .line 261
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 262
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceLocal(Z)V

    .line 265
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 270
    new-instance v2, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v2}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "collapse_key"

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "google."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "from"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 275
    new-instance v6, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v6, v4}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaData$Table;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 279
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    .line 283
    :cond_2
    invoke-static {v0}, Lcom/ansca/corona/CoronaData$Table;->from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    .line 284
    invoke-virtual {v1, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceData(Lcom/ansca/corona/CoronaData;)V

    const-string v0, "androidPayload"

    .line 285
    invoke-virtual {v1, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceDataName(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/ansca/corona/CoronaRuntimeProvider;->getAllCoronaRuntimes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/CoronaRuntime;

    .line 289
    new-instance v3, Lcom/ansca/corona/events/NotificationReceivedTask;

    const-string v4, "inactive"

    invoke-direct {v3, v4, v1}, Lcom/ansca/corona/events/NotificationReceivedTask;-><init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    .line 290
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static processRemoteMessage(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)V
    .locals 14

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v2, p1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v3, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    const-string v4, "google"

    .line 55
    invoke-virtual {v3, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceName(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 56
    invoke-virtual {v3, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceLocal(Z)V

    .line 59
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v3, v5}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v5}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    const-string v5, "androidPayload"

    const-string v6, "sound"

    const-string v7, "tag"

    const-string v8, "body"

    const-string v9, "title"

    const/4 v10, 0x0

    if-eqz v1, :cond_6

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getSound()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v4, "doNotPlaySound"

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 78
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_2

    const-string p1, "default"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 86
    :cond_2
    invoke-virtual {v3, v10}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/ansca/corona/CoronaData$Table;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaData$Table;

    .line 92
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaData$Table;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 93
    invoke-virtual {v3, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    .line 98
    :cond_4
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 107
    :goto_3
    new-instance v4, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v4}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 108
    new-instance v10, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v10, v9}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v9

    invoke-virtual {v4, v10, v9}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 109
    new-instance v9, Lcom/ansca/corona/CoronaData$String;

    const-string v10, "title_loc_key"

    invoke-direct {v9, v10}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitleLocalizationKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 110
    new-instance v9, Lcom/ansca/corona/CoronaData$String;

    const-string v10, "title_loc_args"

    invoke-direct {v9, v10}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitleLocalizationArgs()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 111
    new-instance v9, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v9, v8}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 112
    new-instance v8, Lcom/ansca/corona/CoronaData$String;

    const-string v9, "body_loc_key"

    invoke-direct {v8, v9}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBodyLocalizationKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 113
    new-instance v8, Lcom/ansca/corona/CoronaData$String;

    const-string v9, "body_loc_args"

    invoke-direct {v8, v9}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBodyLocalizationArgs()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 114
    new-instance v8, Lcom/ansca/corona/CoronaData$String;

    const-string v9, "icon"

    invoke-direct {v8, v9}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getIcon()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 115
    new-instance v8, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v8, v6}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 116
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v0, v7}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 117
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "color"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 118
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "click_action"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getClickAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 120
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "from"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 121
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "to"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 122
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "collapse_key"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getCollapseKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 123
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "google.message_id"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 124
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "message_type"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 125
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "google.sent_time"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getSentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 126
    new-instance p1, Lcom/ansca/corona/CoronaData$String;

    const-string v0, "time_to_live"

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getTtl()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object p0

    invoke-virtual {v4, p1, p0}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 128
    invoke-virtual {v3, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceData(Lcom/ansca/corona/CoronaData;)V

    .line 129
    invoke-virtual {v3, v5}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceDataName(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_6
    const-string p0, "alert"

    .line 133
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 134
    instance-of v1, p0, Ljava/lang/String;

    const-string v11, "number"

    const-string v12, "text"

    if-eqz v1, :cond_b

    .line 136
    check-cast p0, Ljava/lang/String;

    .line 139
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 141
    instance-of v13, v9, Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 142
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 144
    :cond_7
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 145
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 146
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 147
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    goto :goto_4

    .line 150
    :cond_8
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 151
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 152
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 153
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 156
    :cond_9
    :goto_4
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    instance-of v8, v1, Ljava/lang/Number;

    if-eqz v8, :cond_a

    .line 158
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    const/4 v4, 0x1

    goto :goto_5

    :catch_1
    nop

    :goto_5
    if-nez v4, :cond_f

    .line 166
    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    if-nez p0, :cond_f

    .line 173
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 174
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 175
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 177
    :cond_c
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 178
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 179
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    goto :goto_6

    .line 183
    :cond_d
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 184
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 185
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 189
    :cond_e
    :goto_6
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 190
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    .line 191
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V

    .line 196
    :cond_f
    :goto_7
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 197
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 198
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    goto :goto_8

    .line 201
    :cond_10
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 205
    :goto_8
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 206
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 209
    :try_start_2
    check-cast p0, Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-static {p1, p0}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v10

    .line 215
    :goto_9
    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    :cond_11
    const-string p0, "custom"

    .line 220
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 221
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 223
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ansca/corona/CoronaData$Table;->from(Lorg/json/JSONObject;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    nop

    goto :goto_a

    .line 227
    :cond_12
    instance-of p1, p0, Landroid/os/Bundle;

    if-eqz p1, :cond_13

    .line 228
    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/ansca/corona/CoronaData$Table;->from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v10

    :cond_13
    :goto_a
    if-eqz v10, :cond_14

    .line 231
    invoke-virtual {v3, v10}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    .line 234
    :cond_14
    invoke-static {v0}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceData(Lcom/ansca/corona/CoronaData;)V

    .line 235
    invoke-virtual {v3, v5}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceDataName(Ljava/lang/String;)V

    .line 239
    :goto_b
    invoke-virtual {v2, v3}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    return-void
.end method
