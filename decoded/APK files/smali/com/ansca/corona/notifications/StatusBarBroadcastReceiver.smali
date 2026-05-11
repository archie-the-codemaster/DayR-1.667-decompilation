.class public Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarBroadcastReceiver.java"


# static fields
.field private static final INTENT_EXTRA_ID_NAME:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createContentIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.action.VIEW"

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification://statusbar?id="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "android.intent.action.DELETE"

    .line 129
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result p0

    const-string p1, "id"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

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

    move-result v0

    .line 46
    new-instance v1, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v1, p1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/ansca/corona/notifications/NotificationServices;->fetchStatusBarNotificationById(I)Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/notifications/NotificationServices;->removeById(I)Z

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 61
    new-instance p2, Lcom/ansca/corona/events/NotificationReceivedTask;

    const-string v1, "inactive"

    invoke-direct {p2, v1, v0}, Lcom/ansca/corona/events/NotificationReceivedTask;-><init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    .line 64
    invoke-static {}, Lcom/ansca/corona/CoronaRuntimeProvider;->getAllCoronaRuntimes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ansca/corona/CoronaRuntime;

    .line 65
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "active"

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 66
    :goto_1
    new-instance v4, Lcom/ansca/corona/events/NotificationReceivedTask;

    invoke-direct {v4, v3, v0}, Lcom/ansca/corona/events/NotificationReceivedTask;-><init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    .line 68
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    move-object p2, v4

    goto :goto_0

    .line 72
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p2}, Lcom/ansca/corona/events/NotificationReceivedTask;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "notification"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method
