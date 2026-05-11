.class public Lplugin/gpgs/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;
.implements Lplugin/gpgs/Connector$SignInListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/LuaLoader$RequestWrapper;,
        Lplugin/gpgs/LuaLoader$ShowWrapper;,
        Lplugin/gpgs/LuaLoader$ShowSettingsWrapper;,
        Lplugin/gpgs/LuaLoader$LoadImageWrapper;,
        Lplugin/gpgs/LuaLoader$ClearNotificationsWrapper;,
        Lplugin/gpgs/LuaLoader$LoadGameWrapper;,
        Lplugin/gpgs/LuaLoader$SetPopupPositionWrapper;,
        Lplugin/gpgs/LuaLoader$GetSdkVersionWrapper;,
        Lplugin/gpgs/LuaLoader$GetServerAuthCodeNameWrapper;,
        Lplugin/gpgs/LuaLoader$GetAccountNameWrapper;,
        Lplugin/gpgs/LuaLoader$GetAppIdWrapper;,
        Lplugin/gpgs/LuaLoader$LogoutWrapper;,
        Lplugin/gpgs/LuaLoader$LoginWrapper;,
        Lplugin/gpgs/LuaLoader$IsConnectedWrapper;,
        Lplugin/gpgs/LuaLoader$InitWrapper;,
        Lplugin/gpgs/LuaLoader$EnableDebugWrapper;,
        Lplugin/gpgs/LuaLoader$LoadImageCallback;,
        Lplugin/gpgs/LuaLoader$LoadGameResultCallback;,
        Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;,
        Lplugin/gpgs/LuaLoader$GetServerAuthCodeResultCallback;
    }
.end annotation


# instance fields
.field private achievements:Lplugin/gpgs/Achievements;

.field private connector:Lplugin/gpgs/Connector;

.field private imageManager:Lcom/google/android/gms/common/images/ImageManager;

.field private isLoginLegacy:Z

.field private leaderboards:Lplugin/gpgs/Leaderboards;

.field private loadImageCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lplugin/gpgs/LuaLoader$LoadImageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private luaLoginListener:I

.field private multiplayer:Lplugin/gpgs/Multiplayer;

.field private players:Lplugin/gpgs/Players;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lplugin/gpgs/LuaLoader;->luaLoginListener:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lplugin/gpgs/LuaLoader;->isLoginLegacy:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lplugin/gpgs/LuaLoader;->loadImageCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1700(Lplugin/gpgs/LuaLoader;)Lcom/google/android/gms/common/images/ImageManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lplugin/gpgs/LuaLoader;->imageManager:Lcom/google/android/gms/common/images/ImageManager;

    return-object p0
.end method

