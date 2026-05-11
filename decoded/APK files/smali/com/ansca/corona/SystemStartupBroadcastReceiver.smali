.class public Lcom/ansca/corona/SystemStartupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemStartupBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 36
    :try_start_0
    new-instance p2, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {p2, p1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p2}, Lcom/ansca/corona/notifications/NotificationServices;->hasNotifications()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/ansca/corona/CoronaService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CORONA"

    const-string v0, "Exception onReceive in SystemStartupBroadcastReceiver"

    .line 42
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
