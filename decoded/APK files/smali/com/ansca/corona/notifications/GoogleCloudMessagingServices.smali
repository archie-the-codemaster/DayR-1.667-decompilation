.class public final Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "GoogleCloudMessagingServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;,
        Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;,
        Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;
    }
.end annotation


# static fields
.field private static final CORONA_PREFERENCES_NAME:Ljava/lang/String; = "Corona"

.field private static final CORONA_PREFERENCE_PROJECT_NUMBERS_KEY:Ljava/lang/String; = "google-cloud-messaging-project-numbers"

.field private static final CORONA_PREFERENCE_REGISTRATION_ID_KEY:Ljava/lang/String; = "google-cloud-messaging-registration-id"

.field private static final GOOGLE_SERVICE_FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf"

.field private static final INTENT_EXTRA_ERROR_ID:Ljava/lang/String; = "error"

.field private static final INTENT_EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final INTENT_EXTRA_PENDING_INTENT:Ljava/lang/String; = "app"

.field private static final INTENT_EXTRA_PROJECT_NUMBERS:Ljava/lang/String; = "sender"

.field private static final INTENT_EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field private static final INTENT_EXTRA_TOTAL_DELETED:Ljava/lang/String; = "total_deleted"

.field private static final INTENT_EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field private static sOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

.field private static sRegisteredProjectNumbers:Ljava/lang/String;

.field private static sRegistrationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    .line 82
    const-class p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter p1

    .line 83
    :try_start_0
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 84
    sput-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    const-string v0, ""

    .line 85
    sput-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Corona"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "google-cloud-messaging-registration-id"

    const-string v2, ""

    .line 91
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    sput-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    :cond_0
    const-string v1, "google-cloud-messaging-project-numbers"

    const-string v2, ""

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    sput-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private executeNextQueuedOperation()V
    .locals 2

    .line 213
    const-class v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-eqz v1, :cond_0

    .line 216
    monitor-exit v0

    return-void

    .line 220
    :cond_0
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    monitor-exit v0

    return-void

    .line 225
    :cond_1
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    sput-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 226
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;->run()V

    .line 227
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onReceivedNotification(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 465
    :cond_0
    new-instance v0, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 466
    new-instance v1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    .line 467
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    const-string v2, "google"

    .line 468
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 469
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceLocal(Z)V

    const-string v3, "androidGcmBundle"

    .line 470
    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceDataName(Ljava/lang/String;)V

    .line 471
    invoke-static {p1}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceData(Lcom/ansca/corona/CoronaData;)V

    .line 474
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    const-string v3, "alert"

    .line 479
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 480
    instance-of v4, v3, Ljava/lang/String;

    const-string v5, "number"

    const-string v6, "text"

    const-string v7, "body"

    const-string v8, "title"

    if-eqz v4, :cond_5

    .line 482
    check-cast v3, Ljava/lang/String;

    .line 485
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 487
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 488
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 490
    :cond_1
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 491
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 492
    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 493
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 497
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 498
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 499
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 502
    :cond_3
    :goto_0
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 503
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_4

    .line 504
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-nez v2, :cond_9

    .line 512
    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-nez v3, :cond_9

    .line 519
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 520
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 521
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 523
    :cond_6
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 524
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 525
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    goto :goto_2

    .line 529
    :cond_7
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 530
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 531
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 535
    :cond_8
    :goto_2
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 536
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_9

    .line 537
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V

    :cond_9
    :goto_3
    const-string v2, "sound"

    .line 542
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 543
    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 547
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-static {v3, v2}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 550
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v4

    .line 552
    :goto_4
    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    :cond_a
    const-string v2, "custom"

    .line 557
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 558
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 560
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ansca/corona/CoronaData$Table;->from(Lorg/json/JSONObject;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    goto :goto_5

    .line 564
    :cond_b
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_c

    .line 565
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/ansca/corona/CoronaData$Table;->from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v4

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 568
    invoke-virtual {v1, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    .line 572
    :cond_d
    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    return-void
.end method

.method private onRegisteredWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 434
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->saveRegistrationInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance p2, Lcom/ansca/corona/events/NotificationRegistrationTask;

    invoke-direct {p2, p1}, Lcom/ansca/corona/events/NotificationRegistrationTask;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/ansca/corona/CoronaRuntimeProvider;->getAllCoronaRuntimes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaRuntime;

    .line 439
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onUnregistered()V
    .locals 1

    const-string v0, ""

    .line 449
    invoke-direct {p0, v0, v0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->saveRegistrationInformation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveRegistrationInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 300
    const-class v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 310
    :cond_1
    sput-object p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    .line 311
    sput-object p2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Corona"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "google-cloud-messaging-registration-id"

    .line 319
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "google-cloud-messaging-project-numbers"

    .line 320
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 324
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public getCommaSeparatedRegisteredProjectNumbers()Ljava/lang/String;
    .locals 2

    .line 263
    const-class v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v0

    .line 264
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 265
    monitor-exit v0

    return-object v1

    .line 267
    :cond_0
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRegisteredProjectNumbers()[Ljava/lang/String;
    .locals 3

    .line 278
    const-class v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 280
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 283
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 253
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 235
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnregistered()Z
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isRegistered()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method process(Landroid/content/Intent;)V
    .locals 5

    .line 341
    const-class v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    if-nez p1, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 347
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "registration_id"

    .line 354
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregistered"

    .line 355
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    .line 356
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 360
    monitor-enter v0

    .line 361
    :try_start_0
    sget-object p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of p1, p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz p1, :cond_2

    .line 362
    sget-object p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    check-cast p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->getProjectNumbers()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 364
    :goto_0
    :try_start_1
    sput-object v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 365
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    invoke-direct {p0, v1, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->onRegisteredWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    .line 365
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    if-eqz v2, :cond_4

    .line 371
    monitor-enter v0

    .line 372
    :try_start_3
    sput-object v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 373
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 374
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->onUnregistered()V

    .line 375
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    .line 373
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_4
    if-eqz p1, :cond_a

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 378
    monitor-enter v0

    :try_start_5
    const-string v1, "Corona"

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Google Cloud Messaging Registration Error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v1, v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 386
    sput-object v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 387
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    goto :goto_1

    :cond_5
    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-eqz p1, :cond_6

    .line 391
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    :cond_6
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_7
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "message_type"

    .line 399
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    const-string p1, "deleted_messages"

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Corona"

    const-string v0, "Google Cloud Messaging has deleted messages."

    .line 404
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 408
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unkown message type \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' from Google Cloud Messaging."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Corona"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 414
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->onReceivedNotification(Landroid/os/Bundle;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public register(Ljava/lang/String;)V
    .locals 3

    .line 117
    const-class v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v0

    if-eqz p1, :cond_5

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 129
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-nez v1, :cond_1

    .line 130
    monitor-exit v0

    return-void

    .line 134
    :cond_1
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v1, v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz v1, :cond_2

    .line 135
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    check-cast v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    .line 136
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->getProjectNumbers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    monitor-exit v0

    return-void

    .line 142
    :cond_2
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-nez v1, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 144
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    new-instance v2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    invoke-direct {v2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_3
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v1, v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz v1, :cond_4

    .line 148
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    new-instance v2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    invoke-direct {v2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 152
    :cond_4
    :goto_0
    new-instance v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    invoke-direct {v1, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;-><init>(Ljava/lang/String;)V

    .line 153
    sget-object p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    .line 155
    monitor-exit v0

    return-void

    .line 122
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public register([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 169
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->register(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 194
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 197
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v1, v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isUnregistered()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 207
    :cond_1
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    invoke-direct {v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    return-void
.end method
