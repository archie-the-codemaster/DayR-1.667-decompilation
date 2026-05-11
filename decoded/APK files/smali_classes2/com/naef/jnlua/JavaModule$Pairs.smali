.class Lcom/naef/jnlua/JavaModule$Pairs;
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
    name = "Pairs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;,
        Lcom/naef/jnlua/JavaModule$Pairs$MapNext;
    }
.end annotation


# instance fields
.field private final navigableMapNext:Lcom/naef/jnlua/JavaFunction;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule$Pairs;->navigableMapNext:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Pairs;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "pairs"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    .line 349
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    .line 351
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "expected map, got %s"

    .line 350
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 352
    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/naef/jnlua/JavaModule$Pairs;->navigableMapNext:Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    goto :goto_1

    .line 355
    :cond_1
    new-instance v1, Lcom/naef/jnlua/JavaModule$Pairs$MapNext;

    .line 356
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Pairs$MapNext;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    .line 358
    :goto_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 p1, 0x3

    return p1
.end method
