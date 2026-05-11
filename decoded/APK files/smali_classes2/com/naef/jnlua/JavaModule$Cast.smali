.class Lcom/naef/jnlua/JavaModule$Cast;
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
    name = "Cast"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Cast;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cast"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    .line 262
    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-class v0, Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {p1, v0}, Lcom/naef/jnlua/JavaModule;->access$1200(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 270
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 273
    new-instance v3, Lcom/naef/jnlua/JavaModule$Cast$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/naef/jnlua/JavaModule$Cast$1;-><init>(Lcom/naef/jnlua/JavaModule$Cast;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v1
.end method
