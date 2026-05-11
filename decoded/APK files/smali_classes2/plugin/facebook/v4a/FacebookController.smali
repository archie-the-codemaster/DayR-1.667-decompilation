.class Lplugin/facebook/v4a/FacebookController;
.super Ljava/lang/Object;
.source "FacebookController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/facebook/v4a/FacebookController$LocationRequestPermissionsResultHandler;,
        Lplugin/facebook/v4a/FacebookController$FacebookRequestCallbackListener;,
        Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;
    }
.end annotation


# static fields
.field public static final DIALOG_CANCELLED_MSG:Ljava/lang/String; = "Dialog was cancelled by user."

.field public static final INVALID_PARAMS_SHOW_DIALOG_ERR_MSG:Ljava/lang/String; = ": Invalid parameters passed to facebook.showDialog( action [, params] )."

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field public static final NO_ACTIVITY_ERR_MSG:Ljava/lang/String; = ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

.field public static final NO_LUA_STATE_ERR_MSG:Ljava/lang/String; = ": the Lua state has died! Abort"

.field public static final NO_RUNTIME_ERR_MSG:Ljava/lang/String; = ": cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final Rtt_DEBUG:Z = true

.field private static final fbActivityResultHandler:Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;

.field private static final finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static initAlreadyDispatched:Z

.field private static final loginCallback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final requestCallback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">;"
        }
    .end annotation
.end field

.field private static sAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static sCallbackManager:Lcom/facebook/CallbackManager;

.field private static sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private static sInitListener:I

.field private static sLibRef:I

.field private static sListener:I

.field private static sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

.field private static sPlacesOrFriendsIntent:Landroid/content/Intent;

.field private static sRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

.field private static sShareDialog:Lcom/facebook/share/widget/ShareDialog;

