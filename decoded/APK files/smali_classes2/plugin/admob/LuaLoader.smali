.class public Lplugin/admob/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;,
        Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;,
        Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;,
        Lplugin/admob/LuaLoader$CoronaAdmobDelegate;,
        Lplugin/admob/LuaLoader$Height;,
        Lplugin/admob/LuaLoader$Hide;,
        Lplugin/admob/LuaLoader$Show;,
        Lplugin/admob/LuaLoader$SetVideoAdVolume;,
        Lplugin/admob/LuaLoader$IsLoaded;,
        Lplugin/admob/LuaLoader$Load;,
        Lplugin/admob/LuaLoader$Init;,
        Lplugin/admob/LuaLoader$BeaconListener;
    }
.end annotation


# static fields
.field private static final ALIGN_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final ALIGN_TOP:Ljava/lang/String; = "top"

.field private static final CORONA_TAG:Ljava/lang/String; = "Corona"

.field private static final DATA_ADUNIT_ID_KEY:Ljava/lang/String; = "adUnitId"

.field private static final DATA_ERRORCODE_KEY:Ljava/lang/String; = "errorCode"

.field private static final DATA_ERRORMSG_KEY:Ljava/lang/String; = "errorMsg"

.field private static final ERROR_MSG:Ljava/lang/String; = "ERROR: "

.field private static final EVENT_DATA_KEY:Ljava/lang/String; = "data"

.field private static final EVENT_NAME:Ljava/lang/String; = "adsRequest"

.field private static final EVENT_PHASE_KEY:Ljava/lang/String; = "phase"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final HAS_RECEIVED_INIT_EVENT_KEY:Ljava/lang/String; = "hasReceivedInitEvent"

.field private static final PHASE_CLICKED:Ljava/lang/String; = "clicked"

.field private static final PHASE_CLOSED:Ljava/lang/String; = "closed"

.field private static final PHASE_DISPLAYED:Ljava/lang/String; = "displayed"

.field private static final PHASE_FAILED:Ljava/lang/String; = "failed"

.field private static final PHASE_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final PHASE_INIT:Ljava/lang/String; = "init"

.field private static final PHASE_LOADED:Ljava/lang/String; = "loaded"

.field private static final PHASE_REFRESHED:Ljava/lang/String; = "refreshed"

.field private static final PHASE_REWARD:Ljava/lang/String; = "reward"

.field private static final PLUGIN_NAME:Ljava/lang/String; = "plugin.admob"

.field private static final PLUGIN_SDK_VERSION:Ljava/lang/String;

.field private static final PLUGIN_VERSION:Ljava/lang/String; = "1.2.6"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "admob"

.field private static final RESPONSE_LOAD_FAILED:Ljava/lang/String; = "loadFailed"

.field private static final REWARD_AMOUNT:Ljava/lang/String; = "rewardAmount"

.field private static final REWARD_ITEM:Ljava/lang/String; = "rewardItem"

.field private static final TESTMODE_KEY:Ljava/lang/String; = "testMode"

.field private static final TEST_DEVICE_KEY:Ljava/lang/String; = "testDevice"

.field private static final TYPE_BANNER:Ljava/lang/String; = "banner"

.field private static final TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field private static final TYPE_REWARDEDVIDEO:Ljava/lang/String; = "rewardedVideo"

.field private static final WARNING_MSG:Ljava/lang/String; = "WARNING: "

.field private static final Y_RATIO_KEY:Ljava/lang/String; = "yRatio"

.field private static final admobObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static coronaListener:I

.field private static coronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private static coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private static functionSignature:Ljava/lang/String;

