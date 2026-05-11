.class Lcom/naef/jnlua/DefaultJavaReflector$Equal;
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
    name = "Equal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$Equal;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$Equal;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    .line 455
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 456
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 457
    :goto_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v1
.end method
