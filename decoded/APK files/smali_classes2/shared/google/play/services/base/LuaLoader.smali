.class public Lshared/google/play/services/base/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;,
        Lshared/google/play/services/base/LuaLoader$ClearAvailabilityListenerWrapper;,
        Lshared/google/play/services/base/LuaLoader$SetAvailabilityListenerWrapper;
    }
.end annotation


# static fields
.field public static final NO_ACTIVITY_ERR_MSG:Ljava/lang/String; = ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

.field public static final NO_LUA_STATE_ERR_MSG:Ljava/lang/String; = ": the Lua state has died! Abort!"

.field public static final NO_RUNTIME_ERR_MSG:Ljava/lang/String; = ": cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

.field private static sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/ansca/corona/CoronaRuntime;
    .locals 1

    .line 34
    sget-object v0, Lshared/google/play/services/base/LuaLoader;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object v0
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    .line 73
    invoke-static {p1}, Lcom/ansca/corona/CoronaRuntimeProvider;->getRuntimeByLuaState(Lcom/naef/jnlua/LuaState;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    sput-object v0, Lshared/google/play/services/base/LuaLoader;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 75
    new-instance v1, Lshared/google/play/services/base/LuaLoader$ClearAvailabilityListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lshared/google/play/services/base/LuaLoader$ClearAvailabilityListenerWrapper;-><init>(Lshared/google/play/services/base/LuaLoader;Lshared/google/play/services/base/LuaLoader$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;

    invoke-direct {v1, v2}, Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;-><init>(Lshared/google/play/services/base/LuaLoader$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lshared/google/play/services/base/LuaLoader$SetAvailabilityListenerWrapper;

    invoke-direct {v1, p0, v2}, Lshared/google/play/services/base/LuaLoader$SetAvailabilityListenerWrapper;-><init>(Lshared/google/play/services/base/LuaLoader;Lshared/google/play/services/base/LuaLoader$1;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 81
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    return v3
.end method
