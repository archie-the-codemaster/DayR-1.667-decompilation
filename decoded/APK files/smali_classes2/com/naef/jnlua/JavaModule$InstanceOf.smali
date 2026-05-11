.class Lcom/naef/jnlua/JavaModule$InstanceOf;
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
    name = "InstanceOf"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$InstanceOf;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "instanceof"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    .line 231
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-class v2, Ljava/lang/Class;

    invoke-virtual {p1, v3, v2}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {p1, v2}, Lcom/naef/jnlua/JavaModule;->access$1200(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 243
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v1
.end method
