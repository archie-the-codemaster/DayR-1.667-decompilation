.class Lplugin/gpgs/Quests;
.super Ljava/lang/Object;
.source "Quests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Quests$ClaimMilestoneResultCallback;,
        Lplugin/gpgs/Quests$AcceptQuestResultCallback;,
        Lplugin/gpgs/Quests$LoadQuestsResultCallback;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 32
    new-instance v0, Lplugin/gpgs/Quests$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Quests$1;-><init>(Lplugin/gpgs/Quests;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 38
    new-instance v0, Lplugin/gpgs/Quests$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Quests$2;-><init>(Lplugin/gpgs/Quests;)V

    const-string v1, "accept"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 44
    new-instance v0, Lplugin/gpgs/Quests$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/Quests$3;-><init>(Lplugin/gpgs/Quests;)V

    const-string v1, "claim"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 50
    new-instance v0, Lplugin/gpgs/Quests$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/Quests$4;-><init>(Lplugin/gpgs/Quests;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 56
    new-instance v0, Lplugin/gpgs/Quests$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/Quests$5;-><init>(Lplugin/gpgs/Quests;)V

    const-string v1, "showPopup"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 62
    new-instance v0, Lplugin/gpgs/Quests$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/Quests$6;-><init>(Lplugin/gpgs/Quests;)V

    const-string v1, "setListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 68
    new-instance v0, Lplugin/gpgs/Quests$7;

    invoke-direct {v0, p0}, Lplugin/gpgs/Quests$7;-><init>(Lplugin/gpgs/Quests;)V

    const-string v1, "removeListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "quests"

    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method private accept(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "quests.accept()"

    .line 133
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 135
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 136
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "questId"

    .line 138
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "accept"

    .line 139
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 141
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 142
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 144
    sget-object v1, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/quest/Quests;->accept(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Quests$AcceptQuestResultCallback;

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/Quests$AcceptQuestResultCallback;-><init>(Lplugin/gpgs/Quests;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lplugin/gpgs/Quests;->load(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lplugin/gpgs/Quests;->accept(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lplugin/gpgs/Quests;->claim(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lplugin/gpgs/Quests;->show(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lplugin/gpgs/Quests;->showPopup(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lplugin/gpgs/Quests;->setListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lplugin/gpgs/Quests;->removeListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private claim(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "quests.claim()"

    .line 154
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 156
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 157
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "questId"

    .line 159
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "milestoneId"

    .line 160
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "claim"

    .line 161
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 163
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 167
    sget-object v2, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/games/quest/Quests;->claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Quests$ClaimMilestoneResultCallback;

    invoke-direct {v1, p0, v5, p1}, Lplugin/gpgs/Quests$ClaimMilestoneResultCallback;-><init>(Lplugin/gpgs/Quests;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private load(Lcom/naef/jnlua/LuaState;)I
    .locals 12

    const-string v0, "quests.load()"

    .line 86
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 88
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 89
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 90
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v4, "questId"

    .line 91
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "questIds"

    .line 92
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "questIds.#"

    .line 93
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "filters"

    .line 94
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v7, "filters.#"

    .line 95
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v7, "recentlyUpdatedFirst"

    .line 96
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v8, "reload"

    .line 97
    invoke-virtual {v1, v8}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v9, "listener"

    const-string v10, "load"

    .line 98
    invoke-virtual {v1, v9, v10}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 100
    new-instance v11, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v11, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v11, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p1, v5}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 103
    invoke-virtual {p1, v6}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v5

    .line 104
    invoke-virtual {p1, v8, v3}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    .line 105
    invoke-virtual {p1, v7, v3}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 106
    invoke-virtual {p1, v9}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 114
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v7, :cond_2

    .line 120
    sget-object v1, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v4, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v5}, Lplugin/gpgs/Utils;->filtersToQuestSelectors(Ljava/util/Hashtable;)[I

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v4, v5, v0, v3}, Lcom/google/android/gms/games/quest/Quests;->load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_1

    .line 122
    :cond_2
    sget-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/gms/games/quest/Quests;->loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 124
    :goto_1
    new-instance v1, Lplugin/gpgs/Quests$LoadQuestsResultCallback;

    invoke-direct {v1, p0, v10, p1}, Lplugin/gpgs/Quests$LoadQuestsResultCallback;-><init>(Lplugin/gpgs/Quests;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_3
    return v2
.end method

.method private removeListener(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "quests.removeListener()"

    .line 240
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 241
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 242
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    sget-object p1, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/quest/Quests;->unregisterQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_0
    return v0
.end method

.method private setListener(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "quests.setListener()"

    .line 214
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 216
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 217
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "quest"

    .line 220
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 224
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v2, Lplugin/gpgs/Quests$8;

    invoke-direct {v2, p0, v1}, Lplugin/gpgs/Quests$8;-><init>(Lplugin/gpgs/Quests;I)V

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/games/quest/Quests;->registerQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private show(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "quests.show()"

    .line 177
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 179
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 180
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "questId"

    .line 182
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "filters"

    .line 183
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "filters.#"

    .line 184
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "show"

    .line 185
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 187
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 188
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 190
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 193
    sget-object v1, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/quest/Quests;->getQuestIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v5, p1}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1}, Lplugin/gpgs/Utils;->filtersToQuestSelectors(Ljava/util/Hashtable;)[I

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/games/quest/Quests;->getQuestsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v5, p1}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private showPopup(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "quests.showPopup()"

    .line 203
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 204
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 205
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    .line 207
    sget-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/quest/Quests;->showStateChangedPopup(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
