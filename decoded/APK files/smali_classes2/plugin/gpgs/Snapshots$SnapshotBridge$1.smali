.class Lplugin/gpgs/Snapshots$SnapshotBridge$1;
.super Ljava/lang/Object;
.source "Snapshots.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Snapshots$SnapshotBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/gpgs/Snapshots$SnapshotBridge;


# direct methods
.method constructor <init>(Lplugin/gpgs/Snapshots$SnapshotBridge;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge$1;->this$1:Lplugin/gpgs/Snapshots$SnapshotBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    const/4 v0, 0x0

    .line 527
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 528
    iget-object v0, p0, Lplugin/gpgs/Snapshots$SnapshotBridge$1;->this$1:Lplugin/gpgs/Snapshots$SnapshotBridge;

    invoke-static {v0}, Lplugin/gpgs/Snapshots$SnapshotBridge;->access$900(Lplugin/gpgs/Snapshots$SnapshotBridge;)Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 p1, 0x1

    return p1
.end method
