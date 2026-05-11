.class Lplugin/gpgs/Players$LoadStatsResultCallback;
.super Ljava/lang/Object;
.source "Players.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadStatsResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Players;


# direct methods
.method constructor <init>(Lplugin/gpgs/Players;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lplugin/gpgs/Players$LoadStatsResultCallback;->this$0:Lplugin/gpgs/Players;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lplugin/gpgs/Players$LoadStatsResultCallback;->name:Ljava/lang/String;

    .line 295
    iput-object p3, p0, Lplugin/gpgs/Players$LoadStatsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 289
    check-cast p1, Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Players$LoadStatsResultCallback;->onResult(Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lplugin/gpgs/Players$LoadStatsResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 301
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 302
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 307
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 308
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;->getPlayerStats()Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object p1

    .line 309
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 310
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "averageSessionLength"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 313
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "churnProbability"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 316
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "daysSinceLastPlayed"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 319
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "highSpenderProbability"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    .line 322
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "numberOfPurchases"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_6
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    .line 325
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "numberOfSessions"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    .line 328
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "sessionPercentile"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_8
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    .line 331
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "spendPercentile"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_9
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    .line 334
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "spendProbability"

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_a
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_b

    .line 337
    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v3, "totalSpendNext28Days"

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string p1, "stats"

    .line 339
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :goto_1
    iget-object p1, p0, Lplugin/gpgs/Players$LoadStatsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
