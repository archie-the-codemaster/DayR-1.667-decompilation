.class Lcom/ansca/corona/notifications/NotificationServices$ApiLevel11;
.super Ljava/lang/Object;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/NotificationServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel11"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationBuilderFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification$Builder;
    .locals 4

    .line 983
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel1;->getIconResourceId(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 989
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 991
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 992
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTickerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 993
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 994
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 995
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getBadgeNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 996
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1002
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1003
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isRemovable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1004
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isRemovable()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1008
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createContentIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    .line 1009
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1012
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object p1

    .line 1013
    invoke-static {p0, v2, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object v1
.end method

.method public static createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;
    .locals 0

    .line 1033
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel11;->createNotificationBuilderFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification$Builder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1039
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
