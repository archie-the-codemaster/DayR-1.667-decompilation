.class public Lcom/naef/jnlua/LuaState;
.super Ljava/lang/Object;
.source "LuaState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/LuaState$LuaInvocationHandler;,
        Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;,
        Lcom/naef/jnlua/LuaState$LuaValueProxyRef;,
        Lcom/naef/jnlua/LuaState$GcAction;,
        Lcom/naef/jnlua/LuaState$Library;
    }
.end annotation


# static fields
.field private static final APIVERSION:I = 0x2

.field public static final ENVIRONINDEX:I = -0x2711

.field public static final GLOBALSINDEX:I = -0x2712

.field public static final LUA_VERSION:Ljava/lang/String;

.field public static final MULTRET:I = -0x1

.field public static final REGISTRYINDEX:I = -0x2710

.field public static final VERSION:Ljava/lang/String; = "0.9"

.field public static final YIELD:I = 0x1


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private converter:Lcom/naef/jnlua/Converter;

.field private finalizeGuardian:Ljava/lang/Object;

.field private javaReflector:Lcom/naef/jnlua/JavaReflector;

.field private luaState:J

.field private luaThread:J

.field private ownState:Z

.field private proxyQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private proxySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/naef/jnlua/LuaState$LuaValueProxyRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    invoke-static {}, Lcom/naef/jnlua/NativeSupport;->getInstance()Lcom/naef/jnlua/NativeSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naef/jnlua/NativeSupport;->getLoader()Lcom/naef/jnlua/NativeSupport$Loader;

    move-result-object v0

    invoke-interface {v0}, Lcom/naef/jnlua/NativeSupport$Loader;->load()V

    .line 116
    invoke-static {}, Lcom/naef/jnlua/LuaState;->lua_version()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naef/jnlua/LuaState;->LUA_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->proxySet:Ljava/util/Set;

    .line 173
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->proxyQueue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 196
    :goto_0
    iput-boolean v2, p0, Lcom/naef/jnlua/LuaState;->ownState:Z

    const/4 v2, 0x2

    .line 197
    invoke-direct {p0, v2, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_newstate(IJ)V

    .line 198
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 203
    iget-boolean p1, p0, Lcom/naef/jnlua/LuaState;->ownState:Z

    if-eqz p1, :cond_1

    .line 204
    new-instance p1, Lcom/naef/jnlua/LuaState$1;

    invoke-direct {p1, p0}, Lcom/naef/jnlua/LuaState$1;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->finalizeGuardian:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->finalizeGuardian:Ljava/lang/Object;

    .line 218
    :goto_1
    invoke-static {}, Lcom/naef/jnlua/JavaReflector$Metamethod;->values()[Lcom/naef/jnlua/JavaReflector$Metamethod;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_2

    .line 220
    invoke-static {}, Lcom/naef/jnlua/JavaReflector$Metamethod;->values()[Lcom/naef/jnlua/JavaReflector$Metamethod;

    move-result-object p1

    aget-object p1, p1, v0

    .line 221
    new-instance p2, Lcom/naef/jnlua/LuaState$2;

    invoke-direct {p2, p0, p1}, Lcom/naef/jnlua/LuaState$2;-><init>(Lcom/naef/jnlua/LuaState;Lcom/naef/jnlua/JavaReflector$Metamethod;)V

    invoke-direct {p0, p2}, Lcom/naef/jnlua/LuaState;->lua_pushjavafunction(Lcom/naef/jnlua/JavaFunction;)V

    const/4 p2, -0x2

    .line 234
    invoke-virtual {p1}, Lcom/naef/jnlua/JavaReflector$Metamethod;->getMetamethodName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/naef/jnlua/LuaState;->lua_setfield(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_2
    invoke-direct {p0, v1}, Lcom/naef/jnlua/LuaState;->lua_pop(I)V

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;

    .line 240
    invoke-static {}, Lcom/naef/jnlua/DefaultJavaReflector;->getInstance()Lcom/naef/jnlua/DefaultJavaReflector;

    move-result-object p1

    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;

    .line 241
    invoke-static {}, Lcom/naef/jnlua/DefaultConverter;->getInstance()Lcom/naef/jnlua/DefaultConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;

    return-void
.end method

.method static synthetic access$000(Lcom/naef/jnlua/LuaState;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->closeInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/naef/jnlua/LuaState;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_openlib(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/naef/jnlua/LuaState;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/naef/jnlua/LuaState;->proxyQueue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method static synthetic access$400(Lcom/naef/jnlua/LuaState;)Ljava/util/Set;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/naef/jnlua/LuaState;->proxySet:Ljava/util/Set;

    return-object p0
.end method

.method private check()V
    .locals 2

    .line 2088
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2094
    :goto_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->proxyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;

    if-eqz v0, :cond_0

    .line 2095
    iget-object v1, p0, Lcom/naef/jnlua/LuaState;->proxySet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/16 v1, -0x2710

    .line 2096
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;->getReference()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/naef/jnlua/LuaState;->lua_unref(II)V

    goto :goto_0

    :cond_0
    return-void

    .line 2089
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lua state is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private closeInternal()V
    .locals 2

    .line 2075
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2076
    iget-boolean v0, p0, Lcom/naef/jnlua/LuaState;->ownState:Z

    invoke-direct {p0, v0}, Lcom/naef/jnlua/LuaState;->lua_close(Z)V

    .line 2077
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2078
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 5

    .line 2116
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 2117
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_funcname()Ljava/lang/String;

    move-result-object v0

    .line 2118
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_narg(I)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "argument #%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "self argument"

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    aput-object p2, v4, v3

    const-string p1, "bad %s to \'%s\' (%s)"

    .line 2123
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const-string p1, "bad %s (%s)"

    .line 2126
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2128
    :goto_1
    new-instance p2, Lcom/naef/jnlua/LuaRuntimeException;

    invoke-direct {p2, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2105
    invoke-virtual {p2}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2106
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "expected %s, got %s"

    .line 2105
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2104
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private isOpenInternal()Z
    .locals 5

    .line 2068
    iget-wide v0, p0, Lcom/naef/jnlua/LuaState;->luaState:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native lua_close(Z)V
.end method

.method private native lua_concat(I)V
.end method

.method private native lua_createtable(II)V
.end method

.method private native lua_dump(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native lua_equal(II)I
.end method

.method private native lua_findtable(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method private native lua_funcname()Ljava/lang/String;
.end method

.method private native lua_gc(II)I
.end method

.method private native lua_getfenv(I)V
.end method

.method private native lua_getfield(ILjava/lang/String;)V
.end method

.method private native lua_getglobal(Ljava/lang/String;)V
.end method

.method private native lua_getmetafield(ILjava/lang/String;)I
.end method

.method private native lua_getmetatable(I)I
.end method

.method private native lua_gettable(I)V
.end method

.method private native lua_gettop()I
.end method

.method private native lua_insert(I)V
.end method

.method private native lua_isboolean(I)I
.end method

.method private native lua_iscfunction(I)I
.end method

.method private native lua_isfunction(I)I
.end method

.method private native lua_isjavafunction(I)I
.end method

.method private native lua_isjavaobject(I)I
.end method

.method private native lua_isnil(I)I
.end method

.method private native lua_isnone(I)I
.end method

.method private native lua_isnoneornil(I)I
.end method

.method private native lua_isnumber(I)I
.end method

.method private native lua_isstring(I)I
.end method

.method private native lua_istable(I)I
.end method

.method private native lua_isthread(I)I
.end method

.method private native lua_lessthan(II)I
.end method

.method private native lua_load(Ljava/io/InputStream;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native lua_narg(I)I
.end method

.method private native lua_newstate(IJ)V
.end method

.method private native lua_newtable()V
.end method

.method private native lua_newthread()V
.end method

.method private native lua_next(I)I
.end method

.method private native lua_objlen(I)I
.end method

.method private native lua_openlib(I)V
.end method

.method private native lua_pcall(II)V
.end method

.method private native lua_pop(I)V
.end method

.method private native lua_pushboolean(I)V
.end method

.method private native lua_pushbytearray([BI)V
.end method

.method private native lua_pushinteger(I)V
.end method

.method private native lua_pushjavafunction(Lcom/naef/jnlua/JavaFunction;)V
.end method

.method private native lua_pushjavaobject(Ljava/lang/Object;)V
.end method

.method private native lua_pushnil()V
.end method

.method private native lua_pushnumber(D)V
.end method

.method private native lua_pushstring(Ljava/lang/String;)V
.end method

.method private native lua_pushvalue(I)V
.end method

.method private native lua_rawequal(II)I
.end method

.method private native lua_rawget(I)V
.end method

.method private native lua_rawgeti(II)V
.end method

.method private native lua_rawset(I)V
.end method

.method private native lua_rawseti(II)V
.end method

.method private native lua_ref(I)I
.end method

.method private native lua_remove(I)V
.end method

.method private native lua_replace(I)V
.end method

.method private native lua_resume(II)I
.end method

.method private native lua_setfenv(I)I
.end method

.method private native lua_setfield(ILjava/lang/String;)V
.end method

.method private native lua_setglobal(Ljava/lang/String;)V
.end method

.method private native lua_setmetatable(I)I
.end method

.method private native lua_settable(I)V
.end method

.method private native lua_settop(I)V
.end method

.method private native lua_status(I)I
.end method

.method private native lua_tablemove(IIII)V
.end method

.method private native lua_tablesize(I)I
.end method

.method private native lua_toboolean(I)I
.end method

.method private native lua_tobytearray(I)[B
.end method

.method private native lua_tointeger(I)I
.end method

.method private native lua_tojavafunction(I)Lcom/naef/jnlua/JavaFunction;
.end method

.method private native lua_tojavaobject(I)Ljava/lang/Object;
.end method

.method private native lua_tonumber(I)D
.end method

.method private native lua_topointer(I)J
.end method

.method private native lua_tostring(I)Ljava/lang/String;
.end method

.method private native lua_type(I)I
.end method

.method private native lua_unref(II)V
.end method

.method private static native lua_version()Ljava/lang/String;
.end method

.method private native lua_yield(I)I
.end method


# virtual methods
.method public declared-synchronized call(II)V
    .locals 0

    monitor-enter p0

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_pcall(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkArg(IZLjava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1675
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 1677
    monitor-exit p0

    return-void

    .line 1679
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkBoolean(I)Z
    .locals 1

    monitor-enter p0

    .line 1692
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1693
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 1694
    :cond_0
    :try_start_1
    sget-object v0, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkBoolean(IZ)Z
    .locals 1

    monitor-enter p0

    .line 1713
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1714
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1715
    monitor-exit p0

    return p2

    .line 1717
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkBoolean(I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkByteArray(I)[B
    .locals 1

    monitor-enter p0

    .line 1731
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1732
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toByteArray(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1733
    :cond_0
    :try_start_1
    sget-object v0, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkByteArray(I[B)[B
    .locals 1

    monitor-enter p0

    .line 1752
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1753
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1754
    monitor-exit p0

    return-object p2

    .line 1756
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkByteArray(I)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkInteger(I)I
    .locals 1

    monitor-enter p0

    .line 1770
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1771
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 1772
    :cond_0
    :try_start_1
    sget-object v0, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkInteger(II)I
    .locals 1

    monitor-enter p0

    .line 1792
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1793
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1794
    monitor-exit p0

    return p2

    .line 1796
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1858
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1859
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v0, "exptected %s, got %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1863
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 1862
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1860
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkJavaObject(ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1885
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1886
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1887
    monitor-exit p0

    return-object p3

    .line 1889
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkNumber(I)D
    .locals 2

    monitor-enter p0

    .line 1810
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1811
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 1812
    :cond_0
    :try_start_1
    sget-object v0, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkNumber(ID)D
    .locals 1

    monitor-enter p0

    .line 1832
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1833
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1834
    monitor-exit p0

    return-wide p2

    .line 1836
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkOption(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1905
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1906
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1907
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 1908
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1909
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "expected one of %s, got %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1915
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object v0, v3, p2

    .line 1914
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1912
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized checkOption(I[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1935
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1936
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1937
    monitor-exit p0

    return-object p3

    .line 1939
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->checkOption(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkString(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1952
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1953
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1954
    :cond_0
    :try_start_1
    sget-object v0, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1973
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1974
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1975
    monitor-exit p0

    return-object p2

    .line 1977
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkType(ILcom/naef/jnlua/LuaType;)V
    .locals 1

    monitor-enter p0

    .line 1991
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1992
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 1995
    monitor-exit p0

    return-void

    .line 1993
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized concat(I)V
    .locals 0

    monitor-enter p0

    .line 1214
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1215
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_concat(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 544
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_dump(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized equal(II)Z
    .locals 0

    monitor-enter p0

    .line 957
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 958
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_equal(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized gc(Lcom/naef/jnlua/LuaState$GcAction;I)I
    .locals 0

    monitor-enter p0

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 404
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState$GcAction;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_gc(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConverter()Lcom/naef/jnlua/Converter;
    .locals 1

    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFEnv(I)V
    .locals 0

    monitor-enter p0

    .line 1507
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1508
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_getfenv(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getField(ILjava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1326
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1327
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_getfield(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlobal(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 575
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 576
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_getglobal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getJavaReflector()Lcom/naef/jnlua/JavaReflector;
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetafield(ILjava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 1464
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1465
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_getmetafield(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMetamethod(Ljava/lang/Object;Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 325
    :try_start_0
    instance-of v0, p1, Lcom/naef/jnlua/JavaReflector;

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Lcom/naef/jnlua/JavaReflector;

    .line 327
    invoke-interface {p1, p2}, Lcom/naef/jnlua/JavaReflector;->getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 329
    monitor-exit p0

    return-object p1

    .line 332
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;

    invoke-interface {p1, p2}, Lcom/naef/jnlua/JavaReflector;->getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMetatable(I)Z
    .locals 0

    monitor-enter p0

    .line 1478
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1479
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_getmetatable(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProxy(I)Lcom/naef/jnlua/LuaValueProxy;
    .locals 1

    monitor-enter p0

    .line 2006
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 2007
    new-instance p1, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;

    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->ref(I)I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;-><init>(Lcom/naef/jnlua/LuaState;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProxy(I[Ljava/lang/Class;)Lcom/naef/jnlua/LuaValueProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/naef/jnlua/LuaValueProxy;"
        }
    .end annotation

    monitor-enter p0

    .line 2042
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 2043
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2047
    array-length p1, p2

    add-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Class;

    .line 2048
    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2049
    array-length p2, p1

    sub-int/2addr p2, v2

    const-class v0, Lcom/naef/jnlua/LuaValueProxy;

    aput-object v0, p1, p2

    const/16 p2, -0x2710

    .line 2050
    invoke-virtual {p0, p2}, Lcom/naef/jnlua/LuaState;->ref(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2052
    :try_start_1
    iget-object v1, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;

    new-instance v2, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;

    invoke-direct {v2, p0, v0}, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-static {v1, p1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, -0x1

    .line 2055
    check-cast p1, Lcom/naef/jnlua/LuaValueProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    if-ltz v0, :cond_0

    :try_start_2
    invoke-virtual {p0, p2, v0}, Lcom/naef/jnlua/LuaState;->unref(II)V

    :cond_0
    throw p1

    .line 2044
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "index %d is not a table"

    new-array v2, v2, [Ljava/lang/Object;

    .line 2045
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 2044
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProxy(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2025
    invoke-virtual {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getProxy(I[Ljava/lang/Class;)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTable(I)V
    .locals 0

    monitor-enter p0

    .line 1312
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1313
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_gettable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTop()I
    .locals 1

    monitor-enter p0

    .line 1224
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1225
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_gettop()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(I)V
    .locals 0

    monitor-enter p0

    .line 1236
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1237
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_insert(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isBoolean(I)Z
    .locals 0

    monitor-enter p0

    .line 731
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 732
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isboolean(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCFunction(I)Z
    .locals 0

    monitor-enter p0

    .line 747
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 748
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_iscfunction(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isFunction(I)Z
    .locals 0

    monitor-enter p0

    .line 764
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 765
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isfunction(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isJavaFunction(I)Z
    .locals 0

    monitor-enter p0

    .line 781
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 782
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isjavafunction(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isJavaObject(ILjava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 825
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 826
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;

    invoke-interface {v0, p0, p1, p2}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isJavaObjectRaw(I)Z
    .locals 0

    monitor-enter p0

    .line 804
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 805
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isjavaobject(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isNil(I)Z
    .locals 0

    monitor-enter p0

    .line 842
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 843
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnil(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isNone(I)Z
    .locals 0

    monitor-enter p0

    .line 858
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 859
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnone(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isNoneOrNil(I)Z
    .locals 0

    monitor-enter p0

    .line 875
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 876
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnoneornil(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isNumber(I)Z
    .locals 0

    monitor-enter p0

    .line 892
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 893
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnumber(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 375
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isString(I)Z
    .locals 0

    monitor-enter p0

    .line 909
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 910
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isstring(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isTable(I)Z
    .locals 0

    monitor-enter p0

    .line 925
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 926
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_istable(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isThread(I)Z
    .locals 0

    monitor-enter p0

    .line 941
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 942
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isthread(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized length(I)I
    .locals 0

    monitor-enter p0

    .line 989
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 990
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_objlen(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lessThan(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/naef/jnlua/LuaMemoryAllocationException;,
            Lcom/naef/jnlua/LuaRuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 974
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_lessthan(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 512
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_load(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 510
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 527
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/naef/jnlua/LuaState;->load(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 529
    :try_start_1
    new-instance p2, Lcom/naef/jnlua/LuaMemoryAllocationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/naef/jnlua/LuaMemoryAllocationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized newTable()V
    .locals 1

    monitor-enter p0

    .line 1334
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1335
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_newtable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newTable(II)V
    .locals 0

    monitor-enter p0

    .line 1348
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1349
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_createtable(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized newThread()V
    .locals 1

    monitor-enter p0

    .line 1533
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1534
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_newthread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next(I)Z
    .locals 0

    monitor-enter p0

    .line 1363
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1364
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_next(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openLib(Lcom/naef/jnlua/LuaState$Library;)V
    .locals 0

    monitor-enter p0

    .line 415
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 416
    invoke-virtual {p1, p0}, Lcom/naef/jnlua/LuaState$Library;->open(Lcom/naef/jnlua/LuaState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openLibs()V
    .locals 4

    monitor-enter p0

    .line 429
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 430
    invoke-static {}, Lcom/naef/jnlua/LuaState$Library;->values()[Lcom/naef/jnlua/LuaState$Library;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 431
    invoke-virtual {v3, p0}, Lcom/naef/jnlua/LuaState$Library;->open(Lcom/naef/jnlua/LuaState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized pop(I)V
    .locals 0

    monitor-enter p0

    .line 1247
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1248
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushBoolean(Z)V
    .locals 0

    monitor-enter p0

    .line 600
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 601
    :goto_0
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushboolean(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushInteger(I)V
    .locals 0

    monitor-enter p0

    .line 611
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 612
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushinteger(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V
    .locals 0

    monitor-enter p0

    .line 622
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 623
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushjavafunction(Lcom/naef/jnlua/JavaFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushJavaObject(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 660
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 661
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getConverter()Lcom/naef/jnlua/Converter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/naef/jnlua/Converter;->convertJavaObject(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushJavaObjectRaw(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    .line 646
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 647
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushjavaobject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushNil()V
    .locals 1

    monitor-enter p0

    .line 668
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 669
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_pushnil()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushNumber(D)V
    .locals 0

    monitor-enter p0

    .line 679
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 680
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_pushnumber(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushString(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 690
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 691
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushstring(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushString([B)V
    .locals 1

    monitor-enter p0

    .line 701
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 702
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->lua_pushbytearray([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushString([BI)V
    .locals 0

    monitor-enter p0

    .line 714
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 715
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_pushbytearray([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushValue(I)V
    .locals 0

    monitor-enter p0

    .line 1258
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1259
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushvalue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rawEqual(II)Z
    .locals 0

    monitor-enter p0

    .line 1004
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1005
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_rawequal(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rawGet(I)V
    .locals 0

    monitor-enter p0

    .line 1376
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1377
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_rawget(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rawGet(II)V
    .locals 0

    monitor-enter p0

    .line 1390
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1391
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_rawgeti(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rawSet(I)V
    .locals 0

    monitor-enter p0

    .line 1404
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1405
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_rawset(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rawSet(II)V
    .locals 0

    monitor-enter p0

    .line 1419
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1420
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_rawseti(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ref(I)I
    .locals 0

    monitor-enter p0

    .line 1598
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1599
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_ref(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Lcom/naef/jnlua/NamedJavaFunction;)V
    .locals 1

    monitor-enter p0

    .line 442
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 443
    invoke-interface {p1}, Lcom/naef/jnlua/NamedJavaFunction;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    .line 448
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->setGlobal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    .line 445
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Anonymous function"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V
    .locals 5

    monitor-enter p0

    .line 462
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    const/16 v0, -0x2710

    const-string v1, "_LOADED"

    const/4 v2, 0x1

    .line 468
    invoke-direct {p0, v0, v1, v2}, Lcom/naef/jnlua/LuaState;->lua_findtable(ILjava/lang/String;I)Ljava/lang/String;

    const/4 v0, -0x1

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 470
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 471
    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/16 v1, -0x2712

    .line 472
    array-length v4, p2

    invoke-direct {p0, v1, p1, v4}, Lcom/naef/jnlua/LuaState;->lua_findtable(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    const/4 v0, -0x3

    .line 480
    invoke-virtual {p0, v0, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "naming conflict for module name \'%s\' at \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, -0x2

    .line 482
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    const/4 v0, 0x0

    .line 483
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 484
    aget-object v1, p2, v0

    invoke-interface {v1}, Lcom/naef/jnlua/NamedJavaFunction;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 489
    aget-object v4, p2, v0

    invoke-virtual {p0, v4}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    .line 490
    invoke-virtual {p0, p1, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "anonymous function at index %d"

    new-array v1, v2, [Ljava/lang/Object;

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 486
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized remove(I)V
    .locals 0

    monitor-enter p0

    .line 1270
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1271
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(I)V
    .locals 0

    monitor-enter p0

    .line 1282
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1283
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_replace(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume(II)I
    .locals 0

    monitor-enter p0

    .line 1550
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1551
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_resume(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 272
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConverter(Lcom/naef/jnlua/Converter;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 362
    :try_start_0
    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 360
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFEnv(I)Z
    .locals 0

    monitor-enter p0

    .line 1522
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1523
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_setfenv(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setField(ILjava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1446
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1447
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_setfield(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGlobal(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/naef/jnlua/LuaMemoryAllocationException;,
            Lcom/naef/jnlua/LuaRuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 588
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 589
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_setglobal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setJavaReflector(Lcom/naef/jnlua/JavaReflector;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 304
    :try_start_0
    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 302
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMetatable(I)Z
    .locals 0

    monitor-enter p0

    .line 1492
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1493
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_setmetatable(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTable(I)V
    .locals 0

    monitor-enter p0

    .line 1432
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1433
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_settable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTop(I)V
    .locals 0

    monitor-enter p0

    .line 1298
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1299
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_settop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized status(I)I
    .locals 0

    monitor-enter p0

    .line 1566
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1567
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_status(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tableMove(IIII)V
    .locals 0

    monitor-enter p0

    .line 1657
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1658
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/naef/jnlua/LuaState;->lua_tablemove(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tableSize(I)I
    .locals 0

    monitor-enter p0

    .line 1634
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1635
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tablesize(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toBoolean(I)Z
    .locals 0

    monitor-enter p0

    .line 1018
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1019
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_toboolean(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toByteArray(I)[B
    .locals 0

    monitor-enter p0

    .line 1033
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1034
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tobytearray(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toInteger(I)I
    .locals 0

    monitor-enter p0

    .line 1047
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1048
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tointeger(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toJavaFunction(I)Lcom/naef/jnlua/JavaFunction;
    .locals 0

    monitor-enter p0

    .line 1060
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1061
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tojavafunction(I)Lcom/naef/jnlua/JavaFunction;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1101
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1102
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;

    invoke-interface {v0, p0, p1, p2}, Lcom/naef/jnlua/Converter;->convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toJavaObjectRaw(I)Ljava/lang/Object;
    .locals 0

    monitor-enter p0

    .line 1080
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1081
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tojavaobject(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toNumber(I)D
    .locals 2

    monitor-enter p0

    .line 1115
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1116
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tonumber(I)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toPointer(I)J
    .locals 2

    monitor-enter p0

    .line 1131
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1132
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_topointer(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString(I)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 1146
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1147
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tostring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized type(I)Lcom/naef/jnlua/LuaType;
    .locals 1

    monitor-enter p0

    .line 1162
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1163
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_type(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1164
    invoke-static {}, Lcom/naef/jnlua/LuaType;->values()[Lcom/naef/jnlua/LuaType;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized typeName(I)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1183
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1184
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "no value"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    monitor-exit p0

    return-object p1

    .line 1188
    :cond_0
    :try_start_1
    sget-object v1, Lcom/naef/jnlua/LuaState$3;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1190
    :cond_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1191
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object p1

    .line 1193
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 1194
    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    .line 1196
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1198
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1202
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->displayText()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unref(II)V
    .locals 0

    monitor-enter p0

    .line 1616
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1617
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_unref(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized yield(I)I
    .locals 0

    monitor-enter p0

    .line 1582
    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    .line 1583
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_yield(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
