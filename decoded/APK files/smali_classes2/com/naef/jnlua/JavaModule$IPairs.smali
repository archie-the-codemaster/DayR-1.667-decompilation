.class Lcom/naef/jnlua/JavaModule$IPairs;
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
    name = "IPairs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;,
        Lcom/naef/jnlua/JavaModule$IPairs$ListNext;
    }
.end annotation


# instance fields
.field private final arrayNext:Lcom/naef/jnlua/JavaFunction;

.field private final listNext:Lcom/naef/jnlua/JavaFunction;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Lcom/naef/jnlua/JavaModule$IPairs$ListNext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$IPairs$ListNext;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule$IPairs;->listNext:Lcom/naef/jnlua/JavaFunction;

    .line 431
    new-instance v0, Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule$IPairs;->arrayNext:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 428
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$IPairs;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ipairs"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    .line 437
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 438
    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/naef/jnlua/JavaModule$IPairs;->listNext:Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    goto :goto_0

    .line 441
    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 444
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "expected list or array, got %s"

    .line 443
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {p1, v1, v3, v4}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/naef/jnlua/JavaModule$IPairs;->arrayNext:Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    .line 447
    :goto_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 448
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const/4 p1, 0x3

    return p1
.end method
