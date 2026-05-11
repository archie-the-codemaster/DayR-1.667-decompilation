.class public Lcom/ansca/corona/events/NotificationRegistrationTask;
.super Ljava/lang/Object;
.source "NotificationRegistrationTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fRegistrationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/ansca/corona/events/NotificationRegistrationTask;->fRegistrationId:Ljava/lang/String;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 47
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    const-string v2, "notification"

    .line 48
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "name"

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 50
    sget-object v2, Lcom/ansca/corona/notifications/NotificationType;->REMOTE_REGISTRATION:Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationType;->toInvariantString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "type"

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationRegistrationTask;->fRegistrationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "token"

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/ansca/corona/JavaToNativeShim;->dispatchEventInLua(Lcom/ansca/corona/CoronaRuntime;)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-void
.end method
