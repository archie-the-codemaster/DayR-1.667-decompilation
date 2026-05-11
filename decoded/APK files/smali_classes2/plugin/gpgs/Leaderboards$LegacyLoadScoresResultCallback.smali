.class Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;
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
    name = "LegacyLoadScoresResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field final synthetic this$0:Lplugin/gpgs/Leaderboards;


# direct methods
.method constructor <init>(Lplugin/gpgs/Leaderboards;Ljava/lang/Integer;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;->this$0:Lplugin/gpgs/Leaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p2, p0, Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 542
    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;->onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;)V
    .locals 11

    const-string v0, "loadScores"

    .line 551
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 552
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 553
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 555
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 558
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 561
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v3

    .line 562
    invoke-virtual {v3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 563
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 564
    invoke-interface {v6}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 565
    invoke-interface {v6}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "playerID"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;->getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "category"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-interface {v6}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v8, Ljava/util/Date;

    invoke-interface {v6}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "date"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-interface {v6}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v8

    const-string v9, "formattedValue"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-interface {v6}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "rank"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-interface {v6}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "unixTime"

    invoke-virtual {v7, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v5, 0x1

    .line 573
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    goto :goto_1

    .line 575
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->release()V

    const-string p1, "data"

    .line 577
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :goto_2
    iget-object p1, p0, Lplugin/gpgs/Leaderboards$LegacyLoadScoresResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
