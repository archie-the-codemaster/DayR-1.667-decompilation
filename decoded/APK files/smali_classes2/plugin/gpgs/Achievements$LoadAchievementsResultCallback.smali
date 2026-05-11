.class Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;
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
    name = "LoadAchievementsResultCallback"
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
.field private luaListener:I

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Achievements;


# direct methods
.method constructor <init>(Lplugin/gpgs/Achievements;Ljava/lang/String;I)V
    .locals 0

    .line 220
    iput-object p1, p0, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;->this$0:Lplugin/gpgs/Achievements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;->name:Ljava/lang/String;

    .line 222
    iput p3, p0, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;->luaListener:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 216
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;->onResult(Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;)V
    .locals 11

    .line 227
    iget-object v0, p0, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 229
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

    .line 230
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isError"

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 232
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 235
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 237
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getAchievements()Lcom/google/android/gms/games/achievement/AchievementBuffer;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/achievement/Achievement;

    .line 239
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 241
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v8

    const-string v9, "description"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "lastUpdatedTimestamp"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "revealedImageUri"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "unlockedImageUri"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "xp"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v8

    if-eqz v8, :cond_4

    if-eq v8, v3, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const-string v8, ""

    goto :goto_2

    :cond_2
    const-string v8, "hidden"

    goto :goto_2

    :cond_3
    const-string v8, "revealed"

    goto :goto_2

    :cond_4
    const-string v8, "unlocked"

    :goto_2
    const-string v9, "state"

    .line 261
    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v8

    if-ne v8, v3, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    .line 265
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "currentSteps"

    invoke-virtual {v7, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "totalSteps"

    invoke-virtual {v7, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedCurrentSteps()Ljava/lang/String;

    move-result-object v9

    const-string v10, "formattedCurrentSteps"

    invoke-static {v7, v10, v9}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    invoke-interface {v6}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedTotalSteps()Ljava/lang/String;

    move-result-object v6

    const-string v9, "formattedTotalSteps"

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v8, "isIncremental"

    invoke-virtual {v7, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v5, 0x1

    .line 272
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    goto/16 :goto_1

    .line 274
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->release()V

    const-string p1, "achievements"

    .line 275
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :goto_4
    iget p1, p0, Lplugin/gpgs/Achievements$LoadAchievementsResultCallback;->luaListener:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0, v3}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
