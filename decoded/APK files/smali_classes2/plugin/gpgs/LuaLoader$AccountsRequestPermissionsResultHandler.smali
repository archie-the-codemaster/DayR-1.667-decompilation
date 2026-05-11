.class Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsRequestPermissionsResultHandler"
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/gpgs/LuaLoader;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->this$0:Lplugin/gpgs/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/gpgs/LuaLoader;Lplugin/gpgs/LuaLoader$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;-><init>(Lplugin/gpgs/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public handleRun(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 511
    iput-object p1, p0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->name:Ljava/lang/String;

    .line 512
    iput-object p2, p0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->luaListener:Ljava/lang/Integer;

    .line 513
    new-instance p1, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 515
    sget-object p2, Lplugin/gpgs/LuaLoader$3;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v0}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 530
    invoke-virtual {p0}, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->run()V

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ansca/corona/permissions/PermissionsServices;->shouldNeverAskAgain(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 524
    new-instance p2, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {p2, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1, p2, p0}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    goto :goto_0

    :cond_1
    const-string p2, "plugin.gpgs.getAccountName() requires GET_ACCOUNTS permission."

    .line 520
    invoke-virtual {p1, v0, p2}, Lcom/ansca/corona/permissions/PermissionsServices;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 536
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 538
    invoke-virtual {p2}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    .line 540
    :cond_0
    new-instance p2, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {p2, p1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string p1, "android.permission.GET_ACCOUNTS"

    .line 541
    invoke-virtual {p2, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object p1

    sget-object p2, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne p1, p2, :cond_1

    .line 542
    invoke-virtual {p0}, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->run()V

    goto :goto_0

    .line 544
    :cond_1
    iget-object p1, p0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->name:Ljava/lang/String;

    invoke-static {p1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    const/4 p2, 0x1

    .line 545
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "isError"

    invoke-virtual {p1, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "errorCode"

    invoke-virtual {p1, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "errorMessage"

    const-string p4, "Permission denied."

    .line 547
    invoke-virtual {p1, p3, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object p3, p0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->luaListener:Ljava/lang/Integer;

    invoke-static {p3, p1, p2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 554
    sget-object v0, Lplugin/gpgs/Connector;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->getCurrentAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->name:Ljava/lang/String;

    invoke-static {v1}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    const/4 v2, 0x0

    .line 556
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isError"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "accountName"

    .line 557
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lplugin/gpgs/LuaLoader$AccountsRequestPermissionsResultHandler;->luaListener:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
