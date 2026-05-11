.class Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$ToTable$LuaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewIndex"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 725
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const/4 v0, 0x1

    .line 729
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;

    const/4 v2, 0x2

    .line 730
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 735
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v2

    const/4 v3, 0x3

    .line 736
    const-class v5, Ljava/lang/Object;

    invoke-virtual {p1, v3, v5}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 738
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v0

    if-eq v2, v3, :cond_0

    .line 740
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object p1

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    return v4

    .line 731
    :cond_2
    new-instance v1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 733
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "attempt to write list with %s accessor"

    .line 731
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
