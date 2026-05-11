.class public Lcom/ansca/corona/Bridge;
.super Lcom/ansca/corona/NativeToJavaBridge;
.source "Bridge.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ansca/corona/NativeToJavaBridge;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static cancelAllNotifications()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Lcom/ansca/corona/Bridge;->callNotificationCancelAll(Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method

.method public static cancelNotification(I)V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/ansca/corona/Bridge;->callNotificationCancel(I)V

    return-void
.end method

.method public static scheduleNotification(Lcom/naef/jnlua/LuaState;I)I
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/ansca/corona/Bridge;->notificationSchedule(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const/4 p0, 0x1

    return p0
.end method
