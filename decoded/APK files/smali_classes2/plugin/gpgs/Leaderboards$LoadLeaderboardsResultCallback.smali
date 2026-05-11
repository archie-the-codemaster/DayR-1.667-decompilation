.class Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;
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
    name = "LoadLeaderboardsResultCallback"
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

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Leaderboards;


# direct methods
.method constructor <init>(Lplugin/gpgs/Leaderboards;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;->this$0:Lplugin/gpgs/Leaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;->name:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 234
    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;->onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)V
    .locals 9

    .line 245
    iget-object v0, p0, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 247
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

    .line 248
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 250
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 253
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 255
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    .line 257
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 259
    invoke-interface {v5}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-interface {v5}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-interface {v5}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    move-result-object v7

    const-string v8, "imageUri"

    invoke-virtual {v6, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-interface {v5}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    move-result v5

    if-ne v5, v2, :cond_2

    const-string v5, "larger is better"

    goto :goto_2

    :cond_2
    const-string v5, "smaller is better"

    :goto_2
    const-string v7, "scoreOrder"

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    const-string p1, "leaderboards"

    .line 267
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :goto_3
    iget-object p1, p0, Lplugin/gpgs/Leaderboards$LoadLeaderboardsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
