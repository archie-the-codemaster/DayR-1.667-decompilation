.class public Lcom/naef/jnlua/LuaError;
.super Ljava/lang/Object;
.source "LuaError.java"


# static fields
.field public static final JAVA_STACK_TRACE_HEADER_MESSAGE:Ljava/lang/String; = "\nJava Stack Trace:"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/naef/jnlua/LuaError;->message:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLuaStackTrace()[Lcom/naef/jnlua/LuaStackTraceElement;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->message:Ljava/lang/String;

    return-object v0
.end method

.method setLuaStackTrace([Lcom/naef/jnlua/LuaStackTraceElement;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/naef/jnlua/LuaError;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/naef/jnlua/LuaError;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "\n"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, "\nJava Stack Trace:"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "\n\t"

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
