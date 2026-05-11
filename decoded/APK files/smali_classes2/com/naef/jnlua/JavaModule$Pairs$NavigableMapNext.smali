.class Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$Pairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigableMapNext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 400
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    .line 404
    const-class v0, Ljava/util/NavigableMap;

    const/4 v1, 0x1

    .line 405
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    .line 406
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 409
    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_0
    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 414
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v3

    .line 418
    :cond_1
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    return v1
.end method
