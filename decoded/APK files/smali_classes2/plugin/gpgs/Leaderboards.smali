.class Lplugin/gpgs/Leaderboards;
.super Ljava/lang/Object;
.source "Leaderboards.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Leaderboards$LegacySubmitScoreResultCallback;,
        Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;,
        Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;,
        Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;,
        Lplugin/gpgs/Leaderboards$LoadScoresResultCallback;,
        Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;,
        Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;
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

    const-string v2, "setHighScore"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "loadLeaderboardCategories"

    aput-object v2, v0, v1

    const-string v1, "loadScores"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 378
    iput-object v0, p0, Lplugin/gpgs/Leaderboards;->actions:[Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 34
    new-instance v0, Lplugin/gpgs/Leaderboards$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Leaderboards$1;-><init>(Lplugin/gpgs/Leaderboards;)V

    const-string v2, "load"

    invoke-static {p1, v2, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 40
    new-instance v0, Lplugin/gpgs/Leaderboards$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Leaderboards$2;-><init>(Lplugin/gpgs/Leaderboards;)V

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 46
    new-instance v0, Lplugin/gpgs/Leaderboards$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/Leaderboards$3;-><init>(Lplugin/gpgs/Leaderboards;)V

    const-string v1, "submit"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 52
    new-instance v0, Lplugin/gpgs/Leaderboards$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/Leaderboards$4;-><init>(Lplugin/gpgs/Leaderboards;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "leaderboards"

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/Leaderboards;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/Leaderboards;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Leaderboards;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/Leaderboards;->loadScores(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/Leaderboards;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/Leaderboards;->submit(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method private load(Lcom/naef/jnlua/LuaState;Z)I
    .locals 8

    const-string v0, "leaderboards.load()"

    .line 67
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 69
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 70
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "leaderboardId"

    .line 72
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "reload"

    .line 73
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "listener"

    const-string v6, "load"

    .line 74
    invoke-virtual {v1, v5, v6}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 76
    new-instance v7, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v7, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v7, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 77
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 79
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 82
    sget-object v3, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v4, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v4, v0, v1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 88
    new-instance p2, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;

    invoke-direct {p2, p0, v6, p1}, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;-><init>(Lplugin/gpgs/Leaderboards;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    .line 90
    :cond_1
    new-instance p2, Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;

    invoke-direct {p2, p0, p1}, Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;-><init>(Lplugin/gpgs/Leaderboards;Ljava/lang/Integer;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_2
    :goto_1
    return v2
.end method

.method private loadScores(Lcom/naef/jnlua/LuaState;Z)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "leaderboards.loadScores()"

    .line 106
    invoke-static {v2}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 108
    invoke-static {v1, v2}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 109
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v3, :cond_8

    .line 110
    new-instance v3, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v3}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v6, "leaderboardId"

    .line 111
    invoke-virtual {v3, v6}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v7, "position"

    .line 112
    invoke-virtual {v3, v7}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v8, "timeSpan"

    .line 113
    invoke-virtual {v3, v8}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v9, "friendsOnly"

    .line 114
    invoke-virtual {v3, v9}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v10, "limit"

    .line 115
    invoke-virtual {v3, v10}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v11, "reload"

    .line 116
    invoke-virtual {v3, v11}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v12, "listener"

    const-string v13, "loadScores"

    .line 117
    invoke-virtual {v3, v12, v13}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    .line 119
    new-instance v14, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v14, v1, v2}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v14, v3}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "top"

    .line 121
    invoke-virtual {v1, v7, v6}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "all time"

    .line 122
    invoke-virtual {v1, v8, v14}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v1, v9, v5}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    const-wide/16 v14, 0x19

    .line 124
    invoke-virtual {v1, v10, v14, v15}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    const/16 v14, 0x19

    invoke-static {v10, v2, v14}, Lplugin/gpgs/Utils;->clamp(III)I

    move-result v19

    .line 125
    invoke-virtual {v1, v11, v5}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    .line 126
    invoke-virtual {v1, v12}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 128
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v14, -0x35c77bb8    # -3023122.0f

    const/4 v15, 0x2

    if-eq v12, v14, :cond_2

    const v14, -0x32cee84c    # -1.8569504E8f

    if-eq v12, v14, :cond_1

    const v14, 0x1c155

    if-eq v12, v14, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v11, 0x2

    goto :goto_0

    :cond_1
    const-string v6, "centered"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "single"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v11, 0x0

    :cond_3
    :goto_0
    if-eqz v11, :cond_6

    if-eq v11, v2, :cond_5

    if-eq v11, v15, :cond_4

    goto :goto_1

    .line 136
    :cond_4
    sget-object v14, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v15, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v8}, Lplugin/gpgs/Utils;->getTimeSpan(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lplugin/gpgs/Utils;->getCollection(Z)I

    move-result v18

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move-object/from16 v16, v3

    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v10

    goto :goto_1

    .line 133
    :cond_5
    sget-object v14, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v15, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v8}, Lplugin/gpgs/Utils;->getTimeSpan(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lplugin/gpgs/Utils;->getCollection(Z)I

    move-result v18

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move-object/from16 v16, v3

    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v10

    goto :goto_1

    .line 130
    :cond_6
    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v5, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v8}, Lplugin/gpgs/Utils;->getTimeSpan(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Lplugin/gpgs/Utils;->getCollection(Z)I

    move-result v7

    invoke-interface {v2, v5, v3, v6, v7}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    new-instance v3, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;

    invoke-direct {v3, v0, v13, v1}, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;-><init>(Lplugin/gpgs/Leaderboards;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :goto_1
    if-eqz v10, :cond_8

    if-eqz v1, :cond_8

    if-nez p2, :cond_7

    .line 141
    new-instance v2, Lplugin/gpgs/Leaderboards$LoadScoresResultCallback;

    invoke-direct {v2, v0, v13, v1}, Lplugin/gpgs/Leaderboards$LoadScoresResultCallback;-><init>(Lplugin/gpgs/Leaderboards;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v10, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_2

    .line 143
    :cond_7
    new-instance v2, Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;

    invoke-direct {v2, v0, v1}, Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;-><init>(Lplugin/gpgs/Leaderboards;Ljava/lang/Integer;)V

    invoke-virtual {v10, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_8
    :goto_2
    return v4
.end method

.method private submit(Lcom/naef/jnlua/LuaState;Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "leaderboards.submit()"

    .line 156
    invoke-static {v2}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 158
    invoke-static {v1, v2}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 159
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 160
    new-instance v3, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v3}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v5, "leaderboardId"

    .line 161
    invoke-virtual {v3, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v6, "score"

    .line 162
    invoke-virtual {v3, v6}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v7, "tag"

    .line 163
    invoke-virtual {v3, v7}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    const-string v8, "listener"

    const-string v9, "submit"

    .line 164
    invoke-virtual {v3, v8, v9}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v3

    .line 166
    new-instance v10, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v10, v1, v2}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v10, v3}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Table;->getLongNotNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v8}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v3, :cond_0

    const-string v5, "[^A-Za-z0-9_\\.\\-]"

    const-string v6, ""

    .line 173
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x40

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v15, v3

    if-eqz v1, :cond_3

    if-eqz v15, :cond_1

    .line 179
    sget-object v10, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v11, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    goto :goto_0

    .line 181
    :cond_1
    sget-object v3, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v5, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v5, v12, v6, v7}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    :goto_0
    if-nez p2, :cond_2

    .line 184
    new-instance v3, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;

    invoke-direct {v3, v0, v9, v1}, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;-><init>(Lplugin/gpgs/Leaderboards;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    .line 186
    :cond_2
    new-instance v3, Lplugin/gpgs/Leaderboards$LegacySubmitScoreResultCallback;

    invoke-direct {v3, v0, v1}, Lplugin/gpgs/Leaderboards$LegacySubmitScoreResultCallback;-><init>(Lplugin/gpgs/Leaderboards;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    :cond_3
    if-eqz v15, :cond_4

    .line 190
    sget-object v10, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v11, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_4
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v1, v3, v12, v5, v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    :cond_5
    :goto_1
    return v4
.end method


# virtual methods
.method hasAction(Ljava/lang/String;)Z
    .locals 5

    .line 381
    iget-object v0, p0, Lplugin/gpgs/Leaderboards;->actions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 382
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
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 391
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x21ca37cd

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v3, v4, :cond_2

    const v4, -0xdcd7f59

    if-eq v3, v4, :cond_1

    const v4, 0x31c3d7ce

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "setHighScore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "loadScores"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "loadLeaderboardCategories"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "leaderboardId"

    const/4 v4, 0x3

    const-string v9, "category"

    const-string v10, "listener"

    const/4 v11, -0x2

    if-eqz v2, :cond_d

    const-string v12, "reload"

    if-eq v2, v8, :cond_c

    if-eq v2, v5, :cond_4

    return v6

    :cond_4
    const-string v2, "leaderboard"

    .line 429
    invoke-virtual {v1, v8, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 431
    invoke-virtual {v1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 432
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v9, "playerScope"

    .line 435
    invoke-virtual {v1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 436
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 437
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v13, "timeScope"

    .line 439
    invoke-virtual {v1, v7, v13}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 440
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 441
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v14, "range"

    .line 443
    invoke-virtual {v1, v7, v14}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 445
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v15

    sget-object v14, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v15, v14, :cond_6

    .line 446
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    .line 447
    invoke-virtual {v1, v11}, Lcom/naef/jnlua/LuaState;->next(I)Z

    .line 448
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v14

    sget-object v15, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v14, v15, :cond_5

    .line 449
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v14

    goto :goto_2

    :cond_5
    const/16 v14, 0x19

    .line 451
    :goto_2
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_3

    :cond_6
    const/16 v14, 0x19

    .line 453
    :goto_3
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v5, "playerCentered"

    .line 455
    invoke-virtual {v1, v7, v5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 457
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v5

    sget-object v15, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v5, v15, :cond_7

    .line 458
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 460
    :goto_4
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 462
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 464
    invoke-virtual {v1, v8, v10}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 465
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 468
    invoke-virtual {v1, v6, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 470
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1, v11, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    if-eqz v5, :cond_8

    const-string v2, "centered"

    goto :goto_5

    :cond_8
    const-string v2, "top"

    .line 474
    :goto_5
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "position"

    .line 475
    invoke-virtual {v1, v11, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    if-eqz v13, :cond_a

    const-string v2, "Week"

    .line 479
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "weekly"

    goto :goto_6

    :cond_9
    const-string v2, "Today"

    .line 481
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "daily"

    goto :goto_6

    :cond_a
    const-string v2, "all time"

    .line 485
    :goto_6
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v2, "timeSpan"

    .line 486
    invoke-virtual {v1, v11, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    if-eqz v9, :cond_b

    const-string v2, "FriendsOnly"

    .line 488
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 489
    :cond_b
    invoke-virtual {v1, v6}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v2, "friendsOnly"

    .line 490
    invoke-virtual {v1, v11, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 492
    invoke-virtual {v1, v14}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string v2, "limit"

    .line 493
    invoke-virtual {v1, v11, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 495
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 496
    invoke-virtual {v1, v11, v12}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 498
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 499
    invoke-virtual {v1, v11, v10}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 501
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 502
    invoke-direct {v0, v1, v8}, Lplugin/gpgs/Leaderboards;->loadScores(Lcom/naef/jnlua/LuaState;Z)I

    move-result v1

    return v1

    .line 424
    :cond_c
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 425
    invoke-virtual {v1, v8, v12}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 426
    invoke-direct {v0, v1, v8}, Lplugin/gpgs/Leaderboards;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result v1

    return v1

    :cond_d
    const-string v2, "localPlayerScore"

    .line 394
    invoke-virtual {v1, v8, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 396
    invoke-virtual {v1, v7, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 397
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v5, "value"

    .line 400
    invoke-virtual {v1, v7, v5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 401
    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 402
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 404
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 406
    invoke-virtual {v1, v8, v10}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 407
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 410
    invoke-virtual {v1, v6, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 412
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1, v11, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 415
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string v2, "score"

    .line 416
    invoke-virtual {v1, v11, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 418
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 419
    invoke-virtual {v1, v11, v10}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 421
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 422
    invoke-direct {v0, v1, v8}, Lplugin/gpgs/Leaderboards;->submit(Lcom/naef/jnlua/LuaState;Z)I

    move-result v1

    return v1
.end method

.method show(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    const-string v0, "leaderboards.show()"

    .line 204
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;II)V

    .line 207
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v3

    const-string v4, "show"

    if-eqz v3, :cond_0

    .line 211
    new-instance v2, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v2}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "leaderboardId"

    .line 212
    invoke-virtual {v2, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v5, "timeSpan"

    .line 213
    invoke-virtual {v2, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v6, "friendsOnly"

    .line 214
    invoke-virtual {v2, v6}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v7, "listener"

    .line 215
    invoke-virtual {v2, v7, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    .line 217
    new-instance v8, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v8, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v8, v2}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 218
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "all time"

    .line 219
    invoke-virtual {p1, v5, v2}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 221
    invoke-virtual {p1, v7}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 222
    sget-object v5, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v6, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v2}, Lplugin/gpgs/Utils;->getTimeSpan(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3}, Lplugin/gpgs/Utils;->getCollection(Z)I

    move-result v3

    invoke-interface {v5, v6, v0, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    move-object p1, v2

    .line 227
    :goto_0
    invoke-static {v0, v4, p1}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return v1
.end method
