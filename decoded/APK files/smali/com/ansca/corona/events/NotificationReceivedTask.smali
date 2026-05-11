.class public Lcom/ansca/corona/events/NotificationReceivedTask;
.super Ljava/lang/Object;
.source "NotificationReceivedTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# static fields
.field public static final NAME:Ljava/lang/String; = "notification"


# instance fields
.field private fApplicationStateName:Ljava/lang/String;

.field private fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 41
    iput-object p1, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fApplicationStateName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private getNotificationTypeString()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isSourceLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/ansca/corona/notifications/NotificationType;->LOCAL:Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationType;->toInvariantString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    sget-object v0, Lcom/ansca/corona/notifications/NotificationType;->REMOTE:Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationType;->toInvariantString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSourceDataName()Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceDataName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    const-string v0, "sourceData"

    :cond_2
    return-object v0
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 59
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    const-string v2, "notification"

    .line 60
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "name"

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/ansca/corona/events/NotificationReceivedTask;->getNotificationTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "type"

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fApplicationStateName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "applicationState"

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "alert"

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceData()Lcom/ansca/corona/CoronaData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceData()Lcom/ansca/corona/CoronaData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    .line 70
    invoke-direct {p0}, Lcom/ansca/corona/events/NotificationReceivedTask;->getSourceDataName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ansca/corona/CoronaData$Table;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    :goto_1
    const-string v2, "custom"

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 81
    invoke-static {p1}, Lcom/ansca/corona/JavaToNativeShim;->dispatchEventInLua(Lcom/ansca/corona/CoronaRuntime;)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "name"

    const-string v2, "notification"

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/ansca/corona/events/NotificationReceivedTask;->getNotificationTypeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fApplicationStateName:Ljava/lang/String;

    const-string v2, "applicationState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alert"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceData()Lcom/ansca/corona/CoronaData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/ansca/corona/events/NotificationReceivedTask;->getSourceDataName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ansca/corona/CoronaData$Proxy;

    invoke-direct {v3, v1}, Lcom/ansca/corona/CoronaData$Proxy;-><init>(Lcom/ansca/corona/CoronaData;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/events/NotificationReceivedTask;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v1

    if-nez v1, :cond_1

    .line 104
    new-instance v1, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v1}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 106
    :cond_1
    new-instance v2, Lcom/ansca/corona/CoronaData$Proxy;

    invoke-direct {v2, v1}, Lcom/ansca/corona/CoronaData$Proxy;-><init>(Lcom/ansca/corona/CoronaData;)V

    const-string v1, "custom"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
