.class public Lplugin/facebookAnalytics/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/facebookAnalytics/LuaLoader$logEvent;,
        Lplugin/facebookAnalytics/LuaLoader$logPurchase;,
        Lplugin/facebookAnalytics/LuaLoader$setUserProperties;,
        Lplugin/facebookAnalytics/LuaLoader$debug;,
        Lplugin/facebookAnalytics/LuaLoader$setUserID;,
        Lplugin/facebookAnalytics/LuaLoader$limitEventUsage;,
        Lplugin/facebookAnalytics/LuaLoader$init;
    }
.end annotation


# instance fields
.field private fListener:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lplugin/facebookAnalytics/LuaLoader;->fListener:I

    .line 52
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    return-void
.end method

.method static getStringFrom(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x2

    .line 149
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    .line 150
    sget-object v1, Lplugin/facebookAnalytics/LuaLoader$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 69
    new-instance v1, Lplugin/facebookAnalytics/LuaLoader$init;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lplugin/facebookAnalytics/LuaLoader$init;-><init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lplugin/facebookAnalytics/LuaLoader$logEvent;

    invoke-direct {v1, p0, v2}, Lplugin/facebookAnalytics/LuaLoader$logEvent;-><init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lplugin/facebookAnalytics/LuaLoader$setUserID;

    invoke-direct {v1, p0, v2}, Lplugin/facebookAnalytics/LuaLoader$setUserID;-><init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebookAnalytics/LuaLoader$setUserProperties;

    invoke-direct {v1, p0, v2}, Lplugin/facebookAnalytics/LuaLoader$setUserProperties;-><init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebookAnalytics/LuaLoader$logPurchase;

    invoke-direct {v1, p0, v2}, Lplugin/facebookAnalytics/LuaLoader$logPurchase;-><init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebookAnalytics/LuaLoader$debug;

    invoke-direct {v1, p0, v2}, Lplugin/facebookAnalytics/LuaLoader$debug;-><init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lplugin/facebookAnalytics/LuaLoader$limitEventUsage;

    invoke-direct {v1, p0, v2}, Lplugin/facebookAnalytics/LuaLoader$limitEventUsage;-><init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 72
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    return v3
.end method

.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 141
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    iget v0, p0, Lplugin/facebookAnalytics/LuaLoader;->fListener:I

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lplugin/facebookAnalytics/LuaLoader;->fListener:I

    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 116
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;)V

    return-void
.end method
