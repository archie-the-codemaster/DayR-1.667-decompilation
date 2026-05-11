.class public Lcom/ansca/corona/CoronaRuntimeProvider;
.super Ljava/lang/Object;
.source "CoronaRuntimeProvider.java"


# static fields
.field private static sRuntimesByLuaState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/naef/jnlua/LuaState;",
            "Lcom/ansca/corona/CoronaRuntime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaRuntimeProvider;->sRuntimesByLuaState:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRuntime(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/ansca/corona/CoronaRuntimeProvider;->sRuntimesByLuaState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAllCoronaRuntimes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/ansca/corona/CoronaRuntime;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/ansca/corona/CoronaRuntimeProvider;->sRuntimesByLuaState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J
    .locals 2

    .line 66
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "luaState"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getRuntimeByLuaState(Lcom/naef/jnlua/LuaState;)Lcom/ansca/corona/CoronaRuntime;
    .locals 1

    .line 47
    sget-object v0, Lcom/ansca/corona/CoronaRuntimeProvider;->sRuntimesByLuaState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method public static removeRuntime(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    sget-object v0, Lcom/ansca/corona/CoronaRuntimeProvider;->sRuntimesByLuaState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
