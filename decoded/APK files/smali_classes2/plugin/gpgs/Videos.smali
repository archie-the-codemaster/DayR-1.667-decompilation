.class Lplugin/gpgs/Videos;
.super Ljava/lang/Object;
.source "Videos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Videos$VideoCapabilitiesBridge;,
        Lplugin/gpgs/Videos$CaptureStateResultCallback;,
        Lplugin/gpgs/Videos$LoadCapabilitiesResultCallback;,
        Lplugin/gpgs/Videos$CaptureAvailableResultCallback;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 33
    new-instance v0, Lplugin/gpgs/Videos$1;

    invoke-direct {v0, p0}, Lplugin/gpgs/Videos$1;-><init>(Lplugin/gpgs/Videos;)V

    const-string v1, "isSupported"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 39
    new-instance v0, Lplugin/gpgs/Videos$2;

    invoke-direct {v0, p0}, Lplugin/gpgs/Videos$2;-><init>(Lplugin/gpgs/Videos;)V

    const-string v1, "isModeAvailable"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 45
    new-instance v0, Lplugin/gpgs/Videos$3;

    invoke-direct {v0, p0}, Lplugin/gpgs/Videos$3;-><init>(Lplugin/gpgs/Videos;)V

    const-string v1, "loadCapabilities"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 51
    new-instance v0, Lplugin/gpgs/Videos$4;

    invoke-direct {v0, p0}, Lplugin/gpgs/Videos$4;-><init>(Lplugin/gpgs/Videos;)V

    const-string v1, "getState"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 57
    new-instance v0, Lplugin/gpgs/Videos$5;

    invoke-direct {v0, p0}, Lplugin/gpgs/Videos$5;-><init>(Lplugin/gpgs/Videos;)V

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 63
    new-instance v0, Lplugin/gpgs/Videos$6;

    invoke-direct {v0, p0}, Lplugin/gpgs/Videos$6;-><init>(Lplugin/gpgs/Videos;)V

    const-string v1, "setListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    .line 69
    new-instance v0, Lplugin/gpgs/Videos$7;

    invoke-direct {v0, p0}, Lplugin/gpgs/Videos$7;-><init>(Lplugin/gpgs/Videos;)V

    const-string v1, "removeListener"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, -0x2

    const-string v1, "videos"

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lplugin/gpgs/Videos;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lplugin/gpgs/Videos;->isSupported(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lplugin/gpgs/Videos;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lplugin/gpgs/Videos;->isModeAvailable(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lplugin/gpgs/Videos;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lplugin/gpgs/Videos;->loadCapabilities(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lplugin/gpgs/Videos;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lplugin/gpgs/Videos;->getState(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lplugin/gpgs/Videos;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lplugin/gpgs/Videos;->setListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lplugin/gpgs/Videos;Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lplugin/gpgs/Videos;->removeListener(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method private getState(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "videos.getState()"

    .line 132
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 134
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 135
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "getState"

    .line 138
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 141
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/video/Videos;->getCaptureState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lplugin/gpgs/Videos$CaptureStateResultCallback;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lplugin/gpgs/Videos$CaptureStateResultCallback;-><init>(Lplugin/gpgs/Videos;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isModeAvailable(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "videos.isModeAvailable()"

    .line 95
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 98
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "mode"

    .line 100
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "listener"

    const-string v4, "isModeAvailable"

    .line 101
    invoke-virtual {v1, v3, v4}, Lplugin/gpgs/LuaUtils$Scheme;->listener(Ljava/lang/String;Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 103
    new-instance v5, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v5, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v5, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object p1

    .line 104
    invoke-virtual {p1, v2}, Lplugin/gpgs/LuaUtils$Table;->getStringNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v3}, Lplugin/gpgs/LuaUtils$Table;->getListener(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 106
    invoke-static {v0}, Lplugin/gpgs/Utils;->captureModeToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v1, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    sget-object v2, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/video/Videos;->isCaptureAvailable(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;

    invoke-direct {v1, p0, v4, p1}, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;-><init>(Lplugin/gpgs/Videos;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSupported(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "videos.isSupported()"

    .line 81
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 83
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/video/Videos;->isCaptureSupported(Lcom/google/android/gms/common/api/GoogleApiClient;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private loadCapabilities(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "videos.loadCapabilities()"

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

    const-string v2, "loadCapabilities"

    .line 122
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 125
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/video/Videos;->getCaptureCapabilities(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lplugin/gpgs/Videos$LoadCapabilitiesResultCallback;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lplugin/gpgs/Videos$LoadCapabilitiesResultCallback;-><init>(Lplugin/gpgs/Videos;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private removeListener(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const-string v0, "videos.removeListener()"

    .line 206
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 207
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 208
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    sget-object p1, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    sget-object v1, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/video/Videos;->unregisterCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_0
    return v0
.end method

.method private setListener(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "videos.setListener()"

    .line 164
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 166
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 167
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "video"

    .line 170
    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v1

    .line 174
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v2, Lplugin/gpgs/Videos$8;

    invoke-direct {v2, p0, v1}, Lplugin/gpgs/Videos$8;-><init>(Lplugin/gpgs/Videos;I)V

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/games/video/Videos;->registerCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method show(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const-string v0, "videos.show()"

    .line 148
    invoke-static {v0}, Lplugin/gpgs/Utils;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;II)V

    .line 151
    invoke-static {}, Lplugin/gpgs/Utils;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const-string v3, "show"

    .line 154
    invoke-static {p1, v0, v3}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 157
    :cond_0
    sget-object p1, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/video/Videos;->getCaptureOverlayIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lplugin/gpgs/Utils;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return v1
.end method
