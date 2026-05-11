.class Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$Index;
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
    name = "Index"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap$Index;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const/4 v0, 0x1

    .line 606
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;

    .line 607
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 613
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v0

    .line 609
    :cond_0
    new-instance v1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 611
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "attempt to read map with %s accessor"

    .line 609
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
