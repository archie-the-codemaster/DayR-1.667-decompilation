.class Lplugin/gpgs/Multiplayer;
.super Ljava/lang/Object;
.source "Multiplayer.java"


# instance fields
.field invitations:Lplugin/gpgs/MultiplayerInvitations;

.field realtime:Lplugin/gpgs/MultiplayerRealtime;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 19
    new-instance v0, Lplugin/gpgs/Multiplayer$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Multiplayer$1;-><init>(Lplugin/gpgs/Multiplayer;)V

    const-string v1, "getLimits"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 26
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations;

    invoke-direct {v0, p1}, Lplugin/gpgs/MultiplayerInvitations;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lplugin/gpgs/Multiplayer;->invitations:Lplugin/gpgs/MultiplayerInvitations;

    .line 27
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime;

    invoke-direct {v0, p1}, Lplugin/gpgs/MultiplayerRealtime;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lplugin/gpgs/Multiplayer;->realtime:Lplugin/gpgs/MultiplayerRealtime;

    .line 28
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased;

    invoke-direct {v0, p1}, Lplugin/gpgs/MultiplayerTurnbased;-><init>(Lcom/naef/jnlua/LuaState;)V

    const/4 v0, -0x2

    const-string v1, "multiplayer"

    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 12
    invoke-static {p0}, Lplugin/gpgs/Multiplayer;->getLimits(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private static getLimits(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "multiplayer.getLimits()"

    .line 35
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 37
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/16 v1, 0x578

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reliablePayloadSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x490

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "unreliablePayloadSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->getMaxMatchDataSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "matchPayloadSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p0, v0}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
