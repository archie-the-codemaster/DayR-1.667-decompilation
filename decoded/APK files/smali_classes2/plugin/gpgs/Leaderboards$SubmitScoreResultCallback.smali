.class Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;
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
    name = "SubmitScoreResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
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

    .line 339
    iput-object p1, p0, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;->this$0:Lplugin/gpgs/Leaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;->name:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 335
    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;->onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;)V
    .locals 11

    .line 346
    iget-object v0, p0, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 347
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 348
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isError"

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 350
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 353
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;->getScoreData()Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "playerId"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->getLeaderboardId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "leaderboardId"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x2

    .line 358
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 359
    invoke-virtual {p1, v6}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->getScoreResult(I)Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 361
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 362
    iget-wide v9, v7, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->rawScore:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "score"

    invoke-virtual {v8, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v9, v7, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->formattedScore:Ljava/lang/String;

    const-string v10, "formattedScore"

    invoke-virtual {v8, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-boolean v9, v7, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->newBest:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "isNewBest"

    invoke-virtual {v8, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v7, v7, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->scoreTag:Ljava/lang/String;

    const-string v9, "tag"

    invoke-static {v8, v9, v7}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    invoke-static {v6}, Lplugin/gpgs/Utils;->timeSpanToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "scores"

    .line 370
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :goto_2
    iget-object p1, p0, Lplugin/gpgs/Leaderboards$SubmitScoreResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v3}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
