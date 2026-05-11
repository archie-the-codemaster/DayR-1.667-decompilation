.class Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;
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
    name = "LegacyUpdateAchievementResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:I

.field final synthetic this$0:Lplugin/gpgs/Achievements;


# direct methods
.method constructor <init>(Lplugin/gpgs/Achievements;I)V
    .locals 0

    .line 402
    iput-object p1, p0, Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;->this$0:Lplugin/gpgs/Achievements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p2, p0, Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;->luaListener:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 399
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;->onResult(Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;)V
    .locals 5

    const-string v0, "unlockAchievement"

    .line 408
    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 409
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 410
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 412
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "errorMessage"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 416
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;->getAchievementId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "achievementId"

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 417
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget p1, p0, Lplugin/gpgs/Achievements$LegacyUpdateAchievementResultCallback;->luaListener:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
