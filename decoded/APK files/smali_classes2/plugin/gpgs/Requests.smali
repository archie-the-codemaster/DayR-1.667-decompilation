.class Lplugin/gpgs/Requests;
.super Ljava/lang/Object;
.source "Requests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Requests$UpdateRequestsResultCallback;,
        Lplugin/gpgs/Requests$LoadRequestsResultCallback;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 39
    new-instance v0, Lplugin/gpgs/Requests$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$1;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 45
    new-instance v0, Lplugin/gpgs/Requests$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$2;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "accept"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 51
    new-instance v0, Lplugin/gpgs/Requests$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$3;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "dismiss"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 57
    new-instance v0, Lplugin/gpgs/Requests$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$4;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "getLimits"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 63
    new-instance v0, Lplugin/gpgs/Requests$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$5;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 69
    new-instance v0, Lplugin/gpgs/Requests$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$6;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "showSend"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 75
    new-instance v0, Lplugin/gpgs/Requests$7;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$7;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "setListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 81
    new-instance v0, Lplugin/gpgs/Requests$8;

    invoke-direct {v0, p0}, Lplugin/gpgs/Requests$8;-><init>(Lplugin/gpgs/Requests;)V

    const-string v1, "removeListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "requests"

    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method private accept(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "requests.accept()"

    .line 120
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 122
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 123
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "requestId"

    .line 125
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "requestIds"

    .line 126
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "requestIds.#"

    .line 127
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "accept"

    .line 128
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 130
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 133
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 138
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v4, v3

    :cond_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_4

    :cond_2
    if-nez v4, :cond_3

    .line 146
    :try_start_0
    sget-object v2, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v4, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v4, v1}, Lcom/google/android/gms/games/request/Requests;->acceptRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_1

    .line 148
    :cond_3
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v4}, Lcom/google/android/gms/games/request/Requests;->acceptRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 151
    invoke-static {v5}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "isError"

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "errorCode"

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "errorMessage"

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p1, v2, v0}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    :goto_2
    if-eqz v3, :cond_4

    .line 158
    new-instance v0, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;

    invoke-direct {v0, p0, v5, p1}, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;-><init>(Lplugin/gpgs/Requests;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->load(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->accept(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->dismiss(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->getLimits(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->show(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->showSend(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->setListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lplugin/gpgs/Requests;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lplugin/gpgs/Requests;->removeListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private dismiss(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "requests.dismiss()"

    .line 170
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 172
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 173
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "requestId"

    .line 175
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "requestIds"

    .line 176
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "requestIds.#"

    .line 177
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "dismiss"

    .line 178
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 180
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 183
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 188
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v4, v3

    :cond_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_4

    :cond_2
    if-nez v4, :cond_3

    .line 196
    :try_start_0
    sget-object v2, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v4, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v4, v1}, Lcom/google/android/gms/games/request/Requests;->dismissRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_1

    .line 198
    :cond_3
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v4}, Lcom/google/android/gms/games/request/Requests;->dismissRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 201
    invoke-static {v5}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 202
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "isError"

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "errorCode"

    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "errorMessage"

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p1, v2, v0}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    :goto_2
    if-eqz v3, :cond_4

    .line 208
    new-instance v0, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;

    invoke-direct {v0, p0, v5, p1}, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;-><init>(Lplugin/gpgs/Requests;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getLimits(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "requests.getLimits()"

    .line 217
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 218
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 219
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 221
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/request/Requests;->getMaxLifetimeDays(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lifetimeDays"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/request/Requests;->getMaxPayloadSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "payloadSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private load(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    const-string v0, "requests.load()"

    .line 96
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 98
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 99
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v4, "outcoming"

    .line 101
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "expiringSoonFirst"

    .line 102
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "listener"

    const-string v7, "load"

    .line 103
    invoke-virtual {v1, v6, v7}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 105
    new-instance v8, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v8, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v8, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v4, v3}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 107
    invoke-virtual {p1, v5, v3}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 108
    invoke-virtual {p1, v6}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 109
    sget-object v4, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v5, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v6, 0xffff

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-interface {v4, v5, v1, v6, v0}, Lcom/google/android/gms/games/request/Requests;->loadRequests(Lcom/google/android/gms/common/api/GoogleApiClient;III)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Requests$LoadRequestsResultCallback;

    invoke-direct {v1, p0, v7, p1}, Lplugin/gpgs/Requests$LoadRequestsResultCallback;-><init>(Lplugin/gpgs/Requests;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    return v2
.end method

.method private removeListener(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "requests.removeListener()"

    .line 377
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 378
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 379
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    sget-object p1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/request/Requests;->unregisterRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_0
    return v0
.end method

.method private setListener(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "requests.setListener()"

    .line 342
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 344
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 345
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "request"

    .line 348
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 352
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v2, Lplugin/gpgs/Requests$10;

    invoke-direct {v2, p0, v1}, Lplugin/gpgs/Requests$10;-><init>(Lplugin/gpgs/Requests;I)V

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/games/request/Requests;->registerRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private show(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "requests.show()"

    .line 306
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 308
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 309
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "show"

    .line 311
    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    .line 313
    new-instance v0, Lplugin/gpgs/Requests$9;

    invoke-direct {v0, p0, p1}, Lplugin/gpgs/Requests$9;-><init>(Lplugin/gpgs/Requests;I)V

    .line 334
    sget-object p1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/request/Requests;->getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private showSend(Lcom/naef/jnlua/LuaState;)I
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "requests.showSend()"

    .line 241
    invoke-static {v1}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 243
    invoke-static {v0, v1}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 244
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 245
    new-instance v2, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v2}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v4, "type"

    .line 246
    invoke-virtual {v2, v4}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v5, "payload"

    .line 247
    invoke-virtual {v2, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v6, "description"

    .line 248
    invoke-virtual {v2, v6}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v7, "requestLifetimeDays"

    .line 249
    invoke-virtual {v2, v7}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v8, "playerId"

    .line 250
    invoke-virtual {v2, v8}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v9, "playerIds"

    .line 251
    invoke-virtual {v2, v9}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v10, "playerIds.#"

    .line 252
    invoke-virtual {v2, v10}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v10, "image"

    .line 253
    invoke-virtual {v2, v10}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v10, "image.filename"

    .line 254
    invoke-virtual {v2, v10}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v11, "image.baseDir"

    .line 255
    invoke-virtual {v2, v11}, Lplugin/gpgs/LuaUtils$Scheme;->lightuserdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v12, "listener"

    const-string v13, "showSend"

    .line 256
    invoke-virtual {v2, v12, v13}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    .line 258
    new-instance v14, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v14, v0, v1}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v14, v2}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v2

    .line 259
    invoke-virtual {v2, v4}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {v2, v5}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {v2, v6}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v6, -0x1

    .line 262
    invoke-virtual {v2, v7, v6}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    .line 263
    invoke-virtual {v2, v8}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-virtual {v2, v9}, Lplugin/gpgs/LuaUtils$Table;->getTable(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v9

    .line 265
    invoke-virtual {v2, v10}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 266
    sget-wide v14, Lplugin/gpgs/LuaUtils$Dirs;->resourceDirectoryPointer:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v11, v14}, Lplugin/gpgs/LuaUtils$Table;->getLightuserdata(Ljava/lang/String;Ljava/lang/Long;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    move-result-object v11

    .line 267
    invoke-virtual {v2, v12}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 270
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v14, 0x306930

    if-eq v12, v14, :cond_1

    const v14, 0x37b0a7

    if-eq v12, v14, :cond_0

    goto :goto_0

    :cond_0
    const-string v12, "wish"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const-string v12, "gift"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    if-eq v6, v1, :cond_3

    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    const/16 v16, 0x2

    goto :goto_1

    :cond_4
    const/16 v16, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v9, :cond_5

    .line 280
    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 283
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    .line 286
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v4, v1

    :cond_7
    :goto_3
    if-eqz v10, :cond_8

    .line 292
    invoke-static {v0, v10, v11}, Lplugin/gpgs/Utils;->getBitmap(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_4

    :cond_8
    move-object/from16 v19, v1

    .line 295
    :goto_4
    sget-object v14, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    sget-object v15, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/games/request/Requests;->getSendIntent(Lcom/google/android/gms/common/api/GoogleApiClient;I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v4, :cond_9

    const-string v1, "players"

    .line 297
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 299
    :cond_9
    invoke-static {v0, v13, v2}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    return v3
.end method
