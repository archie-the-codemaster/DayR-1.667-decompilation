.class Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$IPairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayNext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 482
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x2

    .line 484
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v4

    add-int/2addr v4, v1

    if-lt v4, v1, :cond_0

    if-gt v4, v2, :cond_0

    .line 487
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    sub-int/2addr v4, v1

    .line 488
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v3

    .line 491
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    return v1
.end method
