.class Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;
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
    name = "LegacyLoadPlayersResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private playerIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private players:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lplugin/gpgs/Players;


# direct methods
.method constructor <init>(Lplugin/gpgs/Players;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->this$0:Lplugin/gpgs/Players;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    .line 385
    iput-object p2, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->name:Ljava/lang/String;

    .line 386
    iput-object p3, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->luaListener:Ljava/lang/Integer;

    .line 387
    iput-object p4, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    return-void
.end method

.method private dispatch(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V
    .locals 5

    .line 426
    iget-object v0, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 427
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 428
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 430
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 433
    :cond_1
    iget-object p1, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_1
    iget-object p1, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 378
    check-cast p1, Lcom/google/android/gms/games/Players$LoadPlayersResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->onResult(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V
    .locals 11

    .line 392
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 394
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getPlayers()Lcom/google/android/gms/games/PlayerBuffer;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v3

    .line 397
    iget-object v4, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    const-string v5, "alias"

    const-string v6, "playerID"

    if-nez v4, :cond_1

    if-ne v3, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v8, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v7, v8}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 399
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v4

    .line 400
    iget-object v7, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    invoke-interface {v4}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v6, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    invoke-interface {v4}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_2

    .line 403
    :cond_1
    iget-object v4, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    add-int/2addr v4, v2

    .line 404
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/games/Player;

    .line 405
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 406
    invoke-interface {v8}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-interface {v8}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v8, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    add-int/lit8 v10, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v10

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 411
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    .line 412
    iget-object v0, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 413
    iget-object p1, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 414
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/games/Players;->loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_3

    .line 415
    :cond_3
    iget-object v0, p0, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    if-lez v3, :cond_4

    if-nez v4, :cond_4

    .line 416
    sget-object p1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/16 v1, 0x19

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/Players;->loadMoreInvitablePlayers(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_3

    .line 418
    :cond_4
    invoke-direct {p0, p1}, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->dispatch(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    goto :goto_3

    .line 421
    :cond_5
    invoke-direct {p0, p1}, Lplugin/gpgs/Players$LegacyLoadPlayersResultCallback;->dispatch(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    :goto_3
    return-void
.end method
