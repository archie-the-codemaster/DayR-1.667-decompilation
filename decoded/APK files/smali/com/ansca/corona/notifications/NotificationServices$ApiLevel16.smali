.class Lcom/ansca/corona/notifications/NotificationServices$ApiLevel16;
.super Ljava/lang/Object;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/NotificationServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel16"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;
    .locals 4

    const-string v0, "com.coronalabs.defaultChannel"

    .line 1069
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices$ApiLevel11;->createNotificationBuilderFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1071
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    const-string v1, "notification"

    .line 1074
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1076
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1077
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v3, :cond_0

    .line 1078
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1081
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1083
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :catch_0
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "Default notification channel"

    .line 1086
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1087
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1088
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1090
    :goto_1
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1091
    invoke-virtual {v2, p0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1093
    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_3
    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1100
    :cond_4
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
