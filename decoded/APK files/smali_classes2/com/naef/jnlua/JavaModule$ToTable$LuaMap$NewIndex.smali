.class Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$NewIndex;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewIndex"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$NewIndex;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v0, 0x1

    .line 625
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;

    .line 626
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    .line 632
    const-class v3, Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 634
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v4

    .line 628
    :cond_1
    new-instance v1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 630
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "attempt to write map with %s accessor"

    .line 628
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
