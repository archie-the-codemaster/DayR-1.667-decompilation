.class Lplugin/gpgs/Players;
.super Ljava/lang/Object;
.source "Players.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;,
        Lplugin/gpgs/Players$LoadStatsResultCallback;,
        Lplugin/gpgs/Players$LoadPlayersResultCallback;
    }
.end annotation


# instance fields
.field private actions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "loadLocalPlayer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "loadPlayers"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "loadFriends"

    aput-object v2, v0, v1

    .line 347
    iput-object v0, p0, Lplugin/gpgs/Players;->actions:[Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 34
    new-instance v0, Lplugin/gpgs/Players$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Players$1;-><init>(Lplugin/gpgs/Players;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 40
    new-instance v0, Lplugin/gpgs/Players$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Players$2;-><init>(Lplugin/gpgs/Players;)V

    const-string v1, "loadStats"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 46
    new-instance v0, Lplugin/gpgs/Players$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/Players$3;-><init>(Lplugin/gpgs/Players;)V

    const-string v1, "showCompare"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 52
    new-instance v0, Lplugin/gpgs/Players$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/Players$4;-><init>(Lplugin/gpgs/Players;)V

    const-string v1, "showSearch"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "players"

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/Players;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/Players;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Players;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/Players;->loadStats(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/Players;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/Players;->showCompare(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/Players;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/Players;->showSearch(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private load(Lcom/naef/jnlua/LuaState;Z)I
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "players.load()"

    .line 70
    invoke-static {v1}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 72
    invoke-static {v0, v1}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 73
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 74
    new-instance v2, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v2}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v4, "playerId"

    .line 75
    invoke-virtual {v2, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v5, "playerIds"

    .line 76
    invoke-virtual {v2, v5}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v6, "playerIds.#"

    .line 77
    invoke-virtual {v2, v6}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v6, "source"

    .line 78
    invoke-virtual {v2, v6}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v7, "limit"

    .line 79
    invoke-virtual {v2, v7}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v8, "reload"

    .line 80
    invoke-virtual {v2, v8}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v9, "listener"

    const-string v12, "load"

    .line 81
    invoke-virtual {v2, v9, v12}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    .line 83
    new-instance v10, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v10, v0, v1}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v10, v2}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v4}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v5}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 86
    invoke-virtual {v0, v6}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v0, v7}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    .line 89
    invoke-virtual {v0, v9}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const/16 v0, 0x19

    if-eqz v14, :cond_0

    .line 91
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v9, v0

    cmp-long v11, v7, v9

    if-gez v11, :cond_0

    .line 92
    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v0

    :cond_0
    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 96
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 98
    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v15, v8

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    const-string v8, "invitable"

    if-nez v5, :cond_5

    if-eqz v15, :cond_3

    .line 104
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 107
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v2

    .line 110
    :cond_4
    :goto_2
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v0, v1, v2, v7}, Lcom/google/android/gms/games/Players;->loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    goto :goto_4

    :cond_5
    const/4 v9, -0x1

    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x7150cbca

    const/4 v7, 0x2

    if-eq v10, v11, :cond_8

    const v11, -0x425b2e7f

    if-eq v10, v11, :cond_7

    const v11, -0x22860cf7

    if-eq v10, v11, :cond_6

    goto :goto_3

    :cond_6
    const-string v10, "connected"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    const-string v10, "recentlyPlayedWith"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x2

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x1

    :cond_9
    :goto_3
    if-eqz v9, :cond_c

    if-eq v9, v1, :cond_b

    if-eq v9, v7, :cond_a

    const/4 v7, 0x0

    goto :goto_4

    .line 120
    :cond_a
    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v7, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v1, v7, v0, v9}, Lcom/google/android/gms/games/Players;->loadRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    goto :goto_4

    .line 117
    :cond_b
    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v7, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v1, v7, v0, v9}, Lcom/google/android/gms/games/Players;->loadInvitablePlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    goto :goto_4

    .line 114
    :cond_c
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v0, v1, v7}, Lcom/google/android/gms/games/Players;->loadConnectedPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    :goto_4
    if-eqz v7, :cond_10

    if-nez p2, :cond_d

    .line 126
    new-instance v0, Lplugin/gpgs/Players$LoadPlayersResultCallback;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object v10, v0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Lplugin/gpgs/Players$LoadPlayersResultCallback;-><init>(Lplugin/gpgs/Players;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/ArrayList;Z)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_e

    .line 129
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "loadFriends"

    goto :goto_5

    :cond_e
    if-nez v2, :cond_f

    if-nez v4, :cond_f

    const-string v0, "loadLocalPlayer"

    goto :goto_5

    :cond_f
    const-string v0, "loadPlayers"

    .line 134
    :goto_5
    new-instance v1, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0, v13, v15}, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;-><init>(Lplugin/gpgs/Players;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_7

    :cond_10
    :goto_6
    move-object/from16 v2, p0

    :goto_7
    return v3
.end method

.method private loadStats(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "players.loadStats()"

    .line 145
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 147
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 148
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "reload"

    .line 150
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "loadStats"

    .line 151
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 153
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 154
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 156
    sget-object v1, Lcom/google/android/gms/games/Games;->Stats:Lcom/google/android/gms/games/stats/Stats;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/games/stats/Stats;->loadPlayerStats(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Players$LoadStatsResultCallback;

    invoke-direct {v1, p0, v5, p1}, Lplugin/gpgs/Players$LoadStatsResultCallback;-><init>(Lplugin/gpgs/Players;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    return v2
.end method

.method private showCompare(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "players.showCompare()"

    .line 165
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 167
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 168
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "playerId"

    .line 170
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "showCompare"

    .line 171
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 173
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 174
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 176
    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/games/Players;->loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Players$LoadPlayersResult;

    invoke-interface {v0}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getPlayers()Lcom/google/android/gms/games/PlayerBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/games/Players;->getCompareProfileIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/Player;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v5, p1}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    :cond_0
    return v2
.end method

.method private showSearch(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "players.showSearch()"

    .line 187
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 189
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 190
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "showSearch"

    .line 192
    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    .line 194
    new-instance v0, Lplugin/gpgs/Players$5;

    invoke-direct {v0, p0, p1}, Lplugin/gpgs/Players$5;-><init>(Lplugin/gpgs/Players;I)V

    .line 211
    sget-object p1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/Players;->getPlayerSearchIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method hasAction(Ljava/lang/String;)Z
    .locals 5

    .line 350
    iget-object v0, p0, Lplugin/gpgs/Players;->actions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 351
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I
    .locals 5

    .line 360
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x42551231

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x3bfb9a14

    if-eq v0, v1, :cond_1

    const v1, -0x14f01e9a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "loadLocalPlayer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "loadPlayers"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "loadFriends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v3, :cond_4

    return v2

    :cond_4
    const-string p2, "invitable"

    .line 368
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string p2, "source"

    .line 369
    invoke-virtual {p1, v4, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 370
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string p2, "reload"

    .line 371
    invoke-virtual {p1, v4, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 372
    invoke-direct {p0, p1, v4}, Lplugin/gpgs/Players;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    :cond_5
    const-string p2, "playerIDs"

    .line 364
    invoke-virtual {p1, v4, p2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const-string p2, "playerIds"

    .line 365
    invoke-virtual {p1, v4, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 366
    invoke-direct {p0, p1, v4}, Lplugin/gpgs/Players;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    .line 362
    :cond_6
    invoke-direct {p0, p1, v4}, Lplugin/gpgs/Players;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1
.end method
