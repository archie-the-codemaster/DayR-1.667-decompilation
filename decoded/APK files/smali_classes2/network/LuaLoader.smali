.class public Lnetwork/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "networkLibraryEvent"


# instance fields
.field private fNetworkRequest:Lnetwork/NetworkRequest;

.field private fRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    .line 38
    iput-object v0, p0, Lnetwork/LuaLoader;->fRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-void
.end method


# virtual methods
.method public getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1

    .line 190
    iget-object v0, p0, Lnetwork/LuaLoader;->fRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LuaLoader invoke - luaState: %s"

    invoke-static {v2, v1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v1, Lnetwork/NetworkRequest;

    invoke-direct {v1, p0}, Lnetwork/NetworkRequest;-><init>(Lnetwork/LuaLoader;)V

    iput-object v1, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 59
    iget-object v2, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    aput-object v2, v1, v3

    new-instance v2, Lnetwork/NetworkCancel;

    invoke-direct {v2, p0}, Lnetwork/NetworkCancel;-><init>(Lnetwork/LuaLoader;)V

    aput-object v2, v1, v0

    new-instance v2, Lnetwork/NetworkGetConnectionStatus;

    invoke-direct {v2, p0}, Lnetwork/NetworkGetConnectionStatus;-><init>(Lnetwork/LuaLoader;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 65
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 70
    invoke-static {p1}, Lnetwork/LuaHelper;->loadLuaHelper(Lcom/naef/jnlua/LuaState;)Ljava/lang/Boolean;

    return v0
.end method

.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onExiting"

    .line 148
    invoke-static {v1, v0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    invoke-virtual {v0, p1}, Lnetwork/NetworkRequest;->abortOpenConnections(Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 82
    new-instance v0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    iput-object v0, p0, Lnetwork/LuaLoader;->fRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 84
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network plugin onLoaded - JNLUA version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "LuaLoader onLoaded - luaState: %s"

    invoke-static {p1, v0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "http.keepAlive"

    const-string v0, "false"

    .line 120
    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onResumed"

    .line 141
    invoke-static {v0, p1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onStarted"

    .line 127
    invoke-static {v0, p1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onSuspended"

    .line 134
    invoke-static {v0, p1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 173
    :cond_1
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 180
    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
