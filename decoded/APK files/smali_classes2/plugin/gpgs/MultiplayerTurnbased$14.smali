.class Lplugin/gpgs/MultiplayerTurnbased$14;
.super Ljava/lang/Object;
.source "MultiplayerTurnbased.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerTurnbased;->show(Lcom/naef/jnlua/LuaState;)I
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

    .line 431
    iput-object p1, p0, Lplugin/gpgs/MultiplayerTurnbased$14;->this$0:Lplugin/gpgs/MultiplayerTurnbased;

    iput p2, p0, Lplugin/gpgs/MultiplayerTurnbased$14;->val$fLuaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 3

    .line 434
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const-string p1, "show"

    .line 435
    invoke-static {p1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 437
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 439
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "errorMessage"

    invoke-virtual {p1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_3

    const-string p3, "invitation"

    .line 443
    invoke-virtual {p4, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 445
    invoke-static {p4}, Lplugin/gpgs/Utils;->invitationToHashtable(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/util/Hashtable;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p3, "turn_based_match"

    .line 446
    invoke-virtual {p4, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 448
    sget-object p4, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-interface {p3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-interface {p3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "matchId"

    invoke-virtual {p1, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_3
    :goto_1
    iget p3, p0, Lplugin/gpgs/MultiplayerTurnbased$14;->val$fLuaListener:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
