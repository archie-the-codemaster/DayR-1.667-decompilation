.class public Lplugin/facebook/v4a/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/facebook/v4a/LuaLoader$GetSDKVersionWrapper;,
        Lplugin/facebook/v4a/LuaLoader$ShowDialogWrapper;,
        Lplugin/facebook/v4a/LuaLoader$SetFBConnectListenerWrapper;,
        Lplugin/facebook/v4a/LuaLoader$RequestWrapper;,
        Lplugin/facebook/v4a/LuaLoader$PublishInstallWrapper;,
        Lplugin/facebook/v4a/LuaLoader$NewLikeButtonWrapper;,
        Lplugin/facebook/v4a/LuaLoader$LogoutWrapper;,
        Lplugin/facebook/v4a/LuaLoader$LoginWrapper;,
        Lplugin/facebook/v4a/LuaLoader$InitWrapper;,
        Lplugin/facebook/v4a/LuaLoader$IsFacebookAppEnabledWrapper;,
        Lplugin/facebook/v4a/LuaLoader$GetCurrentAccessTokenWrapper;,
        Lplugin/facebook/v4a/LuaLoader$EnableLoggingBehaviorsWrapper;,
        Lplugin/facebook/v4a/LuaLoader$DisableLoggingBehaviorsWrapper;
    }
.end annotation


# static fields
.field private static final APP_ID_ERR_MSG:Ljava/lang/String; = ": appId is no longer a required argument. This argument will be ignored."

.field private static final Rtt_DEBUG:Z = true


# instance fields
.field private mRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v1, "ERROR: LuaLoader(): cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1200(Lplugin/facebook/v4a/LuaLoader;Lcom/naef/jnlua/LuaState;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lplugin/facebook/v4a/LuaLoader;->processLoggingBehaviorsFromLua(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private processLoggingBehaviorsFromLua(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    .line 93
    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_0

    .line 96
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_0
    sget-object v3, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_1

    .line 101
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result p2

    const/4 v2, 0x1

    :goto_0
    if-gt v2, p2, :cond_2

    .line 103
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    const/4 v3, -0x1

    .line 104
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": cannot accept arguments other than a String or a Table. Aborting!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Corona"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 115
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 58
    invoke-static {p1}, Lcom/ansca/corona/CoronaRuntimeProvider;->getRuntimeByLuaState(Lcom/naef/jnlua/LuaState;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    iput-object v0, p0, Lplugin/facebook/v4a/LuaLoader;->mRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 60
    new-instance v1, Lplugin/facebook/v4a/LuaLoader$DisableLoggingBehaviorsWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$DisableLoggingBehaviorsWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$EnableLoggingBehaviorsWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$EnableLoggingBehaviorsWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$GetCurrentAccessTokenWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$GetCurrentAccessTokenWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$IsFacebookAppEnabledWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$IsFacebookAppEnabledWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$InitWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$InitWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$LoginWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$LoginWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$LogoutWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$LogoutWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$PublishInstallWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$PublishInstallWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$RequestWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$RequestWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$SetFBConnectListenerWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$SetFBConnectListenerWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$ShowDialogWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$ShowDialogWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebook/v4a/LuaLoader$GetSDKVersionWrapper;

    invoke-direct {v1, p0, v2}, Lplugin/facebook/v4a/LuaLoader$GetSDKVersionWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 76
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========= Calling FacebookController.facebookInit(): L: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; mRuntime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lplugin/facebook/v4a/LuaLoader;->mRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Corona"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lplugin/facebook/v4a/LuaLoader;->mRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {p1}, Lplugin/facebook/v4a/FacebookController;->facebookInit(Lcom/ansca/corona/CoronaRuntime;)V

    return v3
.end method
