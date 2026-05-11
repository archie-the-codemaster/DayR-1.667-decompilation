.class Lcom/naef/jnlua/LuaState$LuaInvocationHandler;
.super Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;
.source "LuaState.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuaInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/LuaState;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/LuaState;I)V
    .locals 0

    .line 2465
    iput-object p1, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    .line 2466
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;-><init>(Lcom/naef/jnlua/LuaState;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2474
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/naef/jnlua/LuaValueProxy;

    if-ne p1, v0, :cond_0

    .line 2475
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2479
    :cond_0
    iget-object p1, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    monitor-enter p1

    .line 2480
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->pushValue()V

    .line 2481
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2482
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2486
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->insert(I)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 2487
    array-length v1, p3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 2489
    iget-object v4, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2491
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    if-eq p3, v3, :cond_3

    const/4 v0, 0x1

    .line 2492
    :cond_3
    iget-object p3, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    add-int/2addr v1, v4

    invoke-virtual {p3, v1, v0}, Lcom/naef/jnlua/LuaState;->call(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v4, :cond_5

    .line 2494
    :try_start_1
    iget-object p3, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    .line 2495
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    .line 2494
    invoke-virtual {p3, v2, p2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    if-ne v0, v4, :cond_4

    .line 2498
    :try_start_2
    iget-object p3, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p3, v4}, Lcom/naef/jnlua/LuaState;->pop(I)V

    :cond_4
    throw p2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    if-ne v0, v4, :cond_6

    iget-object p3, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p3, v4}, Lcom/naef/jnlua/LuaState;->pop(I)V

    :cond_6
    monitor-exit p1

    return-object p2

    .line 2483
    :cond_7
    iget-object p3, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 2484
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p3

    :catchall_1
    move-exception p2

    .line 2501
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method
