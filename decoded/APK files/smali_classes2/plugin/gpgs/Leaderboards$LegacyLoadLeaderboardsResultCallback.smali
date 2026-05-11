.class Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;
.super Ljava/lang/Object;
.source "Leaderboards.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Leaderboards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyLoadLeaderboardsResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field final synthetic this$0:Lplugin/gpgs/Leaderboards;


# direct methods
.method constructor <init>(Lplugin/gpgs/Leaderboards;Ljava/lang/Integer;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;->this$0:Lplugin/gpgs/Leaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p2, p0, Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 508
    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;->onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)V
    .locals 9

    const-string v0, "loadLeaderboardCategories"

    .line 517
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 518
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 519
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 521
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 524
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 526
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    .line 528
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 530
    invoke-interface {v5}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "category"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-interface {v5}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title"

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    .line 533
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_1

    .line 535
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    const-string p1, "data"

    .line 536
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :goto_2
    iget-object p1, p0, Lplugin/gpgs/Leaderboards$LegacyLoadLeaderboardsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
