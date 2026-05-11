.class Lplugin/gpgs/Snapshots$SnapshotBridge;
.super Ljava/lang/Object;
.source "Snapshots.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Snapshots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotBridge"
.end annotation


# instance fields
.field private isClosed:Lcom/naef/jnlua/JavaFunction;

.field private modify:Lcom/naef/jnlua/JavaFunction;

.field private read:Lcom/naef/jnlua/JavaFunction;

.field private snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

.field final synthetic this$0:Lplugin/gpgs/Snapshots;

.field private write:Lcom/naef/jnlua/JavaFunction;


# direct methods
.method constructor <init>(Lplugin/gpgs/Snapshots;Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->this$0:Lplugin/gpgs/Snapshots;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance p1, Lplugin/gpgs/Snapshots$SnapshotBridge$1;

    invoke-direct {p1, p0}, Lplugin/gpgs/Snapshots$SnapshotBridge$1;-><init>(Lplugin/gpgs/Snapshots$SnapshotBridge;)V

    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->isClosed:Lcom/naef/jnlua/JavaFunction;

    .line 533
    new-instance p1, Lplugin/gpgs/Snapshots$SnapshotBridge$2;

    invoke-direct {p1, p0}, Lplugin/gpgs/Snapshots$SnapshotBridge$2;-><init>(Lplugin/gpgs/Snapshots$SnapshotBridge;)V

    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->modify:Lcom/naef/jnlua/JavaFunction;

    .line 544
    new-instance p1, Lplugin/gpgs/Snapshots$SnapshotBridge$3;

    invoke-direct {p1, p0}, Lplugin/gpgs/Snapshots$SnapshotBridge$3;-><init>(Lplugin/gpgs/Snapshots$SnapshotBridge;)V

    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->read:Lcom/naef/jnlua/JavaFunction;

    .line 563
    new-instance p1, Lplugin/gpgs/Snapshots$SnapshotBridge$4;

    invoke-direct {p1, p0}, Lplugin/gpgs/Snapshots$SnapshotBridge$4;-><init>(Lplugin/gpgs/Snapshots$SnapshotBridge;)V

    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->write:Lcom/naef/jnlua/JavaFunction;

    .line 510
    iput-object p2, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-void
.end method

.method static synthetic access$900(Lplugin/gpgs/Snapshots$SnapshotBridge;)Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 0

    .line 506
    iget-object p0, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object p0
.end method


# virtual methods
.method push(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 514
    iget-object v0, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    invoke-static {v0}, Lplugin/gpgs/Utils;->snapshotMetadataToHashtable(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    .line 516
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 517
    iget-object v0, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->isClosed:Lcom/naef/jnlua/JavaFunction;

    const-string v1, "isClosed"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 518
    iget-object v0, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->modify:Lcom/naef/jnlua/JavaFunction;

    const-string v1, "modify"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 519
    iget-object v0, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->read:Lcom/naef/jnlua/JavaFunction;

    const-string v1, "read"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 520
    iget-object v0, p0, Lplugin/gpgs/Snapshots$SnapshotBridge;->write:Lcom/naef/jnlua/JavaFunction;

    const-string v1, "write"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "contents"

    .line 521
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method
