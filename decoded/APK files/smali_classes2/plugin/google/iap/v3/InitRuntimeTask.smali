.class public Lplugin/google/iap/v3/InitRuntimeTask;
.super Ljava/lang/Object;
.source "InitRuntimeTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private DEBUG:Z

.field private fHelper:Lplugin/google/iap/v3/util/IabHelper;

.field private fLibRef:I

.field private fListener:I

.field private fResult:Lplugin/google/iap/v3/util/IabResult;


# direct methods
.method public constructor <init>(Lplugin/google/iap/v3/util/IabHelper;Lplugin/google/iap/v3/util/IabResult;II)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->DEBUG:Z

    .line 39
    iput-object p1, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    .line 40
    iput-object p2, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    .line 41
    iput p3, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fListener:I

    .line 42
    iput p4, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fLibRef:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 6

    .line 47
    iget v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fListener:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-boolean v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->DEBUG:Z

    const-string v1, "Corona"

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitRuntimeTask: thread id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const/16 v0, -0x2710

    .line 60
    :try_start_0
    iget v2, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fLibRef:I

    invoke-virtual {p1, v0, v2}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    .line 62
    iget-object v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->isSuccess()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "isActive"

    const/4 v2, -0x2

    .line 63
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fHelper:Lplugin/google/iap/v3/util/IabHelper;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabHelper;->subscriptionsSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "canPurchaseSubscriptions"

    .line 66
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v3, "init"

    .line 71
    invoke-static {p1, v3}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 74
    iget-object v3, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v3}, Lplugin/google/iap/v3/util/IabResult;->isFailure()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "isError"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 75
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 76
    invoke-virtual {p1, v2, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->getResponse()I

    move-result v0

    int-to-double v3, v0

    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "errorType"

    .line 79
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "errorString"

    .line 82
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 85
    invoke-virtual {p1, v2, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :goto_0
    const-string v0, "initialized"

    .line 88
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "state"

    .line 89
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const-string v0, "transaction"

    .line 91
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 94
    iget v0, p0, Lplugin/google/iap/v3/InitRuntimeTask;->fListener:I

    invoke-static {p1, v0, v5}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "InitRuntimeTask: dispatching Google IAP init event"

    .line 97
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
