.class Lplugin/gpgs/MultiplayerRealtime$11;
.super Ljava/lang/Object;
.source "MultiplayerRealtime.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerRealtime;->sendReliably(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerRealtime;

.field final synthetic val$fLuaParticipantListener:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerRealtime;Ljava/lang/Integer;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lplugin/gpgs/MultiplayerRealtime$11;->this$0:Lplugin/gpgs/MultiplayerRealtime;

    iput-object p2, p0, Lplugin/gpgs/MultiplayerRealtime$11;->val$fLuaParticipantListener:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRealTimeMessageSent(IILjava/lang/String;)V
    .locals 5

    const-string v0, "sendReliably"

    .line 228
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 230
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {p1}, Lplugin/gpgs/Utils;->statusCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "tokenId"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "participantId"

    .line 236
    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object p1, p0, Lplugin/gpgs/MultiplayerRealtime$11;->val$fLuaParticipantListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
