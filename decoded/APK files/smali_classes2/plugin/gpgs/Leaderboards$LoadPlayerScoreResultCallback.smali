.class Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;
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
    name = "LoadPlayerScoreResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Leaderboards;


# direct methods
.method constructor <init>(Lplugin/gpgs/Leaderboards;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;->this$0:Lplugin/gpgs/Leaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;->name:Ljava/lang/String;

    .line 279
    iput-object p3, p0, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 273
    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;->onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;)V
    .locals 5

    .line 284
    iget-object v0, p0, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 285
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 286
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 291
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 292
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;->getScore()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Lplugin/gpgs/Utils;->leaderboardScoreToHashtable(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "scores"

    .line 296
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :goto_1
    iget-object p1, p0, Lplugin/gpgs/Leaderboards$LoadPlayerScoreResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
