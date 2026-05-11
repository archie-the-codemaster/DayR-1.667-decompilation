.class public Lcom/ansca/corona/CoronaLuaErrorHandler;
.super Ljava/lang/Object;
.source "CoronaLuaErrorHandler.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# instance fields
.field private fController:Lcom/ansca/corona/Controller;

.field private fIsShowingError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fIsShowingError:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaLuaErrorHandler;)Lcom/ansca/corona/Controller;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fController:Lcom/ansca/corona/Controller;

    return-object p0
.end method

.method private getStackTraceFrom(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nJava Stack Trace:"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, "\n\t"

    .line 283
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStackTraceFrom([Lcom/naef/jnlua/LuaStackTraceElement;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_2

    .line 252
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lua Stack Trace:"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, "\n\t"

    .line 260
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3}, Lcom/naef/jnlua/LuaStackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private reportError(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 199
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fIsShowingError:Z

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 212
    iput-boolean v1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fIsShowingError:Z

    .line 213
    new-instance v1, Lcom/ansca/corona/CoronaLuaErrorHandler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ansca/corona/CoronaLuaErrorHandler$2;-><init>(Lcom/ansca/corona/CoronaLuaErrorHandler;Ljava/lang/RuntimeException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 208
    :cond_1
    throw p2

    .line 193
    :cond_2
    throw p2

    .line 190
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    .line 53
    instance-of v3, v1, Lcom/naef/jnlua/LuaError;

    if-eqz v3, :cond_1

    .line 54
    check-cast v1, Lcom/naef/jnlua/LuaError;

    .line 55
    invoke-virtual {v1}, Lcom/naef/jnlua/LuaError;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1}, Lcom/naef/jnlua/LuaError;->getLuaStackTrace()[Lcom/naef/jnlua/LuaStackTraceElement;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ansca/corona/CoronaLuaErrorHandler;->getStackTraceFrom([Lcom/naef/jnlua/LuaStackTraceElement;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v1}, Lcom/naef/jnlua/LuaError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ansca/corona/CoronaLuaErrorHandler;->getStackTraceFrom(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    const-string v2, "Lua runtime error occurred."

    :cond_3
    const-string v4, "\nJava Stack Trace:"

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_5

    if-nez v1, :cond_4

    add-int/lit8 v1, v4, 0x1

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :cond_4
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5
    const/4 v4, -0x1

    if-nez v3, :cond_8

    .line 77
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v6

    const/16 v7, -0x2712

    const-string v8, "debug"

    .line 78
    invoke-virtual {p1, v7, v8}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 79
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "traceback"

    .line 80
    invoke-virtual {p1, v4, v7}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 81
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 82
    invoke-virtual {p1, v5, v0}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 83
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 84
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    const-string v7, "stack traceback:"

    .line 88
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v3, ""

    .line 93
    :cond_7
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    .line 98
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    if-eqz v1, :cond_9

    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v3, :cond_a

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "Corona"

    const-string v8, "ERROR: Runtime error"

    .line 110
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    const-string v8, "unhandledError"

    .line 117
    invoke-static {p1, v8}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x2

    .line 123
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 124
    array-length v8, v7

    if-le v8, v0, :cond_b

    .line 126
    aget-object v2, v7, v5

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nstack traceback:\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v7, v0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_b
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v7, -0x2

    const-string v8, "errorMessage"

    .line 131
    invoke-virtual {p1, v7, v8}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 132
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v3, "stackTrace"

    .line 133
    invoke-virtual {p1, v7, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 135
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->dispatchRuntimeEvent(Lcom/naef/jnlua/LuaState;I)V

    .line 137
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 139
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_1

    :cond_c
    const/4 v3, 0x1

    .line 148
    :goto_1
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    if-eqz v3, :cond_e

    .line 153
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/StackTraceElement;

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 157
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 159
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 161
    new-instance v3, Lcom/ansca/corona/CoronaLuaErrorHandler$1;

    invoke-direct {v3, p0}, Lcom/ansca/corona/CoronaLuaErrorHandler$1;-><init>(Lcom/ansca/corona/CoronaLuaErrorHandler;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_d
    invoke-direct {p0, v2, p1}, Lcom/ansca/corona/CoronaLuaErrorHandler;->reportError(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_e
    return v0
.end method

.method setController(Lcom/ansca/corona/Controller;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fController:Lcom/ansca/corona/Controller;

    return-void
.end method
