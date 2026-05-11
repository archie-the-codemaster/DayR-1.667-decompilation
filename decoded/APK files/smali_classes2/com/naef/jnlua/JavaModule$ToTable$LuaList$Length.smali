.class Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;
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
    name = "Length"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 754
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    const/4 v0, 0x1

    .line 758
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;

    .line 759
    invoke-virtual {v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    return v0
.end method