.field private static final validAdTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lplugin/admob/LuaLoader;->PLUGIN_SDK_VERSION:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lplugin/admob/LuaLoader;->validAdTypes:Ljava/util/List;

    const-string v0, ""

    .line 126
    sput-object v0, Lplugin/admob/LuaLoader;->functionSignature:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lplugin/admob/LuaLoader;->admobObjects:Ljava/util/Map;

    const/4 v0, -0x1

    .line 135
    sput v0, Lplugin/admob/LuaLoader;->coronaListener:I

    const/4 v0, 0x0

    .line 137
    sput-object v0, Lplugin/admob/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1

    .line 72
    sget-object v0, Lplugin/admob/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 0

    .line 72
    sput-object p0, Lplugin/admob/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object p0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    sput-object p0, Lplugin/admob/LuaLoader;->functionSignature:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lplugin/admob/LuaLoader;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lplugin/admob/LuaLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lplugin/admob/LuaLoader;->PLUGIN_SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader;->dispatchLuaEvent(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1700(Lplugin/admob/LuaLoader;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lplugin/admob/LuaLoader;->isSDKInitialized()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lplugin/admob/LuaLoader;->sendToBeacon(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 72
    sget-object v0, Lplugin/admob/LuaLoader;->admobObjects:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 72
    sget v0, Lplugin/admob/LuaLoader;->coronaListener:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    .line 72
    sput p0, Lplugin/admob/LuaLoader;->coronaListener:I

    return p0
.end method

.method static synthetic access$900()Ljava/util/List;
    .locals 1

    .line 72
    sget-object v0, Lplugin/admob/LuaLoader;->validAdTypes:Ljava/util/List;

    return-object v0
.end method

.method private dispatchLuaEvent(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 406
    sget-object v0, Lplugin/admob/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz v0, :cond_0

    .line 407
    new-instance v1, Lplugin/admob/LuaLoader$4;

    invoke-direct {v1, p0, p1}, Lplugin/admob/LuaLoader$4;-><init>(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method

.method private isSDKInitialized()Z
    .locals 4

    .line 391
    sget v0, Lplugin/admob/LuaLoader;->coronaListener:I

    const/4 v1, 0x0

    const-string v2, "ERROR: "

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, "admob.init() must be called before calling other API functions"

    .line 392
    invoke-direct {p0, v2, v0}, Lplugin/admob/LuaLoader;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 396
    :cond_0
    sget-object v0, Lplugin/admob/LuaLoader;->admobObjects:Ljava/util/Map;

    const-string v3, "hasReceivedInitEvent"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "You must wait for the \'init\' event before calling other API functions"

    .line 397
    invoke-direct {p0, v2, v0}, Lplugin/admob/LuaLoader;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private logMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 381
    sget-object v0, Lplugin/admob/LuaLoader;->functionSignature:Ljava/lang/String;

    .line 382
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
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

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    .line 356
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 358
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 360
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 361
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 362
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Corona"

    const-string v0, "Can\'t generate md5 hash"

    .line 372
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method private sendToBeacon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 462
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    new-instance v1, Lplugin/admob/LuaLoader$5;

    invoke-direct {v1, p0, p1, p2}, Lplugin/admob/LuaLoader$5;-><init>(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 172
    new-instance v1, Lplugin/admob/LuaLoader$Init;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lplugin/admob/LuaLoader$Init;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lplugin/admob/LuaLoader$Load;

    invoke-direct {v1, p0, v2}, Lplugin/admob/LuaLoader$Load;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lplugin/admob/LuaLoader$IsLoaded;

    invoke-direct {v1, p0, v2}, Lplugin/admob/LuaLoader$IsLoaded;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lplugin/admob/LuaLoader$Show;

    invoke-direct {v1, p0, v2}, Lplugin/admob/LuaLoader$Show;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lplugin/admob/LuaLoader$Hide;

    invoke-direct {v1, p0, v2}, Lplugin/admob/LuaLoader$Hide;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lplugin/admob/LuaLoader$Height;

    invoke-direct {v1, p0, v2}, Lplugin/admob/LuaLoader$Height;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lplugin/admob/LuaLoader$SetVideoAdVolume;

    invoke-direct {v1, p0, v2}, Lplugin/admob/LuaLoader$SetVideoAdVolume;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 181
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    return v3
.end method

.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 308
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v1, Lplugin/admob/LuaLoader$3;

    invoke-direct {v1, p0, v0, p1}, Lplugin/admob/LuaLoader$3;-><init>(Lplugin/admob/LuaLoader;Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaRuntime;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 202
    sget-object v0, Lplugin/admob/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    sput-object v0, Lplugin/admob/LuaLoader;->coronaRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 204
    sput-object p1, Lplugin/admob/LuaLoader;->coronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 207
    sget-object p1, Lplugin/admob/LuaLoader;->validAdTypes:Ljava/util/List;

    const-string v0, "interstitial"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object p1, Lplugin/admob/LuaLoader;->validAdTypes:Ljava/util/List;

    const-string v0, "rewardedVideo"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object p1, Lplugin/admob/LuaLoader;->validAdTypes:Ljava/util/List;

    const-string v0, "banner"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object p1, Lplugin/admob/LuaLoader;->admobObjects:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hasReceivedInitEvent"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 270
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    new-instance v0, Lplugin/admob/LuaLoader$2;

    invoke-direct {v0, p0, p1}, Lplugin/admob/LuaLoader$2;-><init>(Lplugin/admob/LuaLoader;Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 235
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    new-instance v0, Lplugin/admob/LuaLoader$1;

    invoke-direct {v0, p0, p1}, Lplugin/admob/LuaLoader$1;-><init>(Lplugin/admob/LuaLoader;Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
