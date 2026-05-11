.class Lcom/naef/jnlua/JavaModule$Properties;
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
    name = "Properties"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 854
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Properties;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "properties"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v0, 0x1

    .line 858
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 859
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "expected Java object, got %s"

    .line 858
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 861
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 860
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->getMetamethod(Ljava/lang/Object;Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;

    move-result-object v0

    .line 862
    invoke-interface {v0, p1}, Lcom/naef/jnlua/JavaFunction;->invoke(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
