.class public Lcom/naef/jnlua/LuaStackTraceElement;
.super Ljava/lang/Object;
.source "LuaStackTraceElement.java"


# instance fields
.field private functionName:Ljava/lang/String;

.field private lineNumber:I

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    return-void
.end method

.method private safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/naef/jnlua/LuaStackTraceElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 91
    :cond_1
    check-cast p1, Lcom/naef/jnlua/LuaStackTraceElement;

    .line 92
    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/naef/jnlua/LuaStackTraceElement;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    .line 93
    invoke-direct {p0, v1, v3}, Lcom/naef/jnlua/LuaStackTraceElement;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    iget p1, p1, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x1003f

    mul-int v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    mul-int v1, v1, v3

    .line 79
    iget v0, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->functionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "(Unknown Function)"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " ("

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->sourceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    if-ltz v1, :cond_2

    const/16 v1, 0x3a

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    iget v1, p0, Lcom/naef/jnlua/LuaStackTraceElement;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v1, "External Function"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    const/16 v1, 0x29

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
