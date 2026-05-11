.class Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;
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
    name = "NewIndex"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    .line 380
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v2, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    .line 385
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v3

    .line 391
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-lt v3, v1, :cond_1

    if-gt v3, v6, :cond_1

    .line 397
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x3

    .line 398
    invoke-virtual {p1, v6, v2}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 406
    invoke-virtual {p1, v6, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    sub-int/2addr v3, v1

    .line 407
    invoke-static {v0, v3, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return v4

    .line 399
    :cond_0
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v3, v5, [Ljava/lang/Object;

    .line 403
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 404
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "attempt to write array of %s at index %d with %s value"

    .line 401
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    new-instance p1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v5, [Ljava/lang/Object;

    .line 395
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "attempt to write array of length %d at index %d"

    .line 393
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_2
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 388
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "attempt to write array with %s accessor"

    .line 386
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_3
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v3, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$800(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 413
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 420
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;

    if-eqz v3, :cond_4

    .line 428
    invoke-interface {v3, p1, v0}, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;->write(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    return v4

    .line 422
    :cond_4
    new-instance p1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v5, [Ljava/lang/Object;

    .line 426
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v6, v0, v1

    const-string v1, "attempt to write class %s with accessor \'%s\' (undefined)"

    .line 424
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_5
    new-instance v2, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v3, v5, [Ljava/lang/Object;

    .line 417
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 418
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "attempt to write class %s with %s accessor"

    .line 415
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
