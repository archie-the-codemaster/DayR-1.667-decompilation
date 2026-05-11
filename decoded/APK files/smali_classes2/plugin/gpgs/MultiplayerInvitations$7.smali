.class Lplugin/gpgs/MultiplayerInvitations$7;
.super Ljava/lang/Object;
.source "MultiplayerInvitations.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerInvitations;->show(Lcom/naef/jnlua/LuaState;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerInvitations;

.field final synthetic val$fLuaListener:I

.field final synthetic val$isLegacy:Z


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerInvitations;ZI)V
    .locals 0

    .line 127
    iput-object p1, p0, Lplugin/gpgs/MultiplayerInvitations$7;->this$0:Lplugin/gpgs/MultiplayerInvitations;

    iput-boolean p2, p0, Lplugin/gpgs/MultiplayerInvitations$7;->val$isLegacy:Z

    iput p3, p0, Lplugin/gpgs/MultiplayerInvitations$7;->val$fLuaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 6

    .line 130
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    const-string p1, "show"

    .line 131
    invoke-static {p1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    .line 133
    iget-boolean p2, p0, Lplugin/gpgs/MultiplayerInvitations$7;->val$isLegacy:Z

    const-string v0, "isError"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "invitation"

    if-nez p2, :cond_3

    if-eq p3, v1, :cond_0

    const/4 v2, 0x1

    .line 135
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "errorCode"

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p3}, Lplugin/gpgs/Utils;->resultCodeToString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "errorMessage"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_8

    .line 141
    invoke-virtual {p4, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {p4, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 143
    invoke-static {p2}, Lplugin/gpgs/Utils;->invitationToHashtable(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/util/Hashtable;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p2, "turn_based_match"

    .line 144
    invoke-virtual {p4, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 145
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 146
    sget-object p3, Lplugin/gpgs/MultiplayerTurnbased;->matches:Ljava/util/Hashtable;

    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "matchId"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string p2, "type"

    const-string v5, "invitations"

    .line 151
    invoke-virtual {p1, p2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    if-eq p3, v1, :cond_4

    if-eqz p3, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 154
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    const-string p3, "cancelled"

    goto :goto_1

    :cond_6
    const-string p3, "selected"

    :goto_1
    const-string v0, "phase"

    .line 156
    invoke-virtual {p2, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-eqz p4, :cond_7

    .line 157
    invoke-virtual {p4, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 158
    invoke-virtual {p4, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 159
    invoke-interface {p3}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "roomID"

    invoke-virtual {p2, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string p3, "data"

    .line 161
    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_8
    :goto_2
    iget p2, p0, Lplugin/gpgs/MultiplayerInvitations$7;->val$fLuaListener:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1, v3}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
