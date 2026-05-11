.class Lplugin/gpgs/Snapshots$SnapshotBridge$4;
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

    .line 563
    iput-object p1, p0, Lplugin/gpgs/Snapshots$SnapshotBridge$4;->this$1:Lplugin/gpgs/Snapshots$SnapshotBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const/4 v0, 0x1

    .line 566
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 567
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 568
    iget-object v2, p0, Lplugin/gpgs/Snapshots$SnapshotBridge$4;->this$1:Lplugin/gpgs/Snapshots$SnapshotBridge;

    invoke-static {v2}, Lplugin/gpgs/Snapshots$SnapshotBridge;->access$900(Lplugin/gpgs/Snapshots$SnapshotBridge;)Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v0
.end method
