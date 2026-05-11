.class public Lcom/naef/jnlua/LuaRuntimeException;
.super Lcom/naef/jnlua/LuaException;
.source "LuaRuntimeException.java"


# static fields
.field private static final EMPTY_LUA_STACK_TRACE:[Lcom/naef/jnlua/LuaStackTraceElement;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/naef/jnlua/LuaStackTraceElement;

    .line 23
    sput-object v0, Lcom/naef/jnlua/LuaRuntimeException;->EMPTY_LUA_STACK_TRACE:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaException;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/naef/jnlua/LuaRuntimeException;->EMPTY_LUA_STACK_TRACE:[Lcom/naef/jnlua/LuaStackTraceElement;

    iput-object p1, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    sget-object p1, Lcom/naef/jnlua/LuaRuntimeException;->EMPTY_LUA_STACK_TRACE:[Lcom/naef/jnlua/LuaStackTraceElement;

    iput-object p1, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    sget-object p1, Lcom/naef/jnlua/LuaRuntimeException;->EMPTY_LUA_STACK_TRACE:[Lcom/naef/jnlua/LuaStackTraceElement;

    iput-object p1, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-void
.end method


# virtual methods
.method public getLuaStackTrace()[Lcom/naef/jnlua/LuaStackTraceElement;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    invoke-virtual {v0}, [Lcom/naef/jnlua/LuaStackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naef/jnlua/LuaStackTraceElement;

    return-object v0
.end method

.method public printLuaStackTrace()V
    .locals 1

    .line 81
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaRuntimeException;->printLuaStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printLuaStackTrace(Ljava/io/PrintStream;)V
    .locals 3

    .line 92
    monitor-enter p1

    .line 93
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public printLuaStackTrace(Ljava/io/PrintWriter;)V
    .locals 3

    .line 108
    monitor-enter p1

    .line 109
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method setLuaError(Lcom/naef/jnlua/LuaError;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaRuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 123
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaError;->getLuaStackTrace()[Lcom/naef/jnlua/LuaStackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/naef/jnlua/LuaRuntimeException;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-void
.end method
