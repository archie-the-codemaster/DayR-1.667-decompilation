.class Lplugin/gpgs/MultiplayerTurnbased;
.super Ljava/lang/Object;
.source "MultiplayerTurnbased.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/MultiplayerTurnbased$UpdateMatchResultCallback;,
        Lplugin/gpgs/MultiplayerTurnbased$LeaveMatchResultCallback;,
        Lplugin/gpgs/MultiplayerTurnbased$CreateMatchResultCallback;,
        Lplugin/gpgs/MultiplayerTurnbased$CancelMatchResultCallback;,
        Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;,
        Lplugin/gpgs/MultiplayerTurnbased$LoadMatchResultCallback;
    }
.end annotation


# static fields
.field static matches:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 41
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$1;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 47
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$2;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "cancel"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 53
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$3;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "create"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 59
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$4;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "join"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 65
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$5;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "finish"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 71
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$6;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "leave"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 77
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$7;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$7;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "rematch"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 83
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$8;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$8;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "send"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 89
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$9;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$9;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "getMatch"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 95
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$10;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$10;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "showSelectPlayers"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 101
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$11;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$11;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 107
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$12;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$12;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "setListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 113
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$13;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerTurnbased$13;-><init>(Lplugin/gpgs/MultiplayerTurnbased;)V

    const-string v1, "removeListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "turnbased"

    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->load(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->cancel(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->show(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->setListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->removeListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->create(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->join(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->finish(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->leave(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->rematch(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->send(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->getMatch(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->showSelectPlayers(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private cancel(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "multiplayer.turnbased.cancel()"

    .line 159
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 161
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 162
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "matchId"

    .line 164
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "cancel"

    .line 165
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 167
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 168
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 171
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->cancelMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$CancelMatchResultCallback;

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/MultiplayerTurnbased$CancelMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private create(Lcom/naef/jnlua/LuaState;)I
    .locals 11

    const-string v0, "multiplayer.realtime.create()"

    .line 185
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 187
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 188
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "playerId"

    .line 190
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "playerIds"

    .line 191
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "playerIds.#"

    .line 192
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "automatch"

    .line 193
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "automatch.minPlayers"

    .line 194
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "automatch.maxPlayers"

    .line 195
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "automatch.exclusionBits"

    .line 196
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v7, "automatch.variant"

    .line 197
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v8, "listener"

    const-string v9, "create"

    .line 198
    invoke-virtual {v1, v8, v9}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 200
    new-instance v10, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v10, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v10, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 201
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 203
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 204
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 205
    invoke-virtual {p1, v6, v4, v5}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, -0x1

    .line 206
    invoke-virtual {p1, v7, v5}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 207
    invoke-virtual {p1, v8}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 211
    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 212
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->builder()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 220
    invoke-virtual {v0, v6}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->addInvitedPlayers(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 223
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    .line 225
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->setVariant(I)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    .line 226
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->createMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$CreateMatchResultCallback;

    invoke-direct {v1, p0, v9, p1}, Lplugin/gpgs/MultiplayerTurnbased$CreateMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private finish(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    const-string v0, "multiplayer.turnbased.finish()"

    .line 257
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 259
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 260
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "matchId"

    .line 262
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "payload"

    .line 263
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->byteArray(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "results"

    .line 264
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "results.#.participantId"

    .line 265
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "results.#.result"

    .line 266
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "results.#.placing"

    .line 267
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "listener"

    const-string v6, "finish"

    .line 268
    invoke-virtual {v1, v5, v6}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 270
    new-instance v7, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v7, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v7, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 271
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 273
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 274
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 276
    invoke-static {v2}, Lplugin/gpgs/Utils;->participantResultsToArrayList(Ljava/util/Hashtable;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 280
    sget-object v3, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v4, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 284
    :goto_0
    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$UpdateMatchResultCallback;

    invoke-direct {v1, p0, v6, p1}, Lplugin/gpgs/MultiplayerTurnbased$UpdateMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getMatch(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "multiplayer.turnbased.getMatch()"

    .line 404
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 405
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 406
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    sget-object v2, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v1, :cond_0

    .line 410
    new-instance v2, Lplugin/gpgs/MultiplayerMatch;

    invoke-direct {v2, p1, v1}, Lplugin/gpgs/MultiplayerMatch;-><init>(Lcom/naef/jnlua/LuaState;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :cond_1
    :goto_0
    return v0
.end method

.method private join(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "multiplayer.turnbased.join()"

    .line 235
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 237
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 238
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "invitationId"

    .line 240
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "join"

    .line 241
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 243
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 244
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 246
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->acceptInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$CreateMatchResultCallback;

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/MultiplayerTurnbased$CreateMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private leave(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    const-string v0, "multiplayer.turnbased.leave()"

    .line 295
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 297
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 298
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "matchId"

    .line 300
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "pendingParticipantId"

    .line 301
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "isPendingAutomatch"

    .line 302
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "listener"

    const-string v6, "leave"

    .line 303
    invoke-virtual {v1, v5, v6}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 305
    new-instance v7, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v7, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v7, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 306
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 309
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 313
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->leaveMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->leaveMatchDuringTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_1
    sget-object v2, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->leaveMatchDuringTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 321
    :goto_0
    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$LeaveMatchResultCallback;

    invoke-direct {v1, p0, v6, p1}, Lplugin/gpgs/MultiplayerTurnbased$LeaveMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private load(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    const-string v0, "multiplayer.turnbased.load()"

    .line 129
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 131
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 132
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "matchId"

    .line 134
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "filters"

    .line 135
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "filters.#"

    .line 136
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "mostRecentFirst"

    .line 137
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "listener"

    const-string v7, "load"

    .line 138
    invoke-virtual {v1, v6, v7}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 140
    new-instance v8, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v8, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v8, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    .line 144
    invoke-virtual {p1, v6}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 147
    sget-object v0, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->loadMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchResultCallback;

    invoke-direct {v1, p0, v7, p1}, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 149
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v5, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v0, v4

    invoke-static {v3}, Lplugin/gpgs/Utils;->filtersToMatchTurnStatuses(Ljava/util/Hashtable;)[I

    move-result-object v3

    invoke-interface {v1, v5, v0, v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;I[I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;

    invoke-direct {v1, p0, v7, p1}, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_1
    :goto_0
    return v2
.end method

.method private rematch(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "multiplayer.turnbased.rematch()"

    .line 330
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 332
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 333
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "matchId"

    .line 335
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "rematch"

    .line 336
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 338
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 339
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 342
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->rematch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$CreateMatchResultCallback;

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/MultiplayerTurnbased$CreateMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeListener(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "multiplayer.turnbased.removeListener()"

    .line 576
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 577
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 578
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 579
    sget-object p1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->unregisterMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_0
    return v0
.end method

.method private send(Lcom/naef/jnlua/LuaState;)I
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "multiplayer.turnbased.send()"

    .line 355
    invoke-static {v1}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 357
    invoke-static {v0, v1}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 358
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 359
    new-instance v2, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v2}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "matchId"

    .line 360
    invoke-virtual {v2, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v4, "payload"

    .line 361
    invoke-virtual {v2, v4}, Lplugin/gpgs/LuaUtils$Scheme;->byteArray(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v5, "pendingParticipantId"

    .line 362
    invoke-virtual {v2, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v6, "isPendingAutomatch"

    .line 363
    invoke-virtual {v2, v6}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v7, "results"

    .line 364
    invoke-virtual {v2, v7}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v8, "results.#.participantId"

    .line 365
    invoke-virtual {v2, v8}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v8, "results.#.result"

    .line 366
    invoke-virtual {v2, v8}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v8, "results.#.placing"

    .line 367
    invoke-virtual {v2, v8}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v8, "listener"

    const-string v9, "send"

    .line 368
    invoke-virtual {v2, v8, v9}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    .line 370
    new-instance v10, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v10, v0, v1}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v10, v2}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v3}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 372
    invoke-virtual {v0, v4}, Lplugin/gpgs/LuaUtils$Table;->getByteArrayNotNull(Ljava/lang/String;)[B

    move-result-object v13

    .line 373
    invoke-virtual {v0, v5}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 374
    invoke-virtual {v0, v6}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v7}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 376
    invoke-virtual {v0, v8}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 378
    invoke-static {v2}, Lplugin/gpgs/Utils;->participantResultsToArrayList(Ljava/util/Hashtable;)Ljava/util/ArrayList;

    move-result-object v15

    const/4 v2, 0x0

    if-eqz v15, :cond_1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    sget-object v10, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v11, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v14, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz v14, :cond_3

    .line 385
    sget-object v10, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v11, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v3, v12, v13, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v14, :cond_3

    const-string v1, "sent"

    .line 391
    invoke-static {v1}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    .line 392
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v12, v13, v14}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 396
    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$UpdateMatchResultCallback;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v9, v0}, Lplugin/gpgs/MultiplayerTurnbased$UpdateMatchResultCallback;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    :cond_4
    move-object/from16 v3, p0

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private setListener(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "multiplayer.turnbased.setListener()"

    .line 541
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 543
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 544
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "match"

    .line 547
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 551
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v2, Lplugin/gpgs/MultiplayerTurnbased$16;

    invoke-direct {v2, p0, v1}, Lplugin/gpgs/MultiplayerTurnbased$16;-><init>(Lplugin/gpgs/MultiplayerTurnbased;I)V

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->registerMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private show(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "multiplayer.turnbased.show()"

    .line 420
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 422
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 423
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "show"

    .line 426
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 430
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    .line 431
    new-instance v0, Lplugin/gpgs/MultiplayerTurnbased$14;

    invoke-direct {v0, p0, v1}, Lplugin/gpgs/MultiplayerTurnbased$14;-><init>(Lplugin/gpgs/MultiplayerTurnbased;I)V

    .line 455
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private showSelectPlayers(Lcom/naef/jnlua/LuaState;)I
    .locals 10

    const-string v0, "multiplayer.turnbased.showSelectPlayers()"

    .line 468
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 470
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 471
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 472
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "playerId"

    .line 473
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "playerIds"

    .line 474
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "playerIds.#"

    .line 475
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "minPlayers"

    .line 476
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "maxPlayers"

    .line 477
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v7, "allowAutomatch"

    .line 478
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v8, "listener"

    const-string v9, "showSelectPlayers"

    .line 479
    invoke-virtual {v1, v8, v9}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 481
    new-instance v9, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v9, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v9, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 482
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    .line 484
    invoke-virtual {p1, v5, v0}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x8

    .line 485
    invoke-virtual {p1, v6, v4}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 486
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 487
    invoke-virtual {p1, v8}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 490
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 491
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 493
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 496
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_1
    sget-object v1, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v3, v0, v4, v5}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v6, :cond_2

    const-string v1, "players"

    .line 502
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 504
    :cond_2
    new-instance v1, Lplugin/gpgs/MultiplayerTurnbased$15;

    invoke-direct {v1, p0, p1}, Lplugin/gpgs/MultiplayerTurnbased$15;-><init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/Integer;)V

    .line 534
    invoke-static {v0, v1}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    :cond_3
    return v2
.end method
