.class Lcom/naef/jnlua/JavaModule$Require;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Require"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Require;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "require"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 134
    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->checkBoolean(IZ)Z

    move-result v4

    .line 137
    invoke-static {p1, v1}, Lcom/naef/jnlua/JavaModule;->access$1200(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 138
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    .line 145
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v6, v0

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {}, Lcom/naef/jnlua/JavaModule;->access$1300()[Lcom/naef/jnlua/NamedJavaFunction;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 148
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, -0x2

    .line 149
    invoke-virtual {p1, v1, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 150
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->setGlobal(Ljava/lang/String;)V

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v3
.end method
