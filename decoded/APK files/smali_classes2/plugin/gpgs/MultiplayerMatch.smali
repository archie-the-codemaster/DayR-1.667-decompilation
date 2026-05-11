.class Lplugin/gpgs/MultiplayerMatch;
.super Ljava/lang/Object;
.source "MultiplayerMatch.java"


# instance fields
.field private match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 16
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 17
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$1;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "canRematch"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 23
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$2;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getAvailableAutoMatchSlots"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 29
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$3;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getPayload"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 35
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$4;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getMainOpponentParticipantId"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 41
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$5;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getLastUpdatedTimestamp"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 47
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$6;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getLastUpdaterParticipantId"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 53
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$7;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$7;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getParticipant"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 59
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$8;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$8;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getParticipantId"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 65
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$9;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$9;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getParticipantIds"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 71
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$10;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$10;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getParticipantStatus"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 77
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$11;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$11;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getPendingParticipantId"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 83
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$12;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$12;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getPreviousPayload"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 89
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$13;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$13;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getRematchId"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 95
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$14;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$14;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getStatus"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 101
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$15;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$15;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getTurnStatus"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 107
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$16;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$16;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "getVersion"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 113
    new-instance v0, Lplugin/gpgs/MultiplayerMatch$17;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerMatch$17;-><init>(Lplugin/gpgs/MultiplayerMatch;)V

    const-string v1, "isLocallyModified"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 120
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    const-string v1, "timestamp"

    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 123
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "creatorId"

    .line 124
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 126
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "description"

    .line 127
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 129
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "id"

    .line 130
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchNumber()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string v1, "matchNumber"

    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 135
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 136
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string p2, "variant"

    .line 137
    invoke-virtual {p1, v0, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->canRematch(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getAvailableAutoMatchSlots(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getPendingParticipantId(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getPreviousPayload(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getRematchId(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getStatus(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getTurnStatus(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getVersion(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->isLocallyModified(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getPayload(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getMainOpponentParticipantId(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getLastUpdatedTimestamp(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getLastUpdaterParticipantId(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getParticipant(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getParticipantId(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getParticipantIds(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerMatch;->getParticipantStatus(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private canRematch(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.canRematch()"

    .line 144
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 145
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 146
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->canRematch()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getAvailableAutoMatchSlots(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getAvailableAutoMatchSlots()"

    .line 155
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 157
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAvailableAutoMatchSlots()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getLastUpdatedTimestamp(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getLastUpdatedTimestamp()"

    .line 196
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 197
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 198
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdatedTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getLastUpdaterParticipantId(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getLastUpdaterParticipantId()"

    .line 207
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 208
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 209
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdaterId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getMainOpponentParticipantId(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getMainOpponentParticipantId()"

    .line 180
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 182
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescriptionParticipantId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private getParticipant(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "match.getParticipant()"

    .line 221
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 222
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 223
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v2, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

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
    .locals 2

    const-string v0, "match.getParticipantId()"

    .line 233
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 234
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 235
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object v1, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipantId(Ljava/lang/String;)Ljava/lang/String;

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getParticipantIds(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "match.getParticipantIds()"

    .line 245
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 246
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 247
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 250
    iget-object v1, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipantIds()Ljava/util/ArrayList;

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

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v5

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    return v2

    :cond_1
    return v0
.end method

.method private getParticipantStatus(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "match.getParticipantStatus()"

    .line 261
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 262
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 263
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 264
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v2, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipantStatus(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "left"

    goto :goto_0

    :cond_1
    const-string v1, "declined"

    goto :goto_0

    :cond_2
    const-string v1, "joined"

    goto :goto_0

    :cond_3
    const-string v1, "invited"

    goto :goto_0

    :cond_4
    const-string v1, "not invited yet"

    .line 283
    :goto_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private getPayload(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getPayload()"

    .line 166
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 167
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 168
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString([B)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getPendingParticipantId(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getPendingParticipantId()"

    .line 291
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 292
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 293
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPendingParticipantId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private getPreviousPayload(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getPreviousPayload()"

    .line 307
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 308
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 309
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPreviousMatchData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString([B)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getRematchId(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getRematchId()"

    .line 321
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 322
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 323
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getRematchId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private getStatus(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "match.getStatus()"

    .line 337
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 338
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 339
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "canceled"

    goto :goto_0

    :cond_1
    const-string v0, "expired"

    goto :goto_0

    :cond_2
    const-string v0, "completed"

    goto :goto_0

    :cond_3
    const-string v0, "active"

    goto :goto_0

    :cond_4
    const-string v0, "automatching"

    .line 358
    :goto_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    return v1

    :cond_5
    return v0
.end method

.method private getTurnStatus(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "match.getTurnStatus()"

    .line 366
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 367
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 368
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getTurnStatus()I

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
    const-string v0, "completed"

    goto :goto_0

    :cond_1
    const-string v0, "their turn"

    goto :goto_0

    :cond_2
    const-string v0, "my turn"

    goto :goto_0

    :cond_3
    const-string v0, "invited"

    .line 384
    :goto_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    return v1

    :cond_4
    return v0
.end method

.method private getVersion(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.getVersion()"

    .line 392
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 393
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 394
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private isLocallyModified(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "match.isLocallyModified()"

    .line 403
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 404
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 405
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->isLocallyModified()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
