.class Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;
.super Ljava/lang/Object;
.source "Achievements.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Achievements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyLoadAchievementsResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field final synthetic this$0:Lplugin/gpgs/Achievements;


# direct methods
.method constructor <init>(Lplugin/gpgs/Achievements;Ljava/lang/Integer;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;->this$0:Lplugin/gpgs/Achievements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p2, p0, Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 362
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;->onResult(Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;)V
    .locals 10

    const-string v0, "loadAchievements"

    .line 371
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 372
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

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

    .line 373
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isError"

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 375
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 378
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 380
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getAchievements()Lcom/google/android/gms/games/achievement/AchievementBuffer;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/achievement/Achievement;

    .line 382
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 383
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "identifier"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v8

    const-string v9, "description"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "isCompleted"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "isHidden"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "lastReportedDate"

    invoke-virtual {v7, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v5, v3

    goto :goto_1

    .line 392
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->release()V

    const-string p1, "data"

    .line 393
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :goto_4
    iget-object p1, p0, Lplugin/gpgs/Achievements$LegacyLoadAchievementsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v3}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
