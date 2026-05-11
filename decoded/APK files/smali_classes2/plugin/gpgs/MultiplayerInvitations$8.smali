.class Lplugin/gpgs/MultiplayerInvitations$8;
.super Ljava/lang/Object;
.source "MultiplayerInvitations.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerInvitations;->setListener(Lcom/naef/jnlua/LuaState;Z)I
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

    .line 184
    iput-object p1, p0, Lplugin/gpgs/MultiplayerInvitations$8;->this$0:Lplugin/gpgs/MultiplayerInvitations;

    iput-boolean p2, p0, Lplugin/gpgs/MultiplayerInvitations$8;->val$isLegacy:Z

    iput p3, p0, Lplugin/gpgs/MultiplayerInvitations$8;->val$fLuaListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 4

    const-string v0, "invitation"

    .line 186
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 187
    iget-boolean v2, p0, Lplugin/gpgs/MultiplayerInvitations$8;->val$isLegacy:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 188
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isError"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phase"

    const-string v3, "received"

    .line 189
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p1}, Lplugin/gpgs/Utils;->invitationToHashtable(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "type"

    const-string v2, "setInvitationReceivedListener"

    .line 192
    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 194
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "roomID"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alias"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "playerID"

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 197
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_0
    iget p1, p0, Lplugin/gpgs/MultiplayerInvitations$8;->val$fLuaListener:I

    invoke-static {p1, v1}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onInvitationRemoved(Ljava/lang/String;)V
    .locals 3

    .line 203
    iget-boolean v0, p0, Lplugin/gpgs/MultiplayerInvitations$8;->val$isLegacy:Z

    if-nez v0, :cond_0

    const-string v0, "invitation"

    .line 204
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phase"

    const-string v2, "removed"

    .line 206
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "invitationId"

    .line 207
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget p1, p0, Lplugin/gpgs/MultiplayerInvitations$8;->val$fLuaListener:I

    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :cond_0
    return-void
.end method
