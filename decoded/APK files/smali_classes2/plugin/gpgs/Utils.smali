.class abstract Lplugin/gpgs/Utils;
.super Lplugin/gpgs/LuaUtils;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Utils$AvailabilityResult;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lplugin/gpgs/LuaUtils;-><init>()V

    return-void
.end method

.method static captureModeToInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    if-eqz p0, :cond_5

    const/4 v0, -0x1

    .line 570
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x352ab080    # -6989760.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x2ff57c

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "file"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "stream"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_1

    .line 574
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 572
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static checkConnection()Z
    .locals 1

    .line 73
    invoke-static {}, Lplugin/gpgs/Connector;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "Not connected"

    .line 76
    invoke-static {v0}, Lplugin/gpgs/Utils;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method static errorCodeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "license check failed"

    return-object p0

    :pswitch_1
    const-string p0, "developer error"

    return-object p0

    :pswitch_2
    const-string p0, "service invalid"

    return-object p0

    :pswitch_3
    const-string p0, "internal error"

    return-object p0

    :pswitch_4
    const-string p0, "network error"

    return-object p0

    :pswitch_5
    const-string p0, "resolution required"

    return-object p0

    :pswitch_6
    const-string p0, "invalid account"

    return-object p0

    :pswitch_7
    const-string p0, "sign in required"

    return-object p0

    :pswitch_8
    const-string p0, "service disabled"

    return-object p0

    :pswitch_9
    const-string p0, "service version_update_required"

    return-object p0

    :pswitch_a
    const-string p0, "service missing"

    return-object p0

    :pswitch_b
    const-string p0, "success"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static filtersToMatchTurnStatuses(Ljava/util/Hashtable;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 505
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 508
    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 509
    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 510
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 511
    check-cast v1, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "invited"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    const-string v5, "their turn"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "my turn"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "complete"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    goto :goto_0

    .line 522
    :cond_2
    aput v8, v0, v2

    goto :goto_0

    .line 519
    :cond_3
    aput v3, v0, v2

    goto :goto_0

    .line 516
    :cond_4
    aput v6, v0, v2

    goto :goto_0

    .line 513
    :cond_5
    aput v7, v0, v2

    goto :goto_0

    .line 526
    :cond_6
    array-length p0, v0

    if-nez p0, :cond_7

    .line 527
    sget-object p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->MATCH_TURN_STATUS_ALL:[I

    return-object p0

    :cond_7
    return-object v0

    .line 506
    :cond_8
    :goto_2
    sget-object p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->MATCH_TURN_STATUS_ALL:[I

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x23bacec7 -> :sswitch_3
        0x567b0e71 -> :sswitch_2
        0x5fdb4383 -> :sswitch_1
        0x74d3b27b -> :sswitch_0
    .end sparse-switch
.end method

.method static filtersToQuestSelectors(Ljava/util/Hashtable;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 462
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 465
    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 466
    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 467
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 468
    check-cast v1, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "upcoming"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_1
    const-string v5, "completed unclaimed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_2
    const-string v5, "recently failed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_3
    const-string v5, "open"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_4
    const-string v5, "failed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_5
    const-string v5, "expired"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_6
    const-string v5, "completed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_7
    const-string v5, "ending soon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_8
    const-string v5, "accepted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 494
    :pswitch_0
    aput v3, v0, v2

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x67

    .line 491
    aput v1, v0, v2

    goto/16 :goto_0

    .line 488
    :pswitch_2
    aput v6, v0, v2

    goto/16 :goto_0

    .line 485
    :pswitch_3
    aput v7, v0, v2

    goto/16 :goto_0

    .line 482
    :pswitch_4
    aput v8, v0, v2

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x66

    .line 479
    aput v1, v0, v2

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0x65

    .line 476
    aput v1, v0, v2

    goto/16 :goto_0

    .line 473
    :pswitch_7
    aput v9, v0, v2

    goto/16 :goto_0

    .line 470
    :pswitch_8
    aput v10, v0, v2

    goto/16 :goto_0

    .line 498
    :cond_2
    array-length p0, v0

    if-nez p0, :cond_3

    .line 499
    sget-object p0, Lcom/google/android/gms/games/quest/Quests;->SELECT_ALL_QUESTS:[I

    return-object p0

    :cond_3
    return-object v0

    .line 463
    :cond_4
    :goto_3
    sget-object p0, Lcom/google/android/gms/games/quest/Quests;->SELECT_ALL_QUESTS:[I

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7ff16059 -> :sswitch_8
        -0x5776976c -> :sswitch_7
        -0x539f09b5 -> :sswitch_6
        -0x4e0958db -> :sswitch_5
        -0x4c696bc3 -> :sswitch_4
        0x34264a -> :sswitch_3
        0x82eb635 -> :sswitch_2
        0x3938918d -> :sswitch_1
        0x4de2891c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static gameRequestToHashtable(Lcom/google/android/gms/games/request/GameRequest;)Ljava/util/Hashtable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 404
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getCreationTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getData()[B

    move-result-object v1

    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getExpirationTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expirationTimestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->gameToHashtable(Lcom/google/android/gms/games/Game;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getSender()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getStatus()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "isAccepted"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 413
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getType()I

    move-result v5

    if-eq v5, v3, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "wish"

    goto :goto_1

    :cond_2
    const-string v1, "gift"

    :goto_1
    const-string v5, "type"

    .line 421
    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 425
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRecipients()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/games/Player;

    .line 426
    invoke-static {v7}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object v8

    .line 427
    invoke-interface {v7}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v9}, Lcom/google/android/gms/games/request/GameRequest;->getRecipientStatus(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-interface {v7}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Lcom/google/android/gms/games/request/GameRequest;->isConsumed(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v9, "isConsumed"

    invoke-virtual {v8, v9, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v6, 0x1

    .line 429
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    goto :goto_2

    :cond_4
    const-string p0, "players"

    .line 432
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static gameToHashtable(Lcom/google/android/gms/games/Game;)Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Game;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 377
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "areSnapshotsEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "achievementCount"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "developerName"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "featuredImageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 387
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "largeImageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 390
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smallImageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "leaderboardCount"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "primaryCategory"

    invoke-static {v0, v2, v1}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secondaryCategory"

    invoke-static {v0, v2, v1}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "themeColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasGamepadSupport"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRealTimeMultiplayerEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "isTurnBasedMultiplayerEnabled"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static getCollection(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static getTimeSpan(Ljava/lang/String;)I
    .locals 4

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2f307f7f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x5aede19

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "daily"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "weekly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v3

    :cond_4
    return v2
.end method

.method static invitationToHashtable(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/Invitation;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 650
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 651
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getAvailableAutoMatchSlots()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "availableAutoMatchSlots"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getCreationTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->gameToHashtable(Lcom/google/android/gms/games/Game;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "isRealtime"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isTurnbased"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->participantToHashtable(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "participant"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getVariant()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v2, :cond_2

    .line 660
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getVariant()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "variant"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method static isGooglePlayServicesAvailable()Lplugin/gpgs/Utils$AvailabilityResult;
    .locals 4

    .line 164
    new-instance v0, Lplugin/gpgs/Utils$AvailabilityResult;

    invoke-direct {v0}, Lplugin/gpgs/Utils$AvailabilityResult;-><init>()V

    const/4 v1, 0x0

    .line 165
    iput-boolean v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->isError:Z

    const-string v1, ""

    .line 166
    iput-object v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 170
    iput-boolean v2, v0, Lplugin/gpgs/Utils$AvailabilityResult;->isError:Z

    const-string v1, "Google Play Services require alive CoronaActivity"

    .line 171
    iput-object v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    return-object v0

    .line 175
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 176
    iput v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->code:I

    if-eqz v1, :cond_1

    .line 178
    iput-boolean v2, v0, Lplugin/gpgs/Utils$AvailabilityResult;->isError:Z

    :cond_1
    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "Google Play Services are updating"

    .line 185
    iput-object v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "Google Play Services are invalid"

    .line 194
    iput-object v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "Google Play Services are disabled"

    .line 191
    iput-object v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "Google Play Services require an update"

    .line 188
    iput-object v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "Google Play Services are missing"

    .line 182
    iput-object v1, v0, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method static leaderboardScoreToHashtable(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 273
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "score"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v1

    const-string v2, "formattedRank"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v1

    const-string v2, "formattedScore"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-static {v0, v2, v1}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v1

    const-string v2, "player"

    if-eqz v1, :cond_0

    .line 282
    invoke-static {v1}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 284
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 285
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 287
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "largeImageUri"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 290
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "smallImageUri"

    invoke-virtual {v1, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method static listToHashtable(Ljava/util/List;)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 705
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 706
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 707
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static milestoneToHashtable(Lcom/google/android/gms/games/quest/Milestone;)Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/quest/Milestone;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 351
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    move-result-object v1

    const-string v2, "payload"

    invoke-static {v0, v2, v1}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "steps"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventId"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "claimed"

    goto :goto_0

    :cond_1
    const-string v1, "completed not claimed"

    goto :goto_0

    :cond_2
    const-string v1, "not completed"

    goto :goto_0

    :cond_3
    const-string v1, "not started"

    :goto_0
    const-string v2, "state"

    .line 370
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "targetSteps"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 713
    invoke-static {p0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "type"

    .line 714
    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static notificationTypesToInt(Ljava/util/Hashtable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/16 v0, 0x3f

    if-eqz p0, :cond_4

    .line 533
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 537
    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 538
    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "match update"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v5, "invitation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_2
    const-string v5, "request"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_3
    const-string v5, "multiplayer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4
    const-string v5, "quest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v5, "all"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_6
    const-string v5, "level up"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :pswitch_1
    or-int/lit8 v2, v2, 0x8

    goto :goto_0

    :pswitch_2
    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :pswitch_3
    or-int/lit8 v2, v2, 0x10

    goto :goto_0

    :pswitch_4
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_5
    or-int/lit8 v2, v2, 0x3

    goto :goto_0

    :pswitch_6
    or-int/lit8 v2, v2, 0x3f

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7f0ef349 -> :sswitch_6
        0x179a1 -> :sswitch_5
        0x66f18e2 -> :sswitch_4
        0x2184e15a -> :sswitch_3
        0x414ef28f -> :sswitch_2
        0x473f7799 -> :sswitch_1
        0x574b2f84 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static participantResultsToArrayList(Ljava/util/Hashtable;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ">;"
        }
    .end annotation

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_8

    .line 668
    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 669
    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "participantId"

    .line 670
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    .line 671
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "result"

    .line 672
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_6

    .line 673
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "disconnect"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "loss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_2
    const-string v5, "win"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_3
    const-string v5, "tie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_4
    const-string v5, "disagreed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v3, :cond_2

    if-eq v4, v8, :cond_1

    .line 690
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    .line 687
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    .line 684
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    .line 681
    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    .line 678
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_5
    const/4 v3, 0x5

    .line 675
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_6
    :goto_3
    const-string v3, "placing"

    .line 693
    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 695
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 697
    :cond_7
    new-instance v3, Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v2, v4, v1}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb15baba -> :sswitch_4
        0x1c090 -> :sswitch_3
        0x1cbdc -> :sswitch_2
        0x32c723 -> :sswitch_1
        0x1f9d589c -> :sswitch_0
    .end sparse-switch
.end method

.method static participantToHashtable(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 582
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "capabilities"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "largeImageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "smallImageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "player"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v1

    const-string v2, "unknown"

    if-eqz v1, :cond_7

    .line 590
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->getPlacing()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 591
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->getPlacing()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "placing"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "disagreed"

    goto :goto_0

    :cond_2
    const-string v1, "disconnect"

    goto :goto_0

    :cond_3
    const-string v1, "none"

    goto :goto_0

    :cond_4
    const-string v1, "tie"

    goto :goto_0

    :cond_5
    const-string v1, "loss"

    goto :goto_0

    :cond_6
    const-string v1, "win"

    :goto_0
    const-string v3, "result"

    .line 616
    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_7
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "unresponsive"

    goto :goto_1

    :pswitch_1
    const-string v2, "finished"

    goto :goto_1

    :pswitch_2
    const-string v2, "left"

    goto :goto_1

    :pswitch_3
    const-string v2, "declined"

    goto :goto_1

    :pswitch_4
    const-string v2, "joined"

    goto :goto_1

    :pswitch_5
    const-string v2, "invited"

    goto :goto_1

    :pswitch_6
    const-string v2, "not invited yet"

    :goto_1
    const-string v1, "status"

    .line 644
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "isConnectedToRoom"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static playerLevelToHashtable(Lcom/google/android/gms/games/PlayerLevel;)Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/PlayerLevel;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMaxXp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "maxXp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMinXp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "minXp"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Player;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 240
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-static {v0, v2, v1}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "largeImageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smallImageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 250
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "landscapeBannerUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 253
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "portraitBannerUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_3
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 256
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastMultiplayerTimestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 260
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 261
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentLevel()Lcom/google/android/gms/games/PlayerLevel;

    move-result-object v2

    invoke-static {v2}, Lplugin/gpgs/Utils;->playerLevelToHashtable(Lcom/google/android/gms/games/PlayerLevel;)Ljava/util/Hashtable;

    move-result-object v2

    const-string v3, "current"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getNextLevel()Lcom/google/android/gms/games/PlayerLevel;

    move-result-object v2

    invoke-static {v2}, Lplugin/gpgs/Utils;->playerLevelToHashtable(Lcom/google/android/gms/games/PlayerLevel;)Ljava/util/Hashtable;

    move-result-object v2

    const-string v3, "next"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->isMaxLevel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isMax"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentXpTotal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "xp"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getLastLevelUpTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "lastLevelUpTimestamp"

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "level"

    .line 266
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method static questToHashtable(Lcom/google/android/gms/games/quest/Quest;)Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/quest/Quest;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 300
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 301
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "acceptedTimestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->milestoneToHashtable(Lcom/google/android/gms/games/quest/Milestone;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "milestone"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 309
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "endTimestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->gameToHashtable(Lcom/google/android/gms/games/Game;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getLastUpdatedTimestamp()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 313
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getLastUpdatedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastUpdatedTimestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_3
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 318
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 321
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startTimestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_5
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, ""

    goto :goto_0

    :pswitch_0
    const-string v1, "failed"

    goto :goto_0

    :pswitch_1
    const-string v1, "expired"

    goto :goto_0

    :pswitch_2
    const-string v1, "completed"

    goto :goto_0

    :pswitch_3
    const-string v1, "accepted"

    goto :goto_0

    :pswitch_4
    const-string v1, "open"

    goto :goto_0

    :pswitch_5
    const-string v1, "upcoming"

    :goto_0
    const-string v2, "state"

    .line 344
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->isEndingSoon()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "isEndingSoon"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static resultCodeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 105
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "invalid room"

    return-object p0

    :pswitch_1
    const-string p0, "send request failed"

    return-object p0

    :pswitch_2
    const-string p0, "network failure"

    return-object p0

    :pswitch_3
    const-string p0, "left room"

    return-object p0

    :pswitch_4
    const-string p0, "app misconfigured"

    return-object p0

    :pswitch_5
    const-string p0, "license failed"

    return-object p0

    :pswitch_6
    const-string p0, "sign in failed"

    return-object p0

    :pswitch_7
    const-string p0, "reconnect required"

    return-object p0

    :cond_0
    const-string p0, "canceled"

    return-object p0

    :cond_1
    const-string p0, "ok"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static snapshotMetadataToHashtable(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 438
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "imageAspectRatio"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-static {v0, v2, v1}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceName"

    invoke-static {v0, v2, v1}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->gameToHashtable(Lcom/google/android/gms/games/Game;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-static {v1}, Lplugin/gpgs/Utils;->playerToHashtable(Lcom/google/android/gms/games/Player;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "player"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 448
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "playedTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 451
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->hasChangePending()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "hasChangePending"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 719
    invoke-static {p0, v0, v0}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V
    .locals 2

    .line 752
    new-instance v0, Lplugin/gpgs/Utils$2;

    invoke-direct {v0, p1}, Lplugin/gpgs/Utils$2;-><init>(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 767
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 769
    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v0

    .line 770
    new-instance v1, Lplugin/gpgs/Utils$3;

    invoke-direct {v1, p1, p0, v0}, Lplugin/gpgs/Utils$3;-><init>(Lcom/ansca/corona/CoronaActivity;Landroid/content/Intent;I)V

    invoke-virtual {p1, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 723
    new-instance v0, Lplugin/gpgs/Utils$1;

    invoke-direct {v0, p2, p1}, Lplugin/gpgs/Utils$1;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 748
    invoke-static {p0, v0}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    return-void
.end method

.method static statusCodeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1773

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b58

    if-eq p0, v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "realtime connection failed"

    return-object p0

    :cond_1
    const-string p0, "multiplayer disabled"

    return-object p0

    :cond_2
    const-string p0, "client reconnect required"

    return-object p0

    :cond_3
    const-string p0, "internal error"

    return-object p0

    :cond_4
    const-string p0, "ok"

    return-object p0
.end method

.method static timeSpanToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "all time"

    return-object p0

    :cond_0
    const-string p0, "weekly"

    return-object p0

    :cond_1
    const-string p0, "daily"

    return-object p0
.end method
