.class Lplugin/gpgs/Players$LoadPlayersResultCallback;
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
    name = "LoadPlayersResultCallback"
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
.field private limit:Ljava/lang/Integer;

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

.field private reload:Z

.field final synthetic this$0:Lplugin/gpgs/Players;


# direct methods
.method constructor <init>(Lplugin/gpgs/Players;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->this$0:Lplugin/gpgs/Players;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    .line 228
    iput-object p2, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->name:Ljava/lang/String;

    .line 229
    iput-object p3, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->luaListener:Ljava/lang/Integer;

    if-eqz p4, :cond_0

    .line 231
    invoke-virtual {p4}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->limit:Ljava/lang/Integer;

    .line 233
    :cond_0
    iput-object p5, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    .line 234
    iput-boolean p6, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->reload:Z

    return-void
.end method

.method private dispatch(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V
    .locals 5

    .line 276
    iget-object v0, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 277
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

    .line 278
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 280
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 283
    :cond_1
    iget-object p1, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    const-string v1, "players"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_1
    iget-object p1, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 219
    check-cast p1, Lcom/google/android/gms/games/Players$LoadPlayersResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Players$LoadPlayersResultCallback;->onResult(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V
    .locals 9

    .line 239
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
    if-nez v0, :cond_b

    .line 241
    iget-object v0, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 242
    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getPlayers()Lcom/google/android/gms/games/PlayerBuffer;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v4

    .line 244
    invoke-virtual {v3}, Lcom/google/android/gms/games/PlayerBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/Player;

    .line 245
    iget-object v7, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    add-int/lit8 v8, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v8

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    .line 249
    iget-object v0, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    iget-object p1, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 251
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-boolean v2, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->reload:Z

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/games/Players;->loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto/16 :goto_4

    .line 252
    :cond_2
    iget-object v0, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->playerIds:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    if-lez v4, :cond_a

    iget-object v0, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->limit:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->players:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v3, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->limit:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_a

    :cond_3
    const/16 v0, 0x19

    .line 254
    iget-object v3, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->limit:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v0, :cond_4

    .line 255
    iget-object v0, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 257
    :cond_4
    iget-object v3, p0, Lplugin/gpgs/Players$LoadPlayersResultCallback;->name:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x7150cbca

    if-eq v5, v6, :cond_6

    const v1, -0x425b2e7f

    if-eq v5, v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "recentlyPlayedWith"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const-string v5, "invitable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_9

    if-eq v1, v2, :cond_8

    .line 265
    invoke-direct {p0, p1}, Lplugin/gpgs/Players$LoadPlayersResultCallback;->dispatch(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    goto :goto_4

    .line 262
    :cond_8
    sget-object p1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/games/Players;->loadMoreRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_4

    .line 259
    :cond_9
    sget-object p1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/games/Players;->loadMoreInvitablePlayers(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_4

    .line 268
    :cond_a
    invoke-direct {p0, p1}, Lplugin/gpgs/Players$LoadPlayersResultCallback;->dispatch(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    goto :goto_4

    .line 271
    :cond_b
    invoke-direct {p0, p1}, Lplugin/gpgs/Players$LoadPlayersResultCallback;->dispatch(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    :goto_4
    return-void
.end method
