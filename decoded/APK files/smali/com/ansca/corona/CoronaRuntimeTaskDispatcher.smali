.class public Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
.super Ljava/lang/Object;
.source "CoronaRuntimeTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;
    }
.end annotation


# instance fields
.field private fRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method

.method public constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p1, :cond_0

    .line 80
    invoke-static {p1}, Lcom/ansca/corona/CoronaRuntimeProvider;->getRuntimeByLuaState(Lcom/naef/jnlua/LuaState;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    :cond_0
    return-void
.end method


# virtual methods
.method public isRuntimeAvailable()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->wasNotDisposed()Z

    move-result v0

    return v0
.end method

.method public isRuntimeUnavailable()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->isRuntimeAvailable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public send(Lcom/ansca/corona/CoronaRuntimeTask;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->isRuntimeUnavailable()Z

    move-result v0

    const-string v1, "Corona"

    if-eqz v0, :cond_0

    const-string p1, "CoronaRuntimeTaskDispatcher.send() doesn\'t have an available CoronaRuntime to run this task on! Abort!"

    .line 137
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v1, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;

    iget-object v2, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v1, p1, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;-><init>(Lcom/ansca/corona/CoronaRuntimeTask;Lcom/ansca/corona/CoronaRuntime;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto :goto_0

    :cond_1
    const-string p1, "CoronaRuntimeTaskDispatcher.send() doesn\'t have an event manager to use! Abort!"

    .line 147
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
