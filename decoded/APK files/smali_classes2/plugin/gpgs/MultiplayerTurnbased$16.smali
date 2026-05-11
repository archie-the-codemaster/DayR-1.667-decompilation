.class Lplugin/gpgs/MultiplayerTurnbased$16;
.super Ljava/lang/Object;
.source "MultiplayerTurnbased.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerTurnbased;->setListener(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerTurnbased;

.field final synthetic val$fLuaListener:I


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerTurnbased;I)V
    .locals 0

    .line 551
    iput-object p1, p0, Lplugin/gpgs/MultiplayerTurnbased$16;->this$0:Lplugin/gpgs/MultiplayerTurnbased;

    iput p2, p0, Lplugin/gpgs/MultiplayerTurnbased$16;->val$fLuaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnBasedMatchReceived(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .locals 3

    .line 553
    sget-object v0, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "match"

    .line 554
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "received"

    .line 555
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 556
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "matchId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget p1, p0, Lplugin/gpgs/MultiplayerTurnbased$16;->val$fLuaListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onTurnBasedMatchRemoved(Ljava/lang/String;)V
    .locals 3

    .line 562
    sget-object v0, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "match"

    .line 563
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "removed"

    .line 564
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 565
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "matchId"

    .line 566
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget p1, p0, Lplugin/gpgs/MultiplayerTurnbased$16;->val$fLuaListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method
