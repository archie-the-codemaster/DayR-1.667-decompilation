.class Lplugin/gpgs/Achievements;
.super Ljava/lang/Object;
.source "Achievements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;,
        Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;,
        Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;,
        Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;
    }
.end annotation


# instance fields
.field private actions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "loadAchievements"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "loadAchievementDescriptions"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unlockAchievement"

    aput-object v2, v0, v1

    .line 306
    iput-object v0, p0, Lplugin/gpgs/Achievements;->actions:[Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 26
    new-instance v0, Lplugin/gpgs/Achievements$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Achievements$1;-><init>(Lplugin/gpgs/Achievements;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 32
    new-instance v0, Lplugin/gpgs/Achievements$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Achievements$2;-><init>(Lplugin/gpgs/Achievements;)V

    const-string v1, "increment"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 38
    new-instance v0, Lplugin/gpgs/Achievements$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/Achievements$3;-><init>(Lplugin/gpgs/Achievements;)V

    const-string v1, "reveal"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 44
    new-instance v0, Lplugin/gpgs/Achievements$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/Achievements$4;-><init>(Lplugin/gpgs/Achievements;)V

    const-string v1, "setSteps"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 50
    new-instance v0, Lplugin/gpgs/Achievements$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/Achievements$5;-><init>(Lplugin/gpgs/Achievements;)V

    const-string v1, "unlock"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 56
    new-instance v0, Lplugin/gpgs/Achievements$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/Achievements$6;-><init>(Lplugin/gpgs/Achievements;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "achievements"

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/Achievements;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/Achievements;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Achievements;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lplugin/gpgs/Achievements;->increment(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/Achievements;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lplugin/gpgs/Achievements;->reveal(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/Achievements;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lplugin/gpgs/Achievements;->setSteps(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/Achievements;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/Achievements;->unlock(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method private increment(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "achievements.increment()"

    .line 96
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 98
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 99
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "achievementId"

    .line 101
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "steps"

    .line 102
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "increment"

    .line 103
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 105
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 107
    invoke-virtual {p1, v3, v1, v2}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 108
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p0, v5, p1}, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;-><init>(Lplugin/gpgs/Achievements;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 112
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private load(Lcom/naef/jnlua/LuaState;Z)I
    .locals 7

    const-string v0, "achievements.load()"

    .line 70
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "load"

    goto :goto_0

    :cond_0
    const-string v0, "loadAchievements"

    :goto_0
    const/4 v1, 0x1

    .line 72
    invoke-static {p1, v1}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 73
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 74
    new-instance v2, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v2}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v4, "reload"

    .line 75
    invoke-virtual {v2, v4}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v5, "listener"

    .line 76
    invoke-virtual {v2, v5, v0}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    .line 78
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v1}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v2}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 79
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 81
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v4, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v4, v1}, Lcom/google/android/gms/games/achievement/Achievements;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    if-nez p2, :cond_1

    .line 83
    new-instance p2, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p0, v0, p1}, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;-><init>(Lplugin/gpgs/Achievements;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    .line 85
    :cond_1
    new-instance p2, Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;

    invoke-direct {p2, p0, p1}, Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;-><init>(Lplugin/gpgs/Achievements;Ljava/lang/Integer;)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_2
    :goto_1
    return v3
.end method

.method private reveal(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "achievements.reveal()"

    .line 122
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 124
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 125
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "achievementId"

    .line 127
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "reveal"

    .line 128
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 130
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/achievement/Achievements;->revealImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;-><init>(Lplugin/gpgs/Achievements;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/games/achievement/Achievements;->reveal(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setSteps(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "achievements.setSteps()"

    .line 147
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 149
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 150
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "achievementId"

    .line 152
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "steps"

    .line 153
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "setSteps"

    .line 154
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 156
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 157
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getLongNotNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 159
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->setStepsImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p0, v5, p1}, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;-><init>(Lplugin/gpgs/Achievements;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 163
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->setSteps(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private unlock(Lcom/naef/jnlua/LuaState;Z)I
    .locals 6

    const-string v0, "achievements.unlock()"

    .line 173
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 175
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 176
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "achievementId"

    .line 178
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "unlock"

    .line 179
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 181
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 182
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 185
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/achievement/Achievements;->unlockImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    if-nez p2, :cond_0

    .line 187
    new-instance p2, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p0, v4, p1}, Lplugin/gpgs/Achievements$UpdateAchievementResultCallback;-><init>(Lplugin/gpgs/Achievements;Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 189
    :cond_0
    new-instance p2, Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p0, p1}, Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;-><init>(Lplugin/gpgs/Achievements;I)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 192
    :cond_1
    sget-object p1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object p2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method hasAction(Ljava/lang/String;)Z
    .locals 5

    .line 309
    iget-object v0, p0, Lplugin/gpgs/Achievements;->actions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 310
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
    .locals 6

    .line 319
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7928b8d6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x1e751ab5

    if-eq v0, v1, :cond_1

    const v1, 0x47448100    # 50305.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "loadAchievementDescriptions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "unlockAchievement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "loadAchievements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v0, -0x2

    const-string v1, "listener"

    if-eqz p2, :cond_5

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_4

    return v3

    :cond_4
    const-string p2, "achievement"

    .line 337
    invoke-virtual {p1, v5, p2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const-string p2, "identifier"

    .line 339
    invoke-virtual {p1, v2, p2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 340
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 341
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 343
    invoke-virtual {p1, v5, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 344
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 347
    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 349
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string p2, "achievementId"

    .line 350
    invoke-virtual {p1, v0, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 352
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 353
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 355
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 356
    invoke-direct {p0, p1, v5}, Lplugin/gpgs/Achievements;->unlock(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    .line 322
    :cond_5
    invoke-virtual {p1, v5, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 323
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 326
    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 328
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string p2, "reload"

    .line 329
    invoke-virtual {p1, v0, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 331
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 332
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 334
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 335
    invoke-direct {p0, p1, v5}, Lplugin/gpgs/Achievements;->load(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1
.end method

.method show(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const-string v0, "achievements.show()"

    .line 200
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;II)V

    .line 203
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const-string v3, "show"

    .line 206
    invoke-static {p1, v0, v3}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 209
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return v1
.end method
