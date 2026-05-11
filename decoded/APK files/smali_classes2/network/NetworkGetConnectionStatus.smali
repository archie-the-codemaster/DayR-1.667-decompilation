.class public Lnetwork/NetworkGetConnectionStatus;
.super Ljava/lang/Object;
.source "NetworkGetConnectionStatus.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# instance fields
.field private fLoader:Lnetwork/LuaLoader;


# direct methods
.method public constructor <init>(Lnetwork/LuaLoader;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lnetwork/NetworkGetConnectionStatus;->fLoader:Lnetwork/LuaLoader;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getConnectionStatus"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    .line 54
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connectivity"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 70
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Is connected: %b, is mobile: %b"

    invoke-static {v6, v5}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p1, v2, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 74
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v2

    .line 75
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v3, "isConnected"

    .line 76
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "isMobile"

    .line 78
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return v1
.end method