.field private static final shareCallback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->getOtherPublishPermissions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lplugin/facebook/v4a/FacebookController;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 106
    new-instance v0, Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;-><init>(Lplugin/facebook/v4a/FacebookController$1;)V

    sput-object v0, Lplugin/facebook/v4a/FacebookController;->fbActivityResultHandler:Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lplugin/facebook/v4a/FacebookController;->finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    sput-boolean v1, Lplugin/facebook/v4a/FacebookController;->initAlreadyDispatched:Z

    .line 132
    new-instance v0, Lplugin/facebook/v4a/FacebookController$1;

    invoke-direct {v0}, Lplugin/facebook/v4a/FacebookController$1;-><init>()V

    sput-object v0, Lplugin/facebook/v4a/FacebookController;->loginCallback:Lcom/facebook/FacebookCallback;

    .line 176
    new-instance v0, Lplugin/facebook/v4a/FacebookController$2;

    invoke-direct {v0}, Lplugin/facebook/v4a/FacebookController$2;-><init>()V

    sput-object v0, Lplugin/facebook/v4a/FacebookController;->shareCallback:Lcom/facebook/FacebookCallback;

    .line 219
    new-instance v0, Lplugin/facebook/v4a/FacebookController$3;

    invoke-direct {v0}, Lplugin/facebook/v4a/FacebookController$3;-><init>()V

    sput-object v0, Lplugin/facebook/v4a/FacebookController;->requestCallback:Lcom/facebook/FacebookCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Lplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;J)V
    .locals 0

    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Lplugin/facebook/v4a/FacebookController;->dispatchLoginFBConnectTask(Ljava/lang/String;Lplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1000()Lcom/facebook/FacebookCallback;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->shareCallback:Lcom/facebook/FacebookCallback;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/facebook/share/widget/GameRequestDialog;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/facebook/share/widget/GameRequestDialog;)Lcom/facebook/share/widget/GameRequestDialog;
    .locals 0

    .line 90
    sput-object p0, Lplugin/facebook/v4a/FacebookController;->sRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/facebook/FacebookCallback;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->requestCallback:Lcom/facebook/FacebookCallback;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/facebook/AccessTokenTracker;)Lcom/facebook/AccessTokenTracker;
    .locals 0

    .line 90
    sput-object p0, Lplugin/facebook/v4a/FacebookController;->sAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/AccessToken;)V
    .locals 0

    .line 90
    invoke-static {p0}, Lplugin/facebook/v4a/FacebookController;->setPluginsLuaVariablesAsync(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-static {p0}, Lplugin/facebook/v4a/FacebookController;->dispatchFBInitEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/ansca/corona/CoronaRuntime;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 90
    sget v0, Lplugin/facebook/v4a/FacebookController;->sListener:I

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-static {p0, p1}, Lplugin/facebook/v4a/FacebookController;->dispatchLoginErrorFBConnectTask(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;)Z
    .locals 0

    .line 90
    invoke-static {p0}, Lplugin/facebook/v4a/FacebookController;->isShareAction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100()Landroid/content/Intent;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sPlacesOrFriendsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 90
    sput-object p0, Lplugin/facebook/v4a/FacebookController;->sPlacesOrFriendsIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$2200(Ljava/util/Hashtable;)Landroid/os/Bundle;
    .locals 0

    .line 90
    invoke-static {p0}, Lplugin/facebook/v4a/FacebookController;->createFacebookBundle(Ljava/util/Hashtable;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300()Lcom/ansca/corona/permissions/PermissionsServices;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    return-object v0
.end method

.method static synthetic access$2400()V
    .locals 0

    .line 90
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->requestLocationPermission()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 90
    invoke-static {p0, p1, p2, p3}, Lplugin/facebook/v4a/FacebookController;->dispatchDialogFBConnectTask(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .line 90
    sget v0, Lplugin/facebook/v4a/FacebookController;->sInitListener:I

    return v0
.end method

.method static synthetic access$600()Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->fbActivityResultHandler:Lplugin/facebook/v4a/FacebookController$FacebookActivityResultHandler;

    return-object v0
.end method

.method static synthetic access$700()Lcom/facebook/CallbackManager;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sCallbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;
    .locals 0

    .line 90
    sput-object p0, Lplugin/facebook/v4a/FacebookController;->sCallbackManager:Lcom/facebook/CallbackManager;

    return-object p0
.end method

.method static synthetic access$800()Lcom/facebook/FacebookCallback;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->loginCallback:Lcom/facebook/FacebookCallback;

    return-object v0
.end method

.method static synthetic access$900()Lcom/facebook/share/widget/ShareDialog;
    .locals 1

    .line 90
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sShareDialog:Lcom/facebook/share/widget/ShareDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/facebook/share/widget/ShareDialog;)Lcom/facebook/share/widget/ShareDialog;
    .locals 0

    .line 90
    sput-object p0, Lplugin/facebook/v4a/FacebookController;->sShareDialog:Lcom/facebook/share/widget/ShareDialog;

    return-object p0
.end method

.method private static createFacebookBundle(Ljava/util/Hashtable;)Landroid/os/Bundle;
    .locals 7

    .line 426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_5

    .line 430
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 431
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 433
    new-instance v2, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v2, v1}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 436
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 438
    instance-of v4, v1, Ljava/io/File;

    if-eqz v4, :cond_1

    .line 439
    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ansca/corona/storage/FileServices;->getBytesFromFile(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 443
    :cond_1
    instance-of v4, v1, [B

    if-eqz v4, :cond_2

    .line 444
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 445
    :cond_2
    instance-of v4, v1, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 446
    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    .line 449
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 451
    invoke-virtual {v2, v5}, Lcom/ansca/corona/storage/FileServices;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    .line 453
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v4, 0x1

    :cond_4
    if-nez v4, :cond_0

    .line 459
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static createLuaTableFromStringArray([Ljava/lang/String;)I
    .locals 5

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.createLuaTableFromStringArray()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERROR: "

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot create a lua table from a null array! Please pass in a non-null string array."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 405
    :cond_0
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->fetchLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v4

    if-nez v4, :cond_1

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": the Lua state has died! Abort"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 411
    :cond_1
    array-length v0, p0

    invoke-virtual {v4, v0, v3}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 412
    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_2

    .line 414
    aget-object v0, p0, v3

    invoke-virtual {v4, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    add-int/lit8 v3, v3, 0x1

    .line 418
    invoke-virtual {v4, v0, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static dispatchDialogFBConnectTask(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 340
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p0

    new-instance v0, Lplugin/facebook/v4a/FBConnectTask;

    sget v1, Lplugin/facebook/v4a/FacebookController;->sListener:I

    invoke-direct {v0, v1, p1, p2, p3}, Lplugin/facebook/v4a/FBConnectTask;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 346
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Corona"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static dispatchFBInitEvent(Ljava/lang/String;)V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: FacebookController.dispatchFBInitEvent(); from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; sCoronaRuntime: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; sInitListener: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lplugin/facebook/v4a/FacebookController;->sInitListener:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; initAlreadyDispatched: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lplugin/facebook/v4a/FacebookController;->initAlreadyDispatched:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Corona"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-boolean p0, Lplugin/facebook/v4a/FacebookController;->initAlreadyDispatched:Z

    if-nez p0, :cond_0

    .line 279
    sget-object p0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p0, :cond_0

    sget v0, Lplugin/facebook/v4a/FacebookController;->sInitListener:I

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p0

    new-instance v0, Lplugin/facebook/v4a/FacebookController$4;

    invoke-direct {v0}, Lplugin/facebook/v4a/FacebookController$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    const/4 p0, 0x1

    .line 301
    sput-boolean p0, Lplugin/facebook/v4a/FacebookController;->initAlreadyDispatched:Z

    :cond_0
    return-void
.end method

.method private static dispatchLoginErrorFBConnectTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 326
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p0

    new-instance v0, Lplugin/facebook/v4a/FBConnectTask;

    sget v1, Lplugin/facebook/v4a/FacebookController;->sListener:I

    invoke-direct {v0, v1, p1}, Lplugin/facebook/v4a/FBConnectTask;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 331
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Corona"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static dispatchLoginFBConnectTask(Ljava/lang/String;Lplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;J)V
    .locals 7

    .line 311
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p0

    new-instance v6, Lplugin/facebook/v4a/FBConnectTask;

    sget v1, Lplugin/facebook/v4a/FacebookController;->sListener:I

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lplugin/facebook/v4a/FBConnectTask;-><init>(ILplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;J)V

    invoke-virtual {p0, v6}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Corona"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static enumValueOfIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 385
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static facebookDialog(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5

    const-string v0, "Corona"

    const-string v1, "++++++++++: FacebookController.facebookDialog()"

    .line 1320
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "ERROR: FacebookController.facebookDialog(): cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    .line 1325
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1331
    :cond_0
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->fetchLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v4, ""

    .line 1332
    invoke-static {v2, v3, v4}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1333
    invoke-static {v2, v3}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string p0, "ERROR: FacebookController.facebookDialog(): the Lua state has died! Abort"

    .line 1335
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1342
    :cond_2
    :goto_0
    new-instance v0, Lplugin/facebook/v4a/FacebookController$10;

    invoke-direct {v0, p0, p1, v1, v3}, Lplugin/facebook/v4a/FacebookController$10;-><init>(Ljava/lang/String;Ljava/util/Hashtable;Lcom/ansca/corona/CoronaActivity;I)V

    invoke-virtual {v1, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static facebookDisableLoggingBehaviors([Ljava/lang/String;)V
    .locals 4

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.facebookDisableLoggingBehaviors()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 951
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Can\'t set logging behaviors to null! Be sure to pass in an initialized array of logging behaviors."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 953
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 955
    invoke-static {}, Lcom/facebook/FacebookSdk;->clearLoggingBehaviors()V

    .line 956
    invoke-static {v2}, Lcom/facebook/FacebookSdk;->setIsDebugEnabled(Z)V

    goto :goto_2

    .line 962
    :cond_1
    invoke-static {p0, v1}, Lplugin/facebook/v4a/FacebookController;->loggingBehaviorFilter([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 965
    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v1, p0, v2

    .line 968
    sget-object v3, Lplugin/facebook/v4a/FacebookController$11;->$SwitchMap$plugin$facebook$v4a$LuaFBLoggingBehavior:[I

    invoke-static {v1}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->valueOf(Ljava/lang/String;)Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 985
    :pswitch_0
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 986
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 982
    :pswitch_1
    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 979
    :pswitch_2
    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 976
    :pswitch_3
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 973
    :pswitch_4
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 970
    :pswitch_5
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    :goto_1
    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static facebookEnableLoggingBehaviors([Ljava/lang/String;)V
    .locals 4

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.facebookEnableLoggingBehaviors()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 1007
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Can\'t set logging behaviors to null! Be sure to pass in an initialized array of logging behaviors."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1009
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    .line 1011
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->setIsDebugEnabled(Z)V

    .line 1014
    sget-object p0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 1015
    sget-object p0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 1016
    sget-object p0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 1017
    sget-object p0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 1018
    sget-object p0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 1019
    sget-object p0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 1020
    sget-object p0, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_2

    .line 1026
    :cond_1
    invoke-static {p0, v1}, Lplugin/facebook/v4a/FacebookController;->loggingBehaviorFilter([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1029
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 1032
    sget-object v3, Lplugin/facebook/v4a/FacebookController$11;->$SwitchMap$plugin$facebook$v4a$LuaFBLoggingBehavior:[I

    invoke-static {v2}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->valueOf(Ljava/lang/String;)Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1049
    :pswitch_0
    sget-object v2, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 1050
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 1046
    :pswitch_1
    sget-object v2, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 1043
    :pswitch_2
    sget-object v2, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 1040
    :pswitch_3
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 1037
    :pswitch_4
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    goto :goto_1

    .line 1034
    :pswitch_5
    sget-object v2, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    :goto_1
    :pswitch_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static facebookGetCurrentAccessToken()I
    .locals 6

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.facebookGetCurrentAccessToken()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->fetchLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": the Lua state has died! Abort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1076
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    .line 1079
    invoke-virtual {v0, v3, v2}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 1082
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v2, -0x2

    const-string v3, "token"

    .line 1083
    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1086
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lplugin/facebook/v4a/FacebookController;->toSecondsFromMilliseconds(J)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v3, "expiration"

    .line 1087
    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1090
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lplugin/facebook/v4a/FacebookController;->toSecondsFromMilliseconds(J)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v3, "lastRefreshed"

    .line 1091
    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1094
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v3, "appId"

    .line 1095
    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1098
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v3, "userId"

    .line 1099
    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1102
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1103
    array-length v4, v3

    const-class v5, [Ljava/lang/String;

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Lplugin/facebook/v4a/FacebookController;->createLuaTableFromStringArray([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "grantedPermissions"

    .line 1108
    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1113
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 1114
    array-length v3, v1

    const-class v4, [Ljava/lang/String;

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lplugin/facebook/v4a/FacebookController;->createLuaTableFromStringArray([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "declinedPermissions"

    .line 1119
    invoke-virtual {v0, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_2
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static facebookInit(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5

    const-string v0, "Corona"

    const-string v1, "++++++++++: FacebookController.facebookInit()"

    .line 821
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "++++++++++: setting finishedFBSDKInit = false"

    .line 825
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sget-object v1, Lplugin/facebook/v4a/FacebookController;->finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 827
    sput-boolean v2, Lplugin/facebook/v4a/FacebookController;->initAlreadyDispatched:Z

    .line 829
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "ERROR: FacebookController.facebookInit(): cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    .line 831
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 834
    :cond_0
    new-instance v3, Lcom/ansca/corona/permissions/PermissionsServices;

    .line 835
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    sput-object v3, Lplugin/facebook/v4a/FacebookController;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    .line 836
    invoke-static {v1}, Lplugin/facebook/v4a/FacebookController;->verifySetup(Lcom/ansca/corona/CoronaActivity;)V

    if-nez p0, :cond_1

    const-string p0, "ERROR: FacebookController.facebookInit(): cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

    .line 840
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 843
    :cond_1
    sput-object p0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 847
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->fetchLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "ERROR: FacebookController.facebookInit(): the Lua state has died! Abort"

    .line 849
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, -0x1

    .line 853
    invoke-static {p0, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v0

    sput v0, Lplugin/facebook/v4a/FacebookController;->sLibRef:I

    const-string v0, ""

    .line 854
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    const-string v3, "currentAccessToken"

    .line 855
    invoke-virtual {p0, v0, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 857
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v2, "isActive"

    .line 858
    invoke-virtual {p0, v0, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 861
    new-instance p0, Lplugin/facebook/v4a/FacebookController$8;

    invoke-direct {p0, v1}, Lplugin/facebook/v4a/FacebookController$8;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {v1, p0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static facebookIsFacebookAppEnabled()Z
    .locals 4

    .line 1138
    new-instance v0, Lcom/ansca/corona/storage/PackageServices;

    .line 1139
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/storage/PackageServices;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const-string v2, "com.facebook.katana"

    .line 1140
    invoke-virtual {v0, v2, v1}, Lcom/ansca/corona/storage/PackageServices;->getPackageState(Ljava/lang/String;I)Lcom/ansca/corona/storage/PackageState;

    move-result-object v2

    const-string v3, "com.facebook.lite"

    .line 1142
    invoke-virtual {v0, v3, v1}, Lcom/ansca/corona/storage/PackageServices;->getPackageState(Ljava/lang/String;I)Lcom/ansca/corona/storage/PackageState;

    move-result-object v0

    .line 1145
    sget-object v3, Lcom/ansca/corona/storage/PackageState;->ENABLED:Lcom/ansca/corona/storage/PackageState;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/ansca/corona/storage/PackageState;->ENABLED:Lcom/ansca/corona/storage/PackageState;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static facebookLogin([Ljava/lang/String;)V
    .locals 3

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.facebookLogin()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 1160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Can\'t set permissions to null! Be sure to pass in an initialized array of permissions."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1162
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1163
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->loginWithOnlyRequiredPermissions()V

    goto :goto_0

    .line 1166
    :cond_1
    invoke-static {p0}, Lplugin/facebook/v4a/FacebookController;->requestPermissions([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static facebookLogout()V
    .locals 5

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.facebookLogout()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 1210
    sget-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->logout:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lplugin/facebook/v4a/FacebookController;->dispatchLoginFBConnectTask(Ljava/lang/String;Lplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;J)V

    return-void
.end method

.method public static facebookRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 10

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.facebookRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    const-string v0, "ERROR: "

    if-eqz v4, :cond_2

    .line 1229
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1236
    :cond_0
    invoke-static {p1}, Lcom/facebook/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;

    move-result-object v3

    .line 1237
    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    if-eq v3, v5, :cond_1

    .line 1240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": only supports HttpMethods GET, POST, and DELETE! Cancelling request."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1246
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1249
    invoke-static {p2}, Lplugin/facebook/v4a/FacebookController;->createFacebookBundle(Ljava/util/Hashtable;)Landroid/os/Bundle;

    move-result-object v6

    .line 1250
    invoke-static {p1}, Lcom/facebook/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;

    move-result-object v7

    new-instance v8, Lplugin/facebook/v4a/FacebookController$FacebookRequestCallbackListener;

    const/4 p1, 0x0

    invoke-direct {v8, p1}, Lplugin/facebook/v4a/FacebookController$FacebookRequestCallbackListener;-><init>(Lplugin/facebook/v4a/FacebookController$1;)V

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 1254
    new-instance p0, Lplugin/facebook/v4a/FacebookController$9;

    invoke-direct {p0, v0}, Lplugin/facebook/v4a/FacebookController$9;-><init>(Lcom/facebook/GraphRequest;)V

    invoke-virtual {v9, p0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1263
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": cannot process a Graph API request without being logged in. Please call facebook.login() before calling facebook.request()."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static fetchLuaState()Lcom/naef/jnlua/LuaState;
    .locals 5

    .line 364
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const-string v1, "Corona"

    const-string v2, "FacebookController.fetchLuaState()"

    if-eqz v0, :cond_0

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++++++: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOtherPublishPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Lplugin/facebook/v4a/FacebookController$6;

    invoke-direct {v0}, Lplugin/facebook/v4a/FacebookController$6;-><init>()V

    .line 581
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadSignature()Ljava/lang/String;
    .locals 8

    .line 1692
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 1694
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1695
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v4

    int-to-long v4, v4

    .line 1696
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (id:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", group: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isLoggingBehavior(Ljava/lang/String;)Z
    .locals 0

    .line 708
    invoke-static {p0}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isPublishPermission(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 570
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 571
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lplugin/facebook/v4a/FacebookController;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 572
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isShareAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "feed"

    .line 677
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "link"

    .line 678
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photo"

    .line 679
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video"

    .line 680
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "openGraph"

    .line 681
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static logThreadSignature(Ljava/lang/String;)V
    .locals 1

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->getThreadSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Corona"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loggingBehaviorFilter([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 717
    array-length v2, p0

    if-eqz v2, :cond_1

    .line 718
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 719
    invoke-static {v4}, Lplugin/facebook/v4a/FacebookController;->isLoggingBehavior(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 722
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": detected an invalid logging behavior "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". This behavior will be filtered out."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Corona"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    .line 730
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static loginWithOnlyRequiredPermissions()V
    .locals 5

    .line 557
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.loginWithOnlyRequiredPermissions()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Corona"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 564
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "public_profile"

    aput-object v4, v2, v3

    .line 565
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 564
    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method public static publishInstall()V
    .locals 4

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.publishInstall()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1656
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    return-void
.end method

.method private static requestLocationPermission()V
    .locals 4

    .line 689
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    .line 691
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    sput-object v0, Lplugin/facebook/v4a/FacebookController;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    .line 694
    :cond_0
    sget-object v0, Lplugin/facebook/v4a/FacebookController;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    const-string v1, "android.permission-group.LOCATION"

    .line 695
    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 698
    sget-object v1, Lplugin/facebook/v4a/FacebookController;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    new-instance v2, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v2, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>([Ljava/lang/String;)V

    new-instance v0, Lplugin/facebook/v4a/FacebookController$LocationRequestPermissionsResultHandler;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lplugin/facebook/v4a/FacebookController$LocationRequestPermissionsResultHandler;-><init>(Lplugin/facebook/v4a/FacebookController$1;)V

    invoke-virtual {v1, v2, v0}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    return-void
.end method

.method private static requestPermissions([Ljava/lang/String;)V
    .locals 10

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.requestPermissions()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERROR: "

    if-nez p0, :cond_0

    .line 590
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Permissions held by this app are null. Be sure to provide at least an empty permission list to facebook.login() before requesting permissions."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 599
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 601
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    .line 602
    :goto_0
    array-length v8, p0

    if-ge v7, v8, :cond_3

    .line 603
    aget-object v8, p0, v7

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 604
    aput-object v4, p0, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 607
    :cond_2
    array-length v6, p0

    if-nez v6, :cond_3

    .line 609
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->loginWithOnlyRequiredPermissions()V

    .line 613
    :cond_3
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 614
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/4 v8, 0x0

    .line 616
    :goto_1
    array-length v9, p0

    if-ge v8, v9, :cond_6

    .line 617
    aget-object v9, p0, v8

    if-eqz v9, :cond_5

    .line 618
    aget-object v9, p0, v8

    invoke-static {v9}, Lplugin/facebook/v4a/FacebookController;->isPublishPermission(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 619
    aget-object v9, p0, v8

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 621
    :cond_4
    aget-object v9, p0, v8

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :goto_2
    aput-object v4, p0, v8

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string v4, "public_profile"

    aput-object v4, p0, v5

    .line 630
    array-length v4, p0

    :goto_3
    if-ge v5, v4, :cond_9

    aget-object v8, p0, v5

    .line 634
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v3, :cond_7

    .line 636
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 637
    :cond_7
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 641
    :cond_9
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p0

    if-nez p0, :cond_a

    .line 643
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 648
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 651
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": cannot process read and publish permissions at the same time. Only the read permissions will be requested."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_b
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_4

    .line 657
    :cond_c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 658
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_4

    :cond_d
    if-nez v3, :cond_e

    .line 662
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->loginWithOnlyRequiredPermissions()V

    goto :goto_4

    .line 666
    :cond_e
    sget-object p0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->login:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    .line 667
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 666
    invoke-static {v1, p0, v0, v2, v3}, Lplugin/facebook/v4a/FacebookController;->dispatchLoginFBConnectTask(Ljava/lang/String;Lplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;J)V

    :goto_4
    return-void
.end method

.method public static setFBConnectListener(I)V
    .locals 0

    .line 1664
    sput p0, Lplugin/facebook/v4a/FacebookController;->sListener:I

    return-void
.end method

.method public static setFBInitListener(I)V
    .locals 2

    const-string v0, "Corona"

    const-string v1, "++++++++++: FacebookController.setFBInitListener()"

    .line 1674
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    sput p0, Lplugin/facebook/v4a/FacebookController;->sInitListener:I

    .line 1678
    sget v1, Lplugin/facebook/v4a/FacebookController;->sListener:I

    if-eq v1, p0, :cond_0

    .line 1679
    sput p0, Lplugin/facebook/v4a/FacebookController;->sListener:I

    .line 1683
    :cond_0
    sget-object p0, Lplugin/facebook/v4a/FacebookController;->finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "++++++++++: FacebookController.setFBInitListener(): already initialized"

    .line 1684
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "FacebookController.setFBInitListener()"

    .line 1686
    invoke-static {p0}, Lplugin/facebook/v4a/FacebookController;->dispatchFBInitEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setPluginsLuaVariables(Lcom/facebook/AccessToken;)V
    .locals 7

    .line 738
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->fetchLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 742
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    const/16 v2, -0x2710

    .line 743
    sget v3, Lplugin/facebook/v4a/FacebookController;->sLibRef:I

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    const/4 v2, -0x1

    .line 745
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    sget-object v4, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    const-string v5, "\""

    const-string v6, "Corona"

    if-ne v3, v4, :cond_2

    if-nez p0, :cond_0

    .line 752
    sget-object v2, Lplugin/facebook/v4a/FacebookController;->finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 757
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 760
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++++++: setPluginsLuaVariables setting currentAccessToken = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v0, p0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p0, -0x2

    const-string v2, "currentAccessToken"

    .line 763
    invoke-virtual {v0, p0, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++++++: setPluginsLuaVariables setting isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lplugin/facebook/v4a/FacebookController;->finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sget-object v2, Lplugin/facebook/v4a/FacebookController;->finishedFBSDKInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v2, "isActive"

    .line 767
    invoke-virtual {v0, p0, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_1

    .line 774
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FacebookController.setPluginsLuaVariables(): expected TABLE but found "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object p0

    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-eq p0, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object p0

    sget-object v3, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne p0, v3, :cond_4

    .line 776
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FacebookController.setPluginsLuaVariables(): with value \""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    :cond_5
    return-void
.end method

.method private static setPluginsLuaVariablesAsync(Lcom/facebook/AccessToken;)V
    .locals 2

    .line 788
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    new-instance v1, Lplugin/facebook/v4a/FacebookController$7;

    invoke-direct {v1, p0}, Lplugin/facebook/v4a/FacebookController$7;-><init>(Lcom/facebook/AccessToken;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method

.method private static toSecondsFromMilliseconds(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 376
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static verifySetup(Lcom/ansca/corona/CoronaActivity;)V
    .locals 5

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FacebookController.verifySetup()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Corona"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const-string v3, "android.permission.INTERNET"

    .line 477
    invoke-virtual {p0, v3, v0}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 488
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 490
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.ApplicationId"

    .line 491
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++++++: facebookAppId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 493
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lplugin/facebook/v4a/FacebookController$5;

    invoke-direct {v4, p0, v0}, Lplugin/facebook/v4a/FacebookController$5;-><init>(Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": error looking for Facebook App ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
