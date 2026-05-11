.class Lplugin/gpgs/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Events$LoadEventsResultCallback;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 25
    new-instance v0, Lplugin/gpgs/Events$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Events$1;-><init>(Lplugin/gpgs/Events;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 31
    new-instance v0, Lplugin/gpgs/Events$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Events$2;-><init>(Lplugin/gpgs/Events;)V

    const-string v1, "increment"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "events"

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/Events;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lplugin/gpgs/Events;->load(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Events;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lplugin/gpgs/Events;->increment(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private increment(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const-string v0, "events.increment()"

    .line 88
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 89
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 90
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "eventId"

    .line 92
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "steps"

    .line 93
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 95
    new-instance v4, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v4, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v4, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 97
    invoke-virtual {p1, v3, v1, v2}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 98
    sget-object v1, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/games/event/Events;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private load(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    const-string v0, "events.load()"

    .line 47
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 49
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 50
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 51
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "eventId"

    .line 52
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "eventIds"

    .line 53
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "eventIds.#"

    .line 54
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "reload"

    .line 55
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "listener"

    const-string v7, "load"

    .line 56
    invoke-virtual {v1, v6, v7}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 58
    new-instance v8, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v8, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v8, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 62
    invoke-virtual {p1, v6}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
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

    .line 67
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v4, :cond_2

    .line 75
    sget-object v0, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/games/event/Events;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_2
    sget-object v0, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/gms/games/event/Events;->loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 79
    :goto_1
    new-instance v1, Lplugin/gpgs/Events$LoadEventsResultCallback;

    invoke-direct {v1, p0, v7, p1}, Lplugin/gpgs/Events$LoadEventsResultCallback;-><init>(Lplugin/gpgs/Events;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_3
    return v2
.end method
