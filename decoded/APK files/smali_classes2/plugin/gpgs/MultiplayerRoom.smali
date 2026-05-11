.class Lplugin/gpgs/MultiplayerRoom;
.super Ljava/lang/Object;
.source "MultiplayerRoom.java"


# instance fields
.field private room:Lcom/google/android/gms/games/multiplayer/realtime/Room;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lplugin/gpgs/MultiplayerRoom;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 16
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 17
    new-instance v0, Lplugin/gpgs/MultiplayerRoom$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRoom$1;-><init>(Lplugin/gpgs/MultiplayerRoom;)V

    const-string v1, "getAutoMatchWaitEstimateSeconds"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 23
    new-instance v0, Lplugin/gpgs/MultiplayerRoom$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRoom$2;-><init>(Lplugin/gpgs/MultiplayerRoom;)V

    const-string v1, "getStatus"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 29
    new-instance v0, Lplugin/gpgs/MultiplayerRoom$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRoom$3;-><init>(Lplugin/gpgs/MultiplayerRoom;)V

    const-string v1, "getParticipant"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 35
    new-instance v0, Lplugin/gpgs/MultiplayerRoom$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRoom$4;-><init>(Lplugin/gpgs/MultiplayerRoom;)V

    const-string v1, "getParticipantId"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 41
    new-instance v0, Lplugin/gpgs/MultiplayerRoom$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRoom$5;-><init>(Lplugin/gpgs/MultiplayerRoom;)V

    const-string v1, "getParticipantIds"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 47
    new-instance v0, Lplugin/gpgs/MultiplayerRoom$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerRoom$6;-><init>(Lplugin/gpgs/MultiplayerRoom;)V

    const-string v1, "getParticipantStatus"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 54
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    const-string v1, "timestamp"

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 57
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "creatorId"

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 60
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "description"

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 65
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "id"

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 68
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string p2, "variant"

    .line 70
    invoke-virtual {p1, v0, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/MultiplayerRoom;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRoom;->getAutomatchWaitEstimateSeconds(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/MultiplayerRoom;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRoom;->getStatus(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/MultiplayerRoom;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRoom;->getParticipant(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/MultiplayerRoom;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRoom;->getParticipantId(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/MultiplayerRoom;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRoom;->getParticipantIds(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/MultiplayerRoom;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerRoom;->getParticipantStatus(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private getAutomatchWaitEstimateSeconds(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "room.getAutomatchWaitEstimateSeconds()"

    .line 77
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 79
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lplugin/gpgs/MultiplayerRoom;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getParticipant(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "room.getParticipant()"

    .line 114
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 115
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 116
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lplugin/gpgs/MultiplayerRoom;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v2, v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->participantToHashtable(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {p1, v1}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getParticipantId(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "room.getParticipantId()"

    .line 126
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 127
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 128
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lplugin/gpgs/MultiplayerRoom;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v2, v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getParticipantIds(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "room.getParticipantIds()"

    .line 138
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 139
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 140
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 143
    iget-object v1, p0, Lplugin/gpgs/MultiplayerRoom;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v5

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    return v2

    :cond_1
    return v0
.end method

.method private getParticipantStatus(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "room.getParticipantStatus()"

    .line 154
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 155
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 156
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lplugin/gpgs/MultiplayerRoom;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3, v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantStatus(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "left"

    goto :goto_0

    :cond_1
    const-string v2, "declined"

    goto :goto_0

    :cond_2
    const-string v2, "joined"

    goto :goto_0

    :cond_3
    const-string v2, "invited"

    .line 173
    :goto_0
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getStatus(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "room.getStatus()"

    .line 88
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 90
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    iget-object v0, p0, Lplugin/gpgs/MultiplayerRoom;->room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "active"

    goto :goto_0

    :cond_1
    const-string v0, "connecting"

    goto :goto_0

    :cond_2
    const-string v0, "automatching"

    goto :goto_0

    :cond_3
    const-string v0, "inviting"

    .line 106
    :goto_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    return v1

    :cond_4
    return v0
.end method
