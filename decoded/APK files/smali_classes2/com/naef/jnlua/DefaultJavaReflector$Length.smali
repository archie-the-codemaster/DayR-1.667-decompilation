.class Lcom/naef/jnlua/DefaultJavaReflector$Length;
.super Ljava/lang/Object;
.source "DefaultJavaReflector.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Length"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$Length;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$Length;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    .line 439
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 444
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    return v1
.end method
