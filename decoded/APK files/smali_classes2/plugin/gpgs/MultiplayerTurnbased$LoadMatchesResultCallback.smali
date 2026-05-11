.class Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;
.super Ljava/lang/Object;
.source "MultiplayerTurnbased.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/MultiplayerTurnbased;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMatchesResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/MultiplayerTurnbased;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerTurnbased;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;->this$0:Lplugin/gpgs/MultiplayerTurnbased;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p2, p0, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;->name:Ljava/lang/String;

    .line 618
    iput-object p3, p0, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 612
    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;->onResult(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;)V
    .locals 8

    .line 623
    iget-object v0, p0, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 624
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 625
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 627
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 630
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;->getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    move-result-object p1

    .line 632
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 634
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 635
    sget-object v6, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v4, 0x1

    .line 636
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_1

    :cond_2
    const-string v3, "completed"

    .line 638
    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 642
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 643
    sget-object v6, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v4, 0x1

    .line 644
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_2

    :cond_3
    const-string v3, "myTurn"

    .line 646
    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 650
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 651
    sget-object v6, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v4, 0x1

    .line 652
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_3

    :cond_4
    const-string v3, "theirTurn"

    .line 654
    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 658
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/multiplayer/Invitation;

    add-int/lit8 v6, v4, 0x1

    .line 659
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Lplugin/gpgs/Utils;->invitationToHashtable(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_4

    :cond_5
    const-string v3, "invitations"

    .line 661
    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->release()V

    .line 665
    :goto_5
    iget-object p1, p0, Lplugin/gpgs/MultiplayerTurnbased$LoadMatchesResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
