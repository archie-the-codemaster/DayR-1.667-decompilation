.class Lcom/naef/jnlua/JavaModule$Proxy;
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
    name = "Proxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Proxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "proxy"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    .line 307
    sget-object v0, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkType(ILcom/naef/jnlua/LuaType;)V

    .line 310
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const-string v5, "no interface specified"

    .line 311
    invoke-virtual {p1, v4, v3, v5}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 312
    new-array v3, v0, [Ljava/lang/Class;

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v2, 0x2

    .line 314
    const-class v5, Ljava/lang/Class;

    invoke-virtual {p1, v4, v5}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    const-class v5, Ljava/lang/Class;

    .line 316
    invoke-virtual {p1, v4, v5}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v3, v2

    goto :goto_2

    .line 318
    :cond_1
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {p1, v4}, Lcom/naef/jnlua/JavaModule;->access$1200(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {p1, v1, v3}, Lcom/naef/jnlua/LuaState;->getProxy(I[Ljava/lang/Class;)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    return v1
.end method
