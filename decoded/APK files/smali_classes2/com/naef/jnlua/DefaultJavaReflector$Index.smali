.class Lcom/naef/jnlua/DefaultJavaReflector$Index;
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
    name = "Index"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$Index;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$Index;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    .line 331
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector$Index;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v2, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 336
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v2

    .line 342
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-lt v2, v1, :cond_0

    if-gt v2, v3, :cond_0

    sub-int/2addr v2, v1

    .line 348
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v1

    .line 344
    :cond_0
    new-instance p1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v5, [Ljava/lang/Object;

    .line 346
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "attempt to read array of length %d at index %d"

    .line 344
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_1
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 339
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "attempt to read array with %s accessor"

    .line 337
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_2
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$Index;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v3, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$800(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const/4 v6, -0x1

    .line 354
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 361
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;

    if-eqz v3, :cond_3

    .line 369
    invoke-interface {v3, p1, v0}, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;->read(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    return v1

    .line 363
    :cond_3
    new-instance p1, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v0, v5, [Ljava/lang/Object;

    .line 367
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v7, v0, v1

    const-string v1, "attempt to read class %s with accessor \'%s\' (undefined)"

    .line 365
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_4
    new-instance v2, Lcom/naef/jnlua/LuaRuntimeException;

    new-array v3, v5, [Ljava/lang/Object;

    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 359
    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "attempt to read class %s with %s accessor"

    .line 356
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
