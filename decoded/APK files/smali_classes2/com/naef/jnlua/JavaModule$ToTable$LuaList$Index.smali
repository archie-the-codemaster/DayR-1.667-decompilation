.class Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;
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
    name = "Index"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const/4 v0, 0x1

    .line 710
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;

    const/4 v2, 0x2

    .line 711
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 716
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v2

    .line 717
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v0

    .line 712
    :cond_0
    new-instance v1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 714
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "attempt to read list with %s accessor"

    .line 712
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
