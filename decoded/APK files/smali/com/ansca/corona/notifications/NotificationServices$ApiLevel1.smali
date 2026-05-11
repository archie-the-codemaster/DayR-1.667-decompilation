.class Lcom/ansca/corona/notifications/NotificationServices$ApiLevel1;
.super Ljava/lang/Object;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/NotificationServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel1"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;
    .locals 12

    .line 907
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel1;->getIconResourceId(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 913
    :cond_0
    new-instance v2, Landroid/app/Notification;

    .line 914
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTickerText()Ljava/lang/String;

    move-result-object v3

    .line 915
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 917
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createContentIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v0

    .line 926
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setLatestEventInfo"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/CharSequence;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/CharSequence;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const-class v7, Landroid/app/PendingIntent;

    const/4 v11, 0x3

    aput-object v7, v6, v11

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v8

    .line 928
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 929
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    aput-object v0, v4, v11

    .line 928
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v0

    .line 936
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 937
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getBadgeNumber()I

    move-result p0

    iput p0, v2, Landroid/app/Notification;->number:I

    .line 938
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 939
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 942
    :cond_1
    iput v9, v2, Landroid/app/Notification;->defaults:I

    :goto_0
    const/16 p0, 0x8

    .line 944
    iput p0, v2, Landroid/app/Notification;->flags:I

    .line 945
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isRemovable()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 946
    iget p0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v2, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 949
    :cond_2
    iget p0, v2, Landroid/app/Notification;->flags:I

    or-int/2addr p0, v10

    iput p0, v2, Landroid/app/Notification;->flags:I

    .line 950
    iget p0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 p0, p0, 0x20

    iput p0, v2, Landroid/app/Notification;->flags:I

    :goto_1
    return-object v2

    :catch_0
    return-object v1
.end method

.method public static getIconResourceId(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getIconResourceId()I

    move-result p1

    if-nez p1, :cond_1

    .line 886
    new-instance p1, Lcom/ansca/corona/storage/ResourceServices;

    invoke-direct {p1, p0}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    const-string p0, "corona_statusbar_icon_default"

    .line 887
    invoke-virtual {p1, p0}, Lcom/ansca/corona/storage/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result p1

    .line 891
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
