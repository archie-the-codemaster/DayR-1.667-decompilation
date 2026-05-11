.class public final Lcom/ansca/corona/notifications/NotificationServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/notifications/NotificationServices$ApiLevel23;,
        Lcom/ansca/corona/notifications/NotificationServices$ApiLevel19;,
        Lcom/ansca/corona/notifications/NotificationServices$ApiLevel16;,
        Lcom/ansca/corona/notifications/NotificationServices$ApiLevel11;,
        Lcom/ansca/corona/notifications/NotificationServices$ApiLevel1;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "com.coronalabs.defaultChannel"

.field private static sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection<",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static sReservedNotificationIdSet:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sWasInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;-><init>()V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    .line 69
    const-class p1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter p1

    .line 70
    :try_start_0
    sget-boolean v0, Lcom/ansca/corona/notifications/NotificationServices;->sWasInitialized:Z

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;-><init>()V

    .line 74
    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->loadSettingsTo(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->post(Ljava/lang/Iterable;)V

    const/4 v0, 0x1

    .line 81
    sput-boolean v0, Lcom/ansca/corona/notifications/NotificationServices;->sWasInitialized:Z

    .line 83
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fetchNotificationsByType(Ljava/lang/Class;)Lcom/ansca/corona/notifications/NotificationSettingsCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection<",
            "TT;>;"
        }
    .end annotation

    .line 257
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 260
    :try_start_0
    new-instance v1, Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;-><init>()V

    if-eqz p1, :cond_1

    .line 262
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 263
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {v3}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V

    goto :goto_0

    .line 268
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private loadSettingsFrom(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 7

    .line 652
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 655
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 661
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 663
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_1
    :try_start_3
    const-string v2, "scheduled"

    .line 667
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 668
    new-instance v2, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-direct {v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;-><init>()V

    .line 669
    new-instance v4, Ljava/util/Date;

    const-string v5, ""

    const-string v6, "endTime"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setEndTime(Ljava/util/Date;)V

    .line 670
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 671
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v3, :cond_7

    const-string v3, "statusBar"

    .line 672
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 673
    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->loadSettingsFrom(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object p1

    .line 674
    instance-of v3, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v3, :cond_7

    .line 675
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v3

    check-cast p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v3, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 676
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2

    :cond_2
    :try_start_5
    const-string v2, "statusBar"

    .line 681
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 682
    new-instance v2, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    const-string v4, ""

    const-string v5, "id"

    .line 683
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 684
    new-instance v4, Ljava/util/Date;

    const-string v5, ""

    const-string v6, "timestamp"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTimestamp(Ljava/util/Date;)V

    const-string v4, ""

    const-string v5, "contentTitle"

    .line 685
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, "contentText"

    .line 686
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, "tickerText"

    .line 687
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, "iconResourceName"

    .line 688
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setIconResourceName(Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, "badgeNumber"

    .line 689
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V

    const-string v4, ""

    const-string v5, "soundFileUri"

    .line 690
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 691
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 692
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    :cond_3
    const-string v4, ""

    const-string v5, "sourceName"

    .line 694
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceName(Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, "isSourceLocal"

    .line 695
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 696
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 697
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceLocal(Z)V

    .line 700
    :cond_4
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 701
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v3, :cond_6

    const-string v4, "sourceData"

    .line 702
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    const-string v5, "name"

    .line 703
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceDataName(Ljava/lang/String;)V

    .line 704
    invoke-static {p1}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceData(Lcom/ansca/corona/CoronaData;)V

    goto :goto_0

    :cond_5
    const-string v4, "data"

    .line 706
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 707
    invoke-static {p1}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v4

    .line 708
    instance-of v5, v4, Lcom/ansca/corona/CoronaData$Table;

    if-eqz v5, :cond_4

    .line 709
    check-cast v4, Lcom/ansca/corona/CoronaData$Table;

    invoke-virtual {v2, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    goto :goto_0

    .line 713
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    const-string v4, "statusBar"

    .line 714
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_4

    .line 718
    :try_start_6
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 722
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    :cond_7
    monitor-exit v0

    return-object v1

    .line 727
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private loadSettingsTo(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection<",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">;)V"
        }
    .end annotation

    .line 590
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 593
    :try_start_0
    monitor-exit v0

    return-void

    .line 597
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->clear()V

    .line 600
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 601
    new-instance v2, Ljava/io/File;

    const-string v3, "NotificationSettings.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 613
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 614
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 615
    :try_start_2
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 618
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 621
    invoke-direct {p0, v3}, Lcom/ansca/corona/notifications/NotificationServices;->loadSettingsFrom(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {p1, v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 626
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 636
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 631
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_4

    .line 636
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 640
    :catch_2
    :cond_4
    :goto_2
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :goto_3
    if-eqz v4, :cond_5

    .line 636
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 637
    :catch_3
    :cond_5
    :try_start_8
    throw p1

    :catchall_2
    move-exception p1

    .line 640
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private postAndUpdateCollectionWith(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 5

    .line 353
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 356
    :try_start_0
    monitor-exit v0

    return-void

    .line 361
    :cond_0
    instance-of v1, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v1, :cond_1

    .line 362
    move-object v1, p1

    check-cast v1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .line 363
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 364
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 365
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object p1

    .line 370
    :cond_1
    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->postSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 373
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v1

    if-nez v1, :cond_2

    .line 376
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V

    goto :goto_0

    .line 379
    :cond_2
    instance-of v2, v1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v2, :cond_3

    .line 382
    check-cast v1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-object v2, p1

    check-cast v2, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)V

    goto :goto_0

    .line 384
    :cond_3
    instance-of v2, v1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v2, :cond_4

    instance-of v2, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v2, :cond_4

    .line 387
    check-cast v1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-object v2, p1

    check-cast v2, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    goto :goto_0

    .line 392
    :cond_4
    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 393
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v2, v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z

    .line 394
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 398
    :goto_0
    instance-of v1, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v1, :cond_6

    .line 399
    check-cast p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 401
    invoke-static {}, Lcom/ansca/corona/CoronaRuntimeProvider;->getAllCoronaRuntimes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/CoronaRuntime;

    .line 402
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 403
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v2

    new-instance v3, Lcom/ansca/corona/events/NotificationReceivedTask;

    const-string v4, "active"

    invoke-direct {v3, v4, p1}, Lcom/ansca/corona/events/NotificationReceivedTask;-><init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    invoke-virtual {v2, v3}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_1

    .line 407
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private postSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 6

    .line 422
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 425
    :try_start_0
    monitor-exit v0

    return-void

    .line 429
    :cond_0
    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    instance-of v2, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v2, :cond_3

    .line 433
    check-cast p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .line 438
    invoke-static {v1, p1}, Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;->createIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 437
    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v4, "alarm"

    .line 443
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 444
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 448
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 445
    invoke-static {v1, v3, v4, v5, v2}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel23;->alarmManagerSetExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 451
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 455
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 452
    invoke-static {v1, v3, v4, v5, v2}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel19;->alarmManagerSetExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 461
    :cond_2
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 459
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 465
    :cond_3
    instance-of v2, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v2, :cond_6

    .line 467
    check-cast p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 473
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    .line 474
    invoke-static {v1, p1}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel16;->createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    .line 476
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_5

    .line 477
    invoke-static {v1, p1}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel11;->createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    .line 480
    :cond_5
    invoke-static {v1, p1}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel1;->createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;

    move-result-object v2

    :goto_0
    const-string v3, "notification"

    .line 486
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 487
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result p1

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 491
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 4

    .line 550
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 553
    :try_start_0
    monitor-exit v0

    return-void

    .line 557
    :cond_0
    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :try_start_1
    instance-of v2, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v2, :cond_1

    const-string v2, "alarm"

    .line 563
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 564
    check-cast p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .line 566
    invoke-static {v1, p1}, Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;->createIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)Landroid/content/Intent;

    move-result-object p1

    const/4 v3, 0x0

    .line 565
    invoke-static {v1, v3, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 567
    invoke-virtual {v2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 569
    :cond_1
    instance-of v2, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v2, :cond_2

    const-string v2, "notification"

    .line 573
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 574
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 578
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private saveSettings(Lcom/ansca/corona/notifications/NotificationSettings;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    .line 803
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 811
    :cond_0
    :try_start_0
    instance-of v1, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v1, :cond_1

    .line 812
    check-cast p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    const-string v1, ""

    const-string v2, "scheduled"

    .line 813
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "endTime"

    .line 814
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettings;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string p1, ""

    const-string v1, "scheduled"

    .line 816
    invoke-interface {p2, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 818
    :cond_1
    instance-of v1, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v1, :cond_5

    .line 819
    check-cast p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    const-string v1, ""

    const-string v2, "statusBar"

    .line 820
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "id"

    .line 821
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "timestamp"

    .line 822
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "contentTitle"

    .line 823
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "contentText"

    .line 824
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "tickerText"

    .line 825
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTickerText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "iconResourceName"

    .line 826
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getIconResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "badgeNumber"

    .line 827
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getBadgeNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 828
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    const-string v2, "soundFileUri"

    .line 829
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const-string v1, ""

    const-string v2, "sourceName"

    .line 831
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "isSourceLocal"

    .line 832
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isSourceLocal()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceData()Lcom/ansca/corona/CoronaData;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ""

    const-string v2, "sourceData"

    .line 834
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "name"

    .line 835
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceDataName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceData()Lcom/ansca/corona/CoronaData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ansca/corona/CoronaData;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v1, ""

    const-string v2, "sourceData"

    .line 837
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    :cond_3
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    const-string v2, "data"

    .line 840
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaData$Table;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string p1, ""

    const-string v1, "data"

    .line 842
    invoke-interface {p2, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-string p1, ""

    const-string v1, "statusBar"

    .line 844
    invoke-interface {p2, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 848
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    .line 806
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 850
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection<",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">;)V"
        }
    .end annotation

    .line 739
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 742
    :try_start_0
    monitor-exit v0

    return-void

    .line 746
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 747
    new-instance v2, Ljava/io/File;

    const-string v3, "NotificationSettings.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gtz v1, :cond_2

    .line 752
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 753
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 757
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 759
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 766
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 767
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 768
    :try_start_4
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    .line 771
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, ""

    const-string v2, "notifications"

    .line 772
    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 774
    invoke-direct {p0, v1, v3}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettings;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    :cond_3
    const-string p1, ""

    const-string v1, "notifications"

    .line 776
    invoke-interface {v3, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 778
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 787
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 789
    :catch_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v1

    goto :goto_4

    :catch_3
    move-exception p1

    .line 782
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_4

    .line 787
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 789
    :catch_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 793
    :catch_5
    :cond_4
    :goto_3
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return-void

    :goto_4
    if-eqz v4, :cond_5

    .line 787
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 789
    :catch_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 790
    :catch_7
    :cond_5
    :try_start_d
    throw p1

    :catchall_2
    move-exception p1

    .line 793
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public fetchById(I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 2

    .line 156
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 157
    :try_start_0
    const-class v1, Lcom/ansca/corona/notifications/NotificationSettings;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 175
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 177
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1, p2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p2}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 182
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fetchScheduledNotificationById(I)Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .locals 2

    .line 196
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 197
    :try_start_0
    const-class v1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fetchScheduledNotifications()Lcom/ansca/corona/notifications/NotificationSettingsCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection<",
            "Lcom/ansca/corona/notifications/ScheduledNotificationSettings;",
            ">;"
        }
    .end annotation

    .line 223
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 224
    :try_start_0
    const-class v1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchNotificationsByType(Ljava/lang/Class;)Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fetchStatusBarNotificationById(I)Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .locals 2

    .line 209
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 210
    :try_start_0
    const-class v1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fetchStatusBarNotifications()Lcom/ansca/corona/notifications/NotificationSettingsCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection<",
            "Lcom/ansca/corona/notifications/StatusBarNotificationSettings;",
            ">;"
        }
    .end annotation

    .line 238
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 239
    :try_start_0
    const-class v1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchNotificationsByType(Ljava/lang/Class;)Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNotifications()Z
    .locals 2

    .line 143
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public post(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 1

    .line 292
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 295
    :try_start_0
    monitor-exit v0

    return-void

    .line 299
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->postAndUpdateCollectionWith(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 302
    sget-object p1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 303
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public post(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 326
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 329
    :try_start_0
    monitor-exit v0

    return-void

    .line 333
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 334
    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->postAndUpdateCollectionWith(Lcom/ansca/corona/notifications/NotificationSettings;)V

    goto :goto_0

    .line 338
    :cond_1
    sget-object p1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeAll()V
    .locals 4

    .line 532
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 534
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 535
    invoke-direct {p0, v2}, Lcom/ansca/corona/notifications/NotificationServices;->removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 536
    sget-object v3, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 540
    :cond_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->clear()V

    .line 541
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 542
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public removeById(I)Z
    .locals 3

    .line 508
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 510
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 512
    monitor-exit v0

    return p1

    .line 516
    :cond_0
    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 519
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 520
    sget-object p1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {p1, v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z

    .line 523
    sget-object p1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    const/4 p1, 0x1

    .line 524
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reserveId()I
    .locals 3

    .line 108
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 110
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reserveId(I)Z
    .locals 2

    .line 131
    const-class v0, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
