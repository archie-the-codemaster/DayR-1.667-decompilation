.class Lplugin/gpgs/Snapshots$SnapshotBridge$2;
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

    .line 533
    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge$2;->this$1:Lplugin/gpgs/Snapshots$SnapshotBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const/4 v0, 0x2

    .line 536
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    const/4 v1, 0x1

    .line 537
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 538
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v0

    .line 539
    iget-object v3, p0, Lplugin/gpgs/Snapshots$SnapshotBridge$2;->this$1:Lplugin/gpgs/Snapshots$SnapshotBridge;

    invoke-static {v3}, Lplugin/gpgs/Snapshots$SnapshotBridge;->access$900(Lplugin/gpgs/Snapshots$SnapshotBridge;)Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v3

    array-length v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v0, v2, v5, v4}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->modifyBytes(I[BII)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v1
.end method
