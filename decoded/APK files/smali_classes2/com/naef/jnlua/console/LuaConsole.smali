.class public Lcom/naef/jnlua/console/LuaConsole;
.super Ljava/lang/Object;
.source "LuaConsole.java"


# static fields
.field private static final EMPTY_ARGS:[Ljava/lang/String;


# instance fields
.field private luaState:Lcom/naef/jnlua/LuaState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/naef/jnlua/console/LuaConsole;->EMPTY_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    sget-object v0, Lcom/naef/jnlua/console/LuaConsole;->EMPTY_ARGS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/naef/jnlua/console/LuaConsole;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/naef/jnlua/LuaState;

    invoke-direct {v0}, Lcom/naef/jnlua/LuaState;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    .line 77
    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    const/4 v0, 0x0

    .line 78
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v0, "argv"

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->setGlobal(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->openLibs()V

    .line 88
    iget-object p1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v0, "setvbuf"

    const-string v1, "io.stdout:setvbuf(\"no\")"

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p1, v2, v2}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 90
    iget-object p1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "io.stderr:setvbuf(\"no\")"

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p1, v2, v2}, Lcom/naef/jnlua/LuaState;->call(II)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/naef/jnlua/console/LuaConsole;

    invoke-direct {v0, p0}, Lcom/naef/jnlua/console/LuaConsole;-><init>([Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/naef/jnlua/console/LuaConsole;->run()V

    const/4 p0, 0x0

    .line 53
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "0.9"

    aput-object v3, v1, v2

    sget-object v3, Lcom/naef/jnlua/LuaState;->LUA_VERSION:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "JNLua %s Console using Lua %s."

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Type \'go\' on an empty line to evaluate a chunk. "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Type =<expression> to print an expression."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 128
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v7, "go"

    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 134
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 135
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/console/LuaConsole;->runChunk(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    const-string v5, "="

    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 142
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 143
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/console/LuaConsole;->runChunk(Ljava/io/InputStream;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 v5, 0xa

    .line 148
    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "IO error: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_2
    return-void
.end method

.method protected runChunk(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 165
    iget-object v2, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    .line 166
    iget-object v2, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v4, "console"

    invoke-virtual {v2, p1, v4}, Lcom/naef/jnlua/LuaState;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, -0x1

    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 p1, 0x1

    const/4 v2, 0x1

    .line 169
    :goto_0
    iget-object v6, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v6}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v6

    if-gt v2, v6, :cond_3

    if-le v2, p1, :cond_0

    .line 171
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    :cond_0
    sget-object v6, Lcom/naef/jnlua/console/LuaConsole$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, p1, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 182
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\t#msec="

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 186
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "%.3f"

    new-array p1, p1, [Ljava/lang/Object;
    :try_end_0
    .catch Lcom/naef/jnlua/LuaRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/naef/jnlua/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v0

    long-to-double v0, v4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 187
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Lcom/naef/jnlua/LuaRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/naef/jnlua/LuaException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 192
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 189
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaRuntimeException;->printLuaStackTrace()V

    .line 190
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaRuntimeException;->printStackTrace()V

    :goto_2
    return-void
.end method
