.class public Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerBroadcastReceiver.java"


# static fields
.field private static final INTENT_EXTRA_ID_NAME:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)Landroid/content/Intent;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification://alarm?id="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result p0

    const-string p1, "id"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 46
    new-instance v0, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v0, p1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0, p2}, Lcom/ansca/corona/notifications/NotificationServices;->fetchScheduledNotificationById(I)Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    return-void
.end method
