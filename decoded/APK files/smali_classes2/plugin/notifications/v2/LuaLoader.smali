.class public Lplugin/notifications/v2/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/notifications/v2/LuaLoader$CancelNotification;,
        Lplugin/notifications/v2/LuaLoader$ScheduleNotification;,
        Lplugin/notifications/v2/LuaLoader$Unsubscribe;,
        Lplugin/notifications/v2/LuaLoader$Subscribe;,
        Lplugin/notifications/v2/LuaLoader$GetDeviceToken;,
        Lplugin/notifications/v2/LuaLoader$RegisterForPushNotifications;,
        Lplugin/notifications/v2/LuaLoader$BeaconListener;
    }
.end annotation


# static fields
.field private static final CORONA_TAG:Ljava/lang/String; = "Corona"

.field private static final ERROR_MSG:Ljava/lang/String; = "ERROR: "

.field private static final PLUGIN_NAME:Ljava/lang/String; = "plugin.notifications.v2"

.field private static final PLUGIN_VERSION:Ljava/lang/String; = "1.0.1"

.field private static final WARNING_MSG:Ljava/lang/String; = "WARNING: "

.field public static coronaRuntime:Lcom/ansca/corona/CoronaRuntime; = null

.field private static coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher; = null

.field private static functionSignature:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1

    .line 36
    sget-object v0, Lplugin/notifications/v2/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    sput-object p0, Lplugin/notifications/v2/LuaLoader;->functionSignature:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lplugin/notifications/v2/LuaLoader;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 140
    sget-object v0, Lplugin/notifications/v2/LuaLoader;->functionSignature:Ljava/lang/String;

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Corona"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendToBeacon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Lplugin/notifications/v2/LuaLoader$1;

    invoke-direct {v1, p0, p1, p2}, Lplugin/notifications/v2/LuaLoader$1;-><init>(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 210
    new-instance v1, Lplugin/notifications/v2/LuaLoader$RegisterForPushNotifications;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lplugin/notifications/v2/LuaLoader$RegisterForPushNotifications;-><init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lplugin/notifications/v2/LuaLoader$GetDeviceToken;

    invoke-direct {v1, p0, v2}, Lplugin/notifications/v2/LuaLoader$GetDeviceToken;-><init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lplugin/notifications/v2/LuaLoader$Subscribe;

    invoke-direct {v1, p0, v2}, Lplugin/notifications/v2/LuaLoader$Subscribe;-><init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lplugin/notifications/v2/LuaLoader$Unsubscribe;

    invoke-direct {v1, p0, v2}, Lplugin/notifications/v2/LuaLoader$Unsubscribe;-><init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;

    invoke-direct {v1, p0, v2}, Lplugin/notifications/v2/LuaLoader$ScheduleNotification;-><init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lplugin/notifications/v2/LuaLoader$CancelNotification;

    invoke-direct {v1, p0, v2}, Lplugin/notifications/v2/LuaLoader$CancelNotification;-><init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 218
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    return v3
.end method

.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    const/4 p1, 0x0

    .line 128
    sput-object p1, Lplugin/notifications/v2/LuaLoader;->coronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 129
    sput-object p1, Lplugin/notifications/v2/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    const-string p1, ""

    .line 130
    sput-object p1, Lplugin/notifications/v2/LuaLoader;->functionSignature:Ljava/lang/String;

    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 69
    sget-object v0, Lplugin/notifications/v2/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    sput-object v0, Lplugin/notifications/v2/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 71
    sput-object p1, Lplugin/notifications/v2/LuaLoader;->coronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    :cond_0
    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 113
    invoke-static {}, Lplugin/notifications/v2/NotificationsV2Helper;->checkForMessageData()V

    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 83
    invoke-static {}, Lplugin/notifications/v2/NotificationsV2Helper;->checkForMessageData()V

    const-string p1, "impression"

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lplugin/notifications/v2/LuaLoader;->sendToBeacon(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Corona"

    const-string v0, "plugin.notifications.v2: 1.0.1"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method
