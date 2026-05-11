.class Lplugin/gpgs/MultiplayerRealtime;
.super Ljava/lang/Object;
.source "MultiplayerRealtime.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;


# static fields
.field static rooms:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actions:[Ljava/lang/String;

.field private isLegacyMessageListener:Z

.field private isLegacyRoomListener:Z

.field private luaMessageListener:I

.field private luaPeerListener:I

.field private luaRoomListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lplugin/gpgs/MultiplayerRealtime;->luaMessageListener:I

    .line 32
    iput v0, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    .line 33
    iput v0, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyMessageListener:Z

    .line 35
    iput-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "createRoom"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "joinRoom"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "leaveRoom"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "setRoomListener"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "sendMessage"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "setMessageReceivedListener"

    aput-object v2, v1, v0

    .line 781
    iput-object v1, p0, Lplugin/gpgs/MultiplayerRealtime;->actions:[Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 40
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$1;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "create"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 46
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$2;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "join"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 52
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$3;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "leave"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 58
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$4;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "sendReliably"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 64
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$5;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "sendUnreliably"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 70
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$6;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "getRoom"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 76
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$7;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$7;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "showSelectPlayers"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 82
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$8;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$8;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 88
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$9;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$9;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "setListeners"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 94
    new-instance v0, Lplugin/gpgs/MultiplayerRealtime$10;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRealtime$10;-><init>(Lplugin/gpgs/MultiplayerRealtime;)V

    const-string v1, "removeListeners"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "realtime"

    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->create(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->join(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->leave(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->sendReliably(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->sendUnreliably(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->getRoom(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/MultiplayerRealtime;->setListeners(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lplugin/gpgs/MultiplayerRealtime;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->removeListeners(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private create(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    const-string v0, "multiplayer.realtime.create()"

    .line 112
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 113
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 114
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "playerId"

    .line 116
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "playerIds"

    .line 117
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "playerIds.#"

    .line 118
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "automatch"

    .line 119
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "automatch.minPlayers"

    .line 120
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "automatch.maxPlayers"

    .line 121
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "automatch.exclusionBits"

    .line 122
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v7, "automatch.variant"

    .line 123
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 125
    new-instance v8, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v8, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v8, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 126
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 128
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 129
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 130
    invoke-virtual {p1, v6, v4, v5}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, -0x1

    .line 131
    invoke-virtual {p1, v7, v5}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 135
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

    .line 136
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 144
    invoke-virtual {v0, v5}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 149
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setVariant(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 150
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 151
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 152
    sget-object p1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getRoom(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "multiplayer.realtime.getRoom()"

    .line 292
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 293
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 294
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    sget-object v2, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v1, :cond_0

    .line 298
    new-instance v2, Lplugin/gpgs/MultiplayerRoom;

    invoke-direct {v2, p1, v1}, Lplugin/gpgs/MultiplayerRoom;-><init>(Lcom/naef/jnlua/LuaState;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :cond_1
    :goto_0
    return v0
.end method

.method private join(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "multiplayer.realtime.join()"

    .line 159
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 160
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 161
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 165
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 166
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 167
    sget-object p1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private leave(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "multiplayer.realtime.leave()"

    .line 174
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 175
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 176
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    .line 178
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeListeners(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "multiplayer.realtime.removeListeners()"

    .line 498
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 499
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 500
    iget v1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaMessageListener:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 501
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 502
    iput v2, p0, Lplugin/gpgs/MultiplayerRealtime;->luaMessageListener:I

    .line 504
    :cond_0
    iget v1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    if-eq v1, v2, :cond_1

    .line 505
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 506
    iput v2, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    .line 508
    :cond_1
    iget v1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    if-eq v1, v2, :cond_2

    .line 509
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 510
    iput v2, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    :cond_2
    return v0
.end method

.method private sendReliably(Lcom/naef/jnlua/LuaState;)I
    .locals 13

    const-string v0, "multiplayer.realtime.sendReliably()"

    .line 190
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 192
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 193
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "roomId"

    .line 195
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "participantId"

    .line 196
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "participantIds"

    .line 197
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "participantIds.#"

    .line 198
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "payload"

    .line 199
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->byteArray(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "listener"

    const-string v7, "sendReliably"

    .line 200
    invoke-virtual {v1, v6, v7}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 202
    new-instance v7, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v7, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v7, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 206
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Table;->getByteArrayNotNull(Ljava/lang/String;)[B

    move-result-object v5

    .line 207
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 211
    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 212
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    const/4 v4, -0x1

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v1, :cond_2

    const/16 v6, -0x2710

    .line 221
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    .line 222
    invoke-static {p1, v4}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 223
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 226
    :cond_2
    sget-object v7, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v8, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v9, Lplugin/gpgs/MultiplayerRealtime$11;

    invoke-direct {v9, p0, v6}, Lplugin/gpgs/MultiplayerRealtime$11;-><init>(Lplugin/gpgs/MultiplayerRealtime;Ljava/lang/Integer;)V

    move-object v10, v5

    move-object v11, v2

    invoke-interface/range {v7 .. v12}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 242
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private sendUnreliably(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "multiplayer.realtime.sendUnreliably()"

    .line 254
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 255
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 256
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "roomId"

    .line 258
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "participantId"

    .line 259
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "participantIds"

    .line 260
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "participantIds.#"

    .line 261
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "payload"

    .line 262
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->byteArray(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 264
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 268
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getByteArrayNotNull(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 274
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 277
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_2

    .line 282
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, p1, v0, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/util/List;)I

    goto :goto_1

    .line 284
    :cond_2
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendUnreliableMessageToOthers(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)I

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private setListeners(Lcom/naef/jnlua/LuaState;Z)I
    .locals 6

    const-string v0, "multiplayer.realtime.setListeners()"

    .line 469
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 470
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 471
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "message"

    .line 473
    invoke-virtual {v1, v2, v2}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "peer"

    .line 474
    invoke-virtual {v1, v3, v3}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "room"

    .line 475
    invoke-virtual {v1, v4, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 477
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lplugin/gpgs/MultiplayerRealtime;->luaMessageListener:I

    .line 481
    iput-boolean p2, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyMessageListener:Z

    .line 483
    :cond_0
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    .line 487
    :cond_1
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 489
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    .line 490
    iput-boolean p2, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method hasAction(Ljava/lang/String;)Z
    .locals 5

    .line 784
    iget-object v0, p0, Lplugin/gpgs/MultiplayerRealtime;->actions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 785
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

.method public onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    const-string v0, "peer"

    .line 632
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "connected to room"

    .line 633
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 634
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    const-string v0, "peer"

    .line 641
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "disconnected from room"

    .line 642
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 643
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 6

    .line 536
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isError"

    if-nez v0, :cond_2

    const-string v0, "room"

    .line 537
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v4, "phase"

    const-string v5, "joined"

    .line 538
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 540
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-static {p1}, Lplugin/gpgs/Utils;->statusCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorMessage"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 545
    :cond_1
    sget-object p1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "roomId"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :goto_1
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_3

    :cond_2
    const-string v0, "joinRoom"

    .line 550
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 551
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 552
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "roomID"

    invoke-virtual {v4, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 554
    invoke-virtual {v0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_3
    return-void
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 6

    .line 560
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isError"

    if-nez v0, :cond_2

    const-string v0, "room"

    .line 561
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v4, "phase"

    const-string v5, "left"

    .line 562
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 564
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 566
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {p1}, Lplugin/gpgs/Utils;->statusCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorMessage"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 569
    :cond_1
    sget-object p1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "roomId"

    .line 570
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :goto_1
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_3

    :cond_2
    const-string v0, "leaveRoom"

    .line 574
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 575
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 576
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "roomID"

    .line 577
    invoke-virtual {v4, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 578
    invoke-virtual {v0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_3
    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 3

    const-string v0, "peer"

    .line 650
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "P2P connected"

    .line 651
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 652
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "participantId"

    .line 653
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 3

    const-string v0, "peer"

    .line 658
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "P2P disconnected"

    .line 659
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 660
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "participantId"

    .line 661
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 666
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    if-nez v0, :cond_0

    const-string v0, "peer"

    .line 667
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v3, "phase"

    const-string v4, "peer declined"

    .line 668
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "participantIds"

    .line 672
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    const-string v0, "peerDeclinedInvitation"

    .line 675
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 676
    invoke-static {p2}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p2

    .line 677
    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomID"

    invoke-virtual {p2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 679
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "peer"

    .line 685
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "peer invited to room"

    .line 686
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 687
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "participantIds"

    .line 690
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onPeerJoined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 695
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    if-nez v0, :cond_0

    const-string v0, "peer"

    .line 696
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v3, "phase"

    const-string v4, "peer joined"

    .line 697
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "participantIds"

    .line 701
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    const-string v0, "peerAcceptedInvitation"

    .line 704
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 705
    invoke-static {p2}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p2

    .line 706
    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomID"

    invoke-virtual {p2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 708
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 714
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    if-nez v0, :cond_0

    const-string v0, "peer"

    .line 715
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v3, "phase"

    const-string v4, "peer left"

    .line 716
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "participantIds"

    .line 720
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    const-string v0, "peerLeftRoom"

    .line 723
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 724
    invoke-static {p2}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p2

    .line 725
    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomID"

    invoke-virtual {p2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 727
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "peer"

    .line 733
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "peers connected"

    .line 734
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 735
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "participantIds"

    .line 738
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onPeersDisconnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 743
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    if-nez v0, :cond_0

    const-string v0, "peer"

    .line 744
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v3, "phase"

    const-string v4, "peers disconnected"

    .line 745
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "participantIds"

    .line 749
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    const-string v0, "peerDisconnectedFromRoom"

    .line 752
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 753
    invoke-static {p2}, Lplugin/gpgs/Utils;->listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p2

    .line 754
    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomID"

    invoke-virtual {p2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 756
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 5

    .line 519
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyMessageListener:Z

    const-string v1, "participantId"

    const-string v2, "message"

    if-nez v0, :cond_0

    .line 520
    invoke-static {v2}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const/4 v2, 0x0

    .line 521
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isError"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getMessageData()[B

    move-result-object v2

    const-string v3, "payload"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getSenderParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->isReliable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isReliable"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "setMessageReceivedListener"

    .line 526
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 527
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 528
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getMessageData()[B

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getSenderParticipantId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 530
    invoke-virtual {v0, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :goto_0
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaMessageListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    const-string v0, "peer"

    .line 762
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "room automatching"

    .line 763
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 764
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 6

    .line 584
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isError"

    if-nez v0, :cond_2

    const-string v0, "room"

    .line 585
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v4, "phase"

    const-string v5, "connected"

    .line 586
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 588
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 590
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-static {p1}, Lplugin/gpgs/Utils;->statusCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorMessage"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 593
    :cond_1
    sget-object p1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "roomId"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :goto_1
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_3

    :cond_2
    const-string v0, "connectedRoom"

    .line 598
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 599
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 600
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "roomID"

    invoke-virtual {v4, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 602
    invoke-virtual {v0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_3
    return-void
.end method

.method public onRoomConnecting(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    const-string v0, "peer"

    .line 771
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "room connecting"

    .line 772
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 773
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaPeerListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 6

    .line 608
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerRealtime;->isLegacyRoomListener:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isError"

    if-nez v0, :cond_2

    const-string v0, "room"

    .line 609
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v4, "phase"

    const-string v5, "created"

    .line 610
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 612
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 614
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {p1}, Lplugin/gpgs/Utils;->statusCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorMessage"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 617
    :cond_1
    sget-object p1, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "roomId"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :goto_1
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    goto :goto_3

    :cond_2
    const-string v0, "createRoom"

    .line 622
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 623
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 624
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "roomID"

    invoke-virtual {v4, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 626
    invoke-virtual {v0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget p1, p0, Lplugin/gpgs/MultiplayerRealtime;->luaRoomListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :goto_3
    return-void
.end method

.method request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I
    .locals 12

    .line 794
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "leaveRoom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "createRoom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "sendMessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "setRoomListener"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "setMessageReceivedListener"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "joinRoom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const-string v0, "playerIDs"

    const-string v8, "room"

    const-string v9, "listener"

    const/4 v10, -0x2

    if-eqz p2, :cond_7

    const-string v11, "roomID"

    if-eq p2, v7, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v3, :cond_4

    const-string v3, "message"

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    return v5

    .line 923
    :cond_1
    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 924
    invoke-virtual {p1, v7, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 925
    invoke-direct {p0, p1, v7}, Lplugin/gpgs/MultiplayerRealtime;->setListeners(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    .line 882
    :cond_2
    invoke-virtual {p1, v7, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 883
    invoke-static {p1, v6}, Lcom/ansca/corona/CoronaLua;->toHashtable(Lcom/naef/jnlua/LuaState;I)Ljava/util/Hashtable;

    move-result-object p2

    .line 884
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 886
    invoke-virtual {p1, v7, v11}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 887
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 890
    invoke-virtual {p1, v7, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 891
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v3, "reliable"

    .line 894
    invoke-virtual {p1, v7, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 895
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 896
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 898
    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 899
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 902
    invoke-virtual {p1, v5, v2}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 904
    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaLua;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    const-string p2, "participantIds"

    .line 905
    invoke-virtual {p1, v10, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 907
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 908
    invoke-virtual {p1, v10, v9}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 909
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 911
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string p2, "roomId"

    .line 912
    invoke-virtual {p1, v10, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 914
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string p2, "payload"

    .line 915
    invoke-virtual {p1, v10, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 917
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 918
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->sendReliably(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    .line 920
    :cond_3
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->sendUnreliably(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    .line 877
    :cond_4
    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 878
    invoke-virtual {p1, v7, v8}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 879
    invoke-direct {p0, p1, v7}, Lplugin/gpgs/MultiplayerRealtime;->setListeners(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    .line 859
    :cond_5
    invoke-virtual {p1, v7, v11}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 860
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 861
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 863
    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 864
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 867
    invoke-virtual {p1, v5, v7}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 868
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 869
    invoke-virtual {p1, v10, v8}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 870
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 871
    invoke-direct {p0, p1, v7}, Lplugin/gpgs/MultiplayerRealtime;->setListeners(Lcom/naef/jnlua/LuaState;Z)I

    .line 874
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 875
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->leave(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    .line 839
    :cond_6
    invoke-virtual {p1, v7, v11}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 840
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 841
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 843
    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 844
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 847
    invoke-virtual {p1, v5, v7}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 848
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 849
    invoke-virtual {p1, v10, v8}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 850
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 851
    invoke-direct {p0, p1, v7}, Lplugin/gpgs/MultiplayerRealtime;->setListeners(Lcom/naef/jnlua/LuaState;Z)I

    .line 852
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 855
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->join(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    .line 797
    :cond_7
    invoke-virtual {p1, v7, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 798
    invoke-static {p1, v6}, Lcom/ansca/corona/CoronaLua;->toHashtable(Lcom/naef/jnlua/LuaState;I)Ljava/util/Hashtable;

    move-result-object p2

    .line 799
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v0, "minAutoMatchPlayers"

    .line 801
    invoke-virtual {p1, v7, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 802
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 803
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v1, "maxAutoMatchPlayers"

    .line 805
    invoke-virtual {p1, v7, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 806
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 807
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 809
    invoke-virtual {p1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 810
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 813
    invoke-virtual {p1, v5, v7}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 814
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 815
    invoke-virtual {p1, v10, v8}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 816
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 817
    invoke-direct {p0, p1, v7}, Lplugin/gpgs/MultiplayerRealtime;->setListeners(Lcom/naef/jnlua/LuaState;Z)I

    .line 820
    invoke-virtual {p1, v5, v3}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 822
    invoke-virtual {p1, v5, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 824
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string v0, "minPlayers"

    .line 825
    invoke-virtual {p1, v10, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 827
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string v0, "maxPlayers"

    .line 828
    invoke-virtual {p1, v10, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const/4 v0, -0x3

    const-string v1, "automatch"

    .line 830
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 832
    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaLua;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    const-string p2, "playerIds"

    .line 833
    invoke-virtual {p1, v10, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 835
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 836
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRealtime;->create(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x538dd2db -> :sswitch_5
        -0x526bbae6 -> :sswitch_4
        -0xb6cd3cf -> :sswitch_3
        0x2936bf5f -> :sswitch_2
        0x519bb7f7 -> :sswitch_1
        0x63041032 -> :sswitch_0
    .end sparse-switch
.end method

.method show(Lcom/naef/jnlua/LuaState;Z)I
    .locals 7

    const-string v0, "multiplayer.realtime.show()"

    .line 411
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 413
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 414
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "roomId"

    .line 416
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "minPlayersRequired"

    .line 417
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "show"

    const-string v5, "listener"

    .line 418
    invoke-virtual {v1, v5, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 420
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 421
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    .line 422
    invoke-virtual {p1, v3, v1}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 423
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 425
    sget-object v2, Lplugin/gpgs/MultiplayerRealtime;->rooms:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_1

    .line 427
    sget-object v2, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getWaitingRoomIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    if-nez p2, :cond_0

    .line 429
    invoke-static {v0, v4, p1}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 431
    :cond_0
    new-instance p2, Lplugin/gpgs/MultiplayerRealtime$13;

    invoke-direct {p2, p0, p1}, Lplugin/gpgs/MultiplayerRealtime$13;-><init>(Lplugin/gpgs/MultiplayerRealtime;Ljava/lang/Integer;)V

    .line 457
    invoke-static {v0, p2}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method showSelectPlayers(Lcom/naef/jnlua/LuaState;Z)I
    .locals 10

    const-string v0, "multiplayer.realtime.showSelectPlayers()"

    .line 314
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 316
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 317
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 318
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "playerId"

    .line 319
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "playerIds"

    .line 320
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "playerIds.#"

    .line 321
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "minPlayers"

    .line 322
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "maxPlayers"

    .line 323
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v7, "allowAutomatch"

    .line 324
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v8, "listener"

    const-string v9, "showSelectPlayers"

    .line 325
    invoke-virtual {v1, v8, v9}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 327
    new-instance v9, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v9, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v9, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 328
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    .line 330
    invoke-virtual {p1, v5, v0}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x8

    .line 331
    invoke-virtual {p1, v6, v4}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 332
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 333
    invoke-virtual {p1, v8}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 336
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 337
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 338
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

    .line 339
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 342
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_1
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v3, v0, v4, v5}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v6, :cond_2

    const-string v1, "players"

    .line 348
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    :cond_2
    new-instance v1, Lplugin/gpgs/MultiplayerRealtime$12;

    invoke-direct {v1, p0, p2, p1}, Lplugin/gpgs/MultiplayerRealtime$12;-><init>(Lplugin/gpgs/MultiplayerRealtime;ZLjava/lang/Integer;)V

    .line 401
    invoke-static {v0, v1}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    :cond_3
    return v2
.end method
