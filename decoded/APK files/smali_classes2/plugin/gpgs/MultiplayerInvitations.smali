.class Lplugin/gpgs/MultiplayerInvitations;
.super Ljava/lang/Object;
.source "MultiplayerInvitations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/MultiplayerInvitations$LoadInvitationsResultCallback;
    }
.end annotation


# instance fields
.field private actions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "setInvitationReceivedListener"

    aput-object v2, v0, v1

    .line 263
    iput-object v0, p0, Lplugin/gpgs/MultiplayerInvitations;->actions:[Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 30
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerInvitations$1;-><init>(Lplugin/gpgs/MultiplayerInvitations;)V

    const-string v1, "load"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 36
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerInvitations$2;-><init>(Lplugin/gpgs/MultiplayerInvitations;)V

    const-string v1, "decline"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 42
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerInvitations$3;-><init>(Lplugin/gpgs/MultiplayerInvitations;)V

    const-string v1, "dismiss"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 48
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerInvitations$4;-><init>(Lplugin/gpgs/MultiplayerInvitations;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 54
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerInvitations$5;-><init>(Lplugin/gpgs/MultiplayerInvitations;)V

    const-string v1, "setListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 60
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/MultiplayerInvitations$6;-><init>(Lplugin/gpgs/MultiplayerInvitations;)V

    const-string v1, "removeListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "invitations"

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/MultiplayerInvitations;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerInvitations;->load(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/MultiplayerInvitations;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerInvitations;->decline(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/MultiplayerInvitations;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerInvitations;->dismiss(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/MultiplayerInvitations;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/MultiplayerInvitations;->setListener(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/MultiplayerInvitations;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lplugin/gpgs/MultiplayerInvitations;->removeListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private decline(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "multiplayer.invitations.decline()"

    .line 92
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 93
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 94
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dismiss(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "multiplayer.invitations.dismiss()"

    .line 104
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 105
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 106
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    .line 108
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->dismissInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;->dismissInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private load(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const-string v0, "multiplayer.invitations.load()"

    .line 74
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 76
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 77
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v3, "mostRecentFirst"

    .line 79
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "listener"

    const-string v5, "load"

    .line 80
    invoke-virtual {v1, v4, v5}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 82
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 84
    invoke-virtual {p1, v4}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 85
    sget-object v3, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    sget-object v4, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-interface {v3, v4, v0}, Lcom/google/android/gms/games/multiplayer/Invitations;->loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/MultiplayerInvitations$LoadInvitationsResultCallback;

    invoke-direct {v1, p0, v5, p1}, Lplugin/gpgs/MultiplayerInvitations$LoadInvitationsResultCallback;-><init>(Lplugin/gpgs/MultiplayerInvitations;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    return v2
.end method

.method private removeListener(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "multiplayer.invitations.removeListener()"

    .line 218
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 219
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 220
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    sget-object p1, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/multiplayer/Invitations;->unregisterInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_0
    return v0
.end method

.method private setListener(Lcom/naef/jnlua/LuaState;Z)I
    .locals 3

    const-string v0, "multiplayer.invitations.setListener()"

    .line 174
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 176
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 177
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "invitation"

    .line 180
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 184
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v2, Lplugin/gpgs/MultiplayerInvitations$8;

    invoke-direct {v2, p0, p2, v1}, Lplugin/gpgs/MultiplayerInvitations$8;-><init>(Lplugin/gpgs/MultiplayerInvitations;ZI)V

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/games/multiplayer/Invitations;->registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method hasAction(Ljava/lang/String;)Z
    .locals 5

    .line 266
    iget-object v0, p0, Lplugin/gpgs/MultiplayerInvitations;->actions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 267
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I
    .locals 1

    const-string v0, "setInvitationReceivedListener"

    .line 276
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string v0, "listener"

    .line 277
    invoke-virtual {p1, p2, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 278
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 279
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/MultiplayerInvitations;->setListener(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method show(Lcom/naef/jnlua/LuaState;Z)I
    .locals 3

    const-string v0, "multiplayer.invitations.show()"

    .line 116
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 118
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 119
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "show"

    .line 122
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 125
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/Invitations;->getInvitationInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    .line 127
    new-instance v0, Lplugin/gpgs/MultiplayerInvitations$7;

    invoke-direct {v0, p0, p2, v1}, Lplugin/gpgs/MultiplayerInvitations$7;-><init>(Lplugin/gpgs/MultiplayerInvitations;ZI)V

    .line 167
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
