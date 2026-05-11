.class Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;
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
    name = "LessThanOrEqual"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 490
    const-class v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 495
    const-class v0, Ljava/lang/Comparable;

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    const/4 v3, 0x2

    .line 497
    const-class v4, Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 498
    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v1

    .line 491
    :cond_1
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v3, v1, [Ljava/lang/Object;

    .line 493
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "class %s does not implement Comparable"

    .line 491
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
