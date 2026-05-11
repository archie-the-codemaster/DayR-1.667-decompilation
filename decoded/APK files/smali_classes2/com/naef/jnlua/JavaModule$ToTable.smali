.class Lcom/naef/jnlua/JavaModule$ToTable;
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
    name = "ToTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$ToTable$LuaList;,
        Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$ToTable;-><init>()V

    return-void
.end method

.method public static toTable(Ljava/util/List;)Lcom/naef/jnlua/TypedJavaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/naef/jnlua/TypedJavaObject;"
        }
    .end annotation

    .line 516
    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;

    invoke-direct {v0, p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static toTable(Ljava/util/Map;)Lcom/naef/jnlua/TypedJavaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/naef/jnlua/TypedJavaObject;"
        }
    .end annotation

    .line 508
    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;

    invoke-direct {v0, p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "totable"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    .line 523
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 525
    new-instance v2, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;

    invoke-direct {v2, v0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 526
    :cond_0
    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 528
    new-instance v2, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;

    invoke-direct {v2, v0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 531
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "expected map or list, got %s"

    .line 530
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v3, v0}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    :goto_0
    return v1
.end method
