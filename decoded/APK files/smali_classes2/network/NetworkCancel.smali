.class public Lnetwork/NetworkCancel;
.super Ljava/lang/Object;
.source "NetworkCancel.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# instance fields
.field private fLoader:Lnetwork/LuaLoader;


# direct methods
.method public constructor <init>(Lnetwork/LuaLoader;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnetwork/NetworkCancel;->fLoader:Lnetwork/LuaLoader;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cancel"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Cancelling request"

    .line 50
    invoke-static {v1, v0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "network.cancel() expects a requestId returned from a call to network.request()"

    .line 60
    invoke-static {p1, v2, v0}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1
.end method