.method static synthetic access$1800(Lplugin/gpgs/LuaLoader;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lplugin/gpgs/LuaLoader;->loadImageCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->enableDebug(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->init(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->isConnected(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;Z)I
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lplugin/gpgs/LuaLoader;->login(Lcom/naef/jnlua/LuaState;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->logout(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->getAppId(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->getAccountName(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->getServerAuthCode(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->getSdkVersion(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->setPopupPosition(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->loadGame(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->clearNotifications(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->loadImage(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->showSettings(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->show(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lplugin/gpgs/LuaLoader;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->request(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private clearNotifications(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "clearNotifications()"

    .line 307
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 308
    invoke-static {p1, v0, v1}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;II)V

    .line 309
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    .line 311
    sget-object v3, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_0

    .line 312
    sget-object v2, Lcom/google/android/gms/games/Games;->Notifications:Lcom/google/android/gms/games/Notifications;

    sget-object v3, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->toHashtable(Lcom/naef/jnlua/LuaState;I)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p1}, Lplugin/gpgs/Utils;->notificationTypesToInt(Ljava/util/Hashtable;)I

    move-result p1

    invoke-interface {v2, v3, p1}, Lcom/google/android/gms/games/Notifications;->clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    goto :goto_0

    .line 314
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Notifications:Lcom/google/android/gms/games/Notifications;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/Notifications;->clearAll(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private enableDebug(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 98
    invoke-static {}, Lplugin/gpgs/Utils;->enableDebug()V

    return v0
.end method

.method private getAccountName(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "getAccountName()"

    .line 201
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 202
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 204
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "getAccountName"

    .line 206
    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    .line 208
    new-instance v0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->handleRun(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getAppId(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "getAppId()"

    .line 189
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 190
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 191
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->getAppId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getSdkVersion(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "getSdkVersion()"

    .line 239
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 240
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 241
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->getSdkVariant(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v0

    .line 243
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private getServerAuthCode(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "getServerAuthCode()"

    .line 219
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 220
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 222
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "serverId"

    .line 224
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "getServerAuthCode"

    .line 225
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 227
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 228
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 231
    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getGamesServerAuthCode(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/LuaLoader$GetServerAuthCodeResultCallback;

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/LuaLoader$GetServerAuthCodeResultCallback;-><init>(Lplugin/gpgs/LuaLoader;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private init(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const-string v0, "init()"

    .line 104
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "init"

    .line 111
    invoke-static {p1, v1, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 115
    :goto_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v1

    iput-object v1, p0, Lplugin/gpgs/LuaLoader;->imageManager:Lcom/google/android/gms/common/images/ImageManager;

    .line 120
    :cond_2
    invoke-static {}, Lplugin/gpgs/Utils;->isGooglePlayServicesAvailable()Lplugin/gpgs/Utils$AvailabilityResult;

    move-result-object v1

    .line 122
    invoke-static {v2}, Lplugin/gpgs/Utils;->newLegacyEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 123
    iget-boolean v3, v1, Lplugin/gpgs/Utils$AvailabilityResult;->isError:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-boolean v3, v1, Lplugin/gpgs/Utils$AvailabilityResult;->isError:Z

    if-eqz v3, :cond_3

    .line 125
    iget-object v3, v1, Lplugin/gpgs/Utils$AvailabilityResult;->errorMessage:Ljava/lang/String;

    const-string v4, "errorMessage"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v1, v1, Lplugin/gpgs/Utils$AvailabilityResult;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    const/4 p1, 0x0

    return p1
.end method

.method private isConnected(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    const-string v0, "isConnected()"

    .line 135
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 137
    invoke-static {}, Lplugin/gpgs/Connector;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private loadGame(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "loadGame()"

    .line 292
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 294
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 295
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "loadGame"

    .line 297
    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    .line 299
    sget-object v0, Lcom/google/android/gms/games/Games;->GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v2}, Lcom/google/android/gms/games/GamesMetadata;->loadGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v2, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, p0, v1, p1}, Lplugin/gpgs/LuaLoader$LoadGameResultCallback;-><init>(Lplugin/gpgs/LuaLoader;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadImage(Lcom/naef/jnlua/LuaState;)I
    .locals 13

    const-string v0, "loadImage()"

    .line 326
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 327
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 329
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "uri"

    .line 330
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "filename"

    .line 331
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v4, "baseDir"

    .line 332
    invoke-virtual {v1, v4}, Lplugin/gpgs/LuaUtils$Scheme;->lightuserdata(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v5, "listener"

    const-string v8, "loadImage"

    .line 333
    invoke-virtual {v1, v5, v8}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 335
    new-instance v6, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v6, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v6, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v3}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 338
    sget-wide v2, Lplugin/gpgs/LuaUtils$Dirs;->cachesDirectoryPointer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lplugin/gpgs/LuaUtils$Table;->getLightuserdata(Ljava/lang/String;Ljava/lang/Long;)Lplugin/gpgs/LuaUtils$LuaLightuserdata;

    move-result-object v11

    const/4 v2, -0x1

    .line 339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    .line 340
    new-instance v0, Lplugin/gpgs/LuaLoader$LoadImageCallback;

    invoke-static {p1, v10, v11}, Lplugin/gpgs/Utils;->pathForFile(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lplugin/gpgs/LuaLoader$LoadImageCallback;-><init>(Lplugin/gpgs/LuaLoader;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lplugin/gpgs/LuaUtils$LuaLightuserdata;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lplugin/gpgs/LuaLoader;->loadImageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 345
    new-instance v2, Lplugin/gpgs/LuaLoader$2;

    invoke-direct {v2, p0, v0, v1}, Lplugin/gpgs/LuaLoader$2;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$LoadImageCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private login(Lcom/naef/jnlua/LuaState;Z)I
    .locals 5

    const-string v0, "login()"

    .line 145
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkType(ILcom/naef/jnlua/LuaType;)V

    .line 148
    new-instance v0, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v0}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "userInitiated"

    .line 149
    invoke-virtual {v0, v2}, Lplugin/gpgs/LuaUtils$Scheme;->bool(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v0

    const-string v3, "listener"

    const-string v4, "login"

    .line 150
    invoke-virtual {v0, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v0

    .line 152
    new-instance v4, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v4, p1, v1}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v4, v0}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    const/4 v0, 0x0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lplugin/gpgs/LuaUtils$Table;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 154
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lplugin/gpgs/LuaLoader;->luaLoginListener:I

    .line 158
    :cond_0
    iput-boolean p2, p0, Lplugin/gpgs/LuaLoader;->isLoginLegacy:Z

    .line 160
    invoke-static {}, Lplugin/gpgs/Connector;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    sget-object p1, Lplugin/gpgs/Connector$SignInListener$SignInResult;->SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/LuaLoader;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;)V

    return v0

    .line 165
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 167
    iget-object p2, p0, Lplugin/gpgs/LuaLoader;->connector:Lplugin/gpgs/Connector;

    invoke-virtual {p2, p1, p0}, Lplugin/gpgs/Connector;->init(Lcom/ansca/corona/CoronaActivity;Lplugin/gpgs/Connector$SignInListener;)V

    .line 168
    new-instance p2, Lplugin/gpgs/LuaLoader$1;

    invoke-direct {p2, p0, v1}, Lplugin/gpgs/LuaLoader$1;-><init>(Lplugin/gpgs/LuaLoader;Z)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return v0
.end method

.method private logout(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    const-string v0, "logout()"

    .line 181
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 182
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 183
    iget-object p1, p0, Lplugin/gpgs/LuaLoader;->connector:Lplugin/gpgs/Connector;

    invoke-virtual {p1}, Lplugin/gpgs/Connector;->signOut()V

    return v0
.end method

.method private request(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "request()"

    .line 421
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 422
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 424
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4167ea76

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v3, :cond_2

    const v3, 0x625ef69

    if-eq v2, v3, :cond_1

    const v3, 0x23b734ff

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "isConnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "logout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_b

    if-eq v2, v0, :cond_a

    if-eq v2, v5, :cond_9

    .line 432
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->achievements:Lplugin/gpgs/Achievements;

    invoke-virtual {v0, v1}, Lplugin/gpgs/Achievements;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->achievements:Lplugin/gpgs/Achievements;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/Achievements;->request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 434
    :cond_4
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->leaderboards:Lplugin/gpgs/Leaderboards;

    invoke-virtual {v0, v1}, Lplugin/gpgs/Leaderboards;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->leaderboards:Lplugin/gpgs/Leaderboards;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/Leaderboards;->request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 436
    :cond_5
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->players:Lplugin/gpgs/Players;

    invoke-virtual {v0, v1}, Lplugin/gpgs/Players;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->players:Lplugin/gpgs/Players;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/Players;->request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 438
    :cond_6
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    iget-object v0, v0, Lplugin/gpgs/Multiplayer;->invitations:Lplugin/gpgs/MultiplayerInvitations;

    invoke-virtual {v0, v1}, Lplugin/gpgs/MultiplayerInvitations;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 439
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    iget-object v0, v0, Lplugin/gpgs/Multiplayer;->invitations:Lplugin/gpgs/MultiplayerInvitations;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/MultiplayerInvitations;->request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 440
    :cond_7
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    iget-object v0, v0, Lplugin/gpgs/Multiplayer;->realtime:Lplugin/gpgs/MultiplayerRealtime;

    invoke-virtual {v0, v1}, Lplugin/gpgs/MultiplayerRealtime;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 441
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    iget-object v0, v0, Lplugin/gpgs/Multiplayer;->realtime:Lplugin/gpgs/MultiplayerRealtime;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/MultiplayerRealtime;->request(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_8
    return v4

    .line 430
    :cond_9
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->logout(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    .line 428
    :cond_a
    invoke-direct {p0, p1, v0}, Lplugin/gpgs/LuaLoader;->login(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    .line 426
    :cond_b
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader;->isConnected(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method

.method private setPopupPosition(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const-string v0, "setPopupPosition()"

    .line 251
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 252
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 253
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "TopCenter"

    .line 254
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->checkString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "BottomCenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v0, "BottomRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "TopLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "BottomLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "TopRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "CenterRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "CenterLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 p1, 0x31

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const p1, 0x800055

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x51

    goto :goto_2

    :pswitch_2
    const p1, 0x800053

    goto :goto_2

    :pswitch_3
    const p1, 0x800015

    goto :goto_2

    :pswitch_4
    const/16 p1, 0x11

    goto :goto_2

    :pswitch_5
    const p1, 0x800013

    goto :goto_2

    :pswitch_6
    const p1, 0x800035

    goto :goto_2

    :pswitch_7
    const p1, 0x800033

    .line 285
    :goto_2
    :pswitch_8
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->setGravityForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    :cond_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43ef75e4 -> :sswitch_8
        -0x39a8e559 -> :sswitch_7
        -0x3675fe19 -> :sswitch_6
        0x12847cf2 -> :sswitch_5
        0x1f43badc -> :sswitch_4
        0x3e618291 -> :sswitch_3
        0x4de885ea -> :sswitch_2
        0x74011a80 -> :sswitch_1
        0x7817b875 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private show(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    const-string v0, "show()"

    .line 373
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 374
    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;II)V

    .line 375
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 377
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "waitingRoom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "selectPlayers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "leaderboards"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "invitations"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "achievements"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    if-eq v2, v0, :cond_3

    const-string v0, "listener"

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_1

    return v5

    .line 411
    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 412
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 413
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    iget-object v0, v0, Lplugin/gpgs/Multiplayer;->invitations:Lplugin/gpgs/MultiplayerInvitations;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/MultiplayerInvitations;->show(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    :cond_2
    const-string v2, "roomID"

    .line 385
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 386
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v3, "minPlayers"

    .line 389
    invoke-virtual {p1, v1, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 390
    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 391
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 393
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 394
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 397
    invoke-virtual {p1, v5, v6}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 399
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v2, -0x2

    const-string v4, "roomId"

    .line 400
    invoke-virtual {p1, v2, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 402
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string v3, "minPlayersRequired"

    .line 403
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 405
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 406
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 408
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 409
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    iget-object v0, v0, Lplugin/gpgs/Multiplayer;->realtime:Lplugin/gpgs/MultiplayerRealtime;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/MultiplayerRealtime;->show(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    .line 383
    :cond_3
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    iget-object v0, v0, Lplugin/gpgs/Multiplayer;->realtime:Lplugin/gpgs/MultiplayerRealtime;

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/MultiplayerRealtime;->showSelectPlayers(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1

    .line 381
    :cond_4
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->leaderboards:Lplugin/gpgs/Leaderboards;

    invoke-virtual {v0, p1}, Lplugin/gpgs/Leaderboards;->show(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    .line 379
    :cond_5
    iget-object v0, p0, Lplugin/gpgs/LuaLoader;->achievements:Lplugin/gpgs/Achievements;

    invoke-virtual {v0, p1}, Lplugin/gpgs/Achievements;->show(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62d8a8dc -> :sswitch_4
        -0x5f508406 -> :sswitch_3
        -0x5062776a -> :sswitch_2
        0xdb3d116 -> :sswitch_1
        0x1c329cc8 -> :sswitch_0
    .end sparse-switch
.end method

.method private showSettings(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const-string v0, "showSettings()"

    .line 357
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;II)V

    .line 360
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "showSettings"

    .line 363
    invoke-static {p1, v0, v3}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v2

    .line 366
    :cond_0
    sget-object p1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->getSettingsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return v1
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 55
    new-instance v1, Lplugin/gpgs/LuaLoader$EnableDebugWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$EnableDebugWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lplugin/gpgs/LuaLoader$InitWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$InitWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lplugin/gpgs/LuaLoader$IsConnectedWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$IsConnectedWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$LoginWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$LoginWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$LogoutWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$LogoutWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$GetAppIdWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$GetAppIdWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$GetAccountNameWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$GetAccountNameWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$GetServerAuthCodeNameWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$GetServerAuthCodeNameWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$GetSdkVersionWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$GetSdkVersionWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$SetPopupPositionWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$SetPopupPositionWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$LoadGameWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$LoadGameWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$ClearNotificationsWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$ClearNotificationsWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$LoadImageWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$LoadImageWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v4, 0xc

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$ShowSettingsWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$ShowSettingsWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$ShowWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$ShowWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v4, 0xe

    aput-object v1, v0, v4

    new-instance v1, Lplugin/gpgs/LuaLoader$RequestWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/gpgs/LuaLoader$RequestWrapper;-><init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 74
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    const-string v1, "CoronaProvider.gameNetwork.google"

    .line 75
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 78
    invoke-static {}, Lplugin/gpgs/Connector;->getInstance()Lplugin/gpgs/Connector;

    move-result-object v0

    iput-object v0, p0, Lplugin/gpgs/LuaLoader;->connector:Lplugin/gpgs/Connector;

    .line 79
    new-instance v0, Lplugin/gpgs/Achievements;

    invoke-direct {v0, p1}, Lplugin/gpgs/Achievements;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lplugin/gpgs/LuaLoader;->achievements:Lplugin/gpgs/Achievements;

    .line 80
    new-instance v0, Lplugin/gpgs/Leaderboards;

    invoke-direct {v0, p1}, Lplugin/gpgs/Leaderboards;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lplugin/gpgs/LuaLoader;->leaderboards:Lplugin/gpgs/Leaderboards;

    .line 81
    new-instance v0, Lplugin/gpgs/Players;

    invoke-direct {v0, p1}, Lplugin/gpgs/Players;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lplugin/gpgs/LuaLoader;->players:Lplugin/gpgs/Players;

    .line 82
    new-instance v0, Lplugin/gpgs/Events;

    invoke-direct {v0, p1}, Lplugin/gpgs/Events;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 83
    new-instance v0, Lplugin/gpgs/Quests;

    invoke-direct {v0, p1}, Lplugin/gpgs/Quests;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 84
    new-instance v0, Lplugin/gpgs/Requests;

    invoke-direct {v0, p1}, Lplugin/gpgs/Requests;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 85
    new-instance v0, Lplugin/gpgs/Snapshots;

    invoke-direct {v0, p1}, Lplugin/gpgs/Snapshots;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 86
    new-instance v0, Lplugin/gpgs/Videos;

    invoke-direct {v0, p1}, Lplugin/gpgs/Videos;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 87
    new-instance v0, Lplugin/gpgs/Multiplayer;

    invoke-direct {v0, p1}, Lplugin/gpgs/Multiplayer;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lplugin/gpgs/LuaLoader;->multiplayer:Lplugin/gpgs/Multiplayer;

    .line 89
    invoke-static {p1}, Lplugin/gpgs/Utils;->getDirPointers(Lcom/naef/jnlua/LuaState;)V

    const-string p1, "plugin.gpgs"

    .line 90
    invoke-static {p1}, Lplugin/gpgs/Utils;->setTag(Ljava/lang/String;)V

    return v3
.end method

.method public onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, v0, v0}, Lplugin/gpgs/LuaLoader;->onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6

    const-string v0, "login"

    .line 456
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 457
    iget-boolean v2, p0, Lplugin/gpgs/LuaLoader;->isLoginLegacy:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "isError"

    if-nez v2, :cond_2

    .line 458
    sget-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 459
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorCode"

    .line 460
    invoke-static {v1, v0, p2}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "errorMessage"

    .line 461
    invoke-static {v1, p2, p3}, Lplugin/gpgs/Utils;->put(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    sget-object p2, Lplugin/gpgs/Connector$SignInListener$SignInResult;->CANCELED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    if-ne p1, p2, :cond_1

    const-string p1, "canceled"

    goto :goto_1

    :cond_1
    const-string p1, "logged in"

    :goto_1
    const-string p2, "phase"

    invoke-virtual {v1, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    const-string p2, "type"

    .line 464
    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 466
    sget-object p3, Lplugin/gpgs/Connector$SignInListener$SignInResult;->SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    if-eq p1, p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 467
    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :goto_3
    iget p1, p0, Lplugin/gpgs/LuaLoader;->luaLoginListener:I

    invoke-static {p1, v1}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    return-void
.end method

.method public onSignOut()V
    .locals 3

    .line 473
    iget-boolean v0, p0, Lplugin/gpgs/LuaLoader;->isLoginLegacy:Z

    if-nez v0, :cond_0

    const-string v0, "login"

    .line 474
    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    const/4 v1, 0x0

    .line 475
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isError"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phase"

    const-string v2, "logged out"

    .line 476
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget v1, p0, Lplugin/gpgs/LuaLoader;->luaLoginListener:I

    invoke-static {v1, v0}, Lplugin/gpgs/Utils;->dispatchEvent(ILjava/util/Hashtable;)V

    :cond_0
    return-void
.end method
