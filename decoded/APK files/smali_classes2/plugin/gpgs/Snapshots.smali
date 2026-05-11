.class Lplugin/gpgs/Snapshots;
.super Ljava/lang/Object;
.source "Snapshots.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Snapshots$SnapshotBridge;,
        Lplugin/gpgs/Snapshots$DeleteSnapshotResultCallback;,
        Lplugin/gpgs/Snapshots$SaveSnapshotResultCallback;,
        Lplugin/gpgs/Snapshots$OpenSnapshotResultCallback;,
        Lplugin/gpgs/Snapshots$LoadSnapshotsResultCallback;
    }
.end annotation


# instance fields
.field snapshotHashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lplugin/gpgs/Snapshots;->snapshotHashtable:Ljava/util/Hashtable;

    .line 43
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 44
    new-instance v0, Lplugin/gpgs/Snapshots$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$1;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 50
    new-instance v0, Lplugin/gpgs/Snapshots$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$2;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "open"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 56
    new-instance v0, Lplugin/gpgs/Snapshots$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$3;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "save"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 62
    new-instance v0, Lplugin/gpgs/Snapshots$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$4;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "discard"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 68
    new-instance v0, Lplugin/gpgs/Snapshots$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$5;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "delete"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 74
    new-instance v0, Lplugin/gpgs/Snapshots$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$6;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "resolveConflict"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 80
    new-instance v0, Lplugin/gpgs/Snapshots$7;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$7;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "getSnapshot"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 86
    new-instance v0, Lplugin/gpgs/Snapshots$8;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$8;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "getLimits"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 92
    new-instance v0, Lplugin/gpgs/Snapshots$9;

    invoke-direct {v0, p0}, Lplugin/gpgs/Snapshots$9;-><init>(Lplugin/gpgs/Snapshots;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "snapshots"

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->load(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->open(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->save(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->discard(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->delete(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->resolveConflict(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->getSnapshot(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->getLimits(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lplugin/gpgs/Snapshots;->show(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private delete(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "snapshots.delete()"

    .line 248
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 250
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 251
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "snapshotId"

    .line 253
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "delete"

    .line 254
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 256
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 257
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 259
    iget-object v1, p0, Lplugin/gpgs/Snapshots;->snapshotHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v1, :cond_0

    .line 261
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/games/snapshot/Snapshots;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Snapshots$DeleteSnapshotResultCallback;

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/Snapshots$DeleteSnapshotResultCallback;-><init>(Lplugin/gpgs/Snapshots;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapshot id not found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private discard(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "snapshots.discard()"

    .line 230
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 231
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 232
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lplugin/gpgs/Snapshots;->snapshotHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v0, :cond_0

    .line 236
    sget-object p1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/games/snapshot/Snapshots;->discardAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapshot id not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getLimits(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "snapshots.getLimits()"

    .line 319
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 320
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 321
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 323
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->getMaxCoverImageSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->getMaxDataSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "payloadSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private getSnapshot(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "snapshots.getSnapshot()"

    .line 299
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 300
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 301
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lplugin/gpgs/Snapshots;->snapshotHashtable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v2, :cond_0

    .line 305
    new-instance v1, Lplugin/gpgs/Snapshots$SnapshotBridge;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/Snapshots$SnapshotBridge;-><init>(Lplugin/gpgs/Snapshots;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    .line 306
    invoke-virtual {v1, p1}, Lplugin/gpgs/Snapshots$SnapshotBridge;->push(Lcom/naef/jnlua/LuaState;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapshot id not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    return v0
.end method

.method private load(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "snapshots.load()"

    .line 106
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 108
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 109
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "reload"

    .line 111
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "load"

    .line 112
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 114
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 115
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 116
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 117
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/games/snapshot/Snapshots;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Snapshots$LoadSnapshotsResultCallback;

    invoke-direct {v1, p0, v5, p1}, Lplugin/gpgs/Snapshots$LoadSnapshotsResultCallback;-><init>(Lplugin/gpgs/Snapshots;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    return v2
.end method

.method private open(Lcom/naef/jnlua/LuaState;)I
    .locals 10

    const-string v0, "snapshots.open()"

    .line 128
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 130
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 131
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 132
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "filename"

    .line 133
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "create"

    .line 134
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "conflictPolicy"

    .line 135
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "listener"

    const-string v7, "open"

    .line 136
    invoke-virtual {v1, v6, v7}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 138
    new-instance v8, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v8, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v8, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "manual"

    .line 141
    invoke-virtual {p1, v5, v4}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {p1, v6}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "highest progress"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "most recently modified"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "last known good"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "longest playtime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_3

    if-eq v4, v0, :cond_2

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_1

    const/4 v0, -0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    .line 159
    :cond_4
    :goto_2
    sget-object v4, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v5, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v4, v5, v1, v3, v0}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Snapshots$OpenSnapshotResultCallback;

    invoke-direct {v1, p0, v7, p1}, Lplugin/gpgs/Snapshots$OpenSnapshotResultCallback;-><init>(Lplugin/gpgs/Snapshots;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_5
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x469d4229 -> :sswitch_3
        -0x150a14bc -> :sswitch_2
        -0x731b49c -> :sswitch_1
        0x2db3ea29 -> :sswitch_0
    .end sparse-switch
.end method

.method private resolveConflict(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "snapshots.resolveConflict()"

    .line 274
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 276
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 277
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "conflictId"

    .line 279
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "snapshotId"

    .line 280
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "resolveConflict"

    .line 281
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 283
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 284
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 287
    iget-object v2, p0, Lplugin/gpgs/Snapshots;->snapshotHashtable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v2, :cond_0

    .line 289
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v3, v0, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Snapshots$OpenSnapshotResultCallback;

    invoke-direct {v1, p0, v5, p1}, Lplugin/gpgs/Snapshots$OpenSnapshotResultCallback;-><init>(Lplugin/gpgs/Snapshots;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 291
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "snapshot id not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private save(Lcom/naef/jnlua/LuaState;)I
    .locals 12

    const-string v0, "snapshots.save()"

    .line 173
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 175
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 176
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 177
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "snapshotId"

    .line 178
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "description"

    .line 179
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "playedTime"

    .line 180
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "progress"

    .line 181
    invoke-virtual {v1, v5}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "image"

    .line 182
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->table(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v6, "image.filename"

    .line 183
    invoke-virtual {v1, v6}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v7, "image.baseDir"

    .line 184
    invoke-virtual {v1, v7}, Lplugin/gpgs/LuaUtils$Scheme;->lightuserdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v8, "listener"

    const-string v9, "save"

    .line 185
    invoke-virtual {v1, v8, v9}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 187
    new-instance v10, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v10, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v10, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v4}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 191
    invoke-virtual {v0, v5}, Lplugin/gpgs/LuaUtils$Table;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 192
    invoke-virtual {v0, v6}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    sget-wide v10, Lplugin/gpgs/LuaUtils$Dirs;->resourceDirectoryPointer:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lplugin/gpgs/LuaUtils$Table;->getLightuserdata(Ljava/lang/String;Ljava/lang/Long;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    move-result-object v6

    .line 194
    invoke-virtual {v0, v8}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 196
    iget-object v7, p0, Lplugin/gpgs/Snapshots;->snapshotHashtable:Ljava/util/Hashtable;

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v7, :cond_6

    .line 198
    sget-object v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-eqz v5, :cond_5

    .line 201
    :cond_0
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    :cond_1
    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    :cond_2
    if-eqz v4, :cond_3

    .line 209
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setProgressValue(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    :cond_3
    if-eqz v5, :cond_4

    .line 212
    invoke-static {p1, v5, v6}, Lplugin/gpgs/Utils;->getBitmap(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 214
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setCoverImage(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 217
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v1

    .line 220
    :cond_5
    sget-object p1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v2, v7, v1}, Lcom/google/android/gms/games/snapshot/Snapshots;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v1, Lplugin/gpgs/Snapshots$SaveSnapshotResultCallback;

    invoke-direct {v1, p0, v9, v0}, Lplugin/gpgs/Snapshots$SaveSnapshotResultCallback;-><init>(Lplugin/gpgs/Snapshots;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 222
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "snapshot id not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private show(Lcom/naef/jnlua/LuaState;)I
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "snapshots.show()"

    .line 339
    invoke-static {v1}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 341
    invoke-static {v0, v1}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 342
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 343
    new-instance v2, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v2}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v5, "title"

    .line 344
    invoke-virtual {v2, v5}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v6, "disableAdd"

    .line 345
    invoke-virtual {v2, v6}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v7, "disableDelete"

    .line 346
    invoke-virtual {v2, v7}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v8, "limit"

    .line 347
    invoke-virtual {v2, v8}, Lplugin/gpgs/LuaUtils$Scheme;->number(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    const-string v9, "listener"

    const-string v10, "show"

    .line 348
    invoke-virtual {v2, v9, v10}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v2

    .line 350
    new-instance v10, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v10, v0, v1}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v10, v2}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v0

    .line 351
    invoke-virtual {v0, v5}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 352
    invoke-virtual {v0, v6, v4}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 353
    invoke-virtual {v0, v7, v4}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, -0x1

    .line 354
    invoke-virtual {v0, v8, v5}, Lplugin/gpgs/LuaUtils$Table;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 355
    invoke-virtual {v0, v9}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 356
    sget-object v10, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    sget-object v11, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v14, v2, 0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/games/snapshot/Snapshots;->getSelectSnapshotIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v1

    .line 357
    new-instance v2, Lplugin/gpgs/Snapshots$10;

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v0}, Lplugin/gpgs/Snapshots$10;-><init>(Lplugin/gpgs/Snapshots;Ljava/lang/Integer;)V

    .line 382
    invoke-static {v1, v2}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p0

    :goto_0
    return v3
.end method
