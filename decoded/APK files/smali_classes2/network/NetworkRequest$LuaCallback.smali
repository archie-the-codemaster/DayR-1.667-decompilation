.class Lnetwork/NetworkRequest$LuaCallback;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuaCallback"
.end annotation


# instance fields
.field private lastNotificationPhase:Ljava/lang/String;

.field private lastNotificationTime:J

.field private luaFunctionReferenceKey:I

.field private final minNotificationIntervalMs:J

.field private taskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field final synthetic this$0:Lnetwork/NetworkRequest;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;ILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V
    .locals 2

    .line 521
    iput-object p1, p0, Lnetwork/NetworkRequest$LuaCallback;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 513
    iput p1, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    const/4 p1, 0x0

    .line 514
    iput-object p1, p0, Lnetwork/NetworkRequest$LuaCallback;->taskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    const-wide/16 v0, 0x3e8

    .line 515
    iput-wide v0, p0, Lnetwork/NetworkRequest$LuaCallback;->minNotificationIntervalMs:J

    .line 516
    iput-object p1, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationPhase:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 517
    iput-wide v0, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationTime:J

    .line 522
    iput p2, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    .line 523
    iput-object p3, p0, Lnetwork/NetworkRequest$LuaCallback;->taskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-void
.end method

.method static synthetic access$100(Lnetwork/NetworkRequest$LuaCallback;)I
    .locals 0

    .line 511
    iget p0, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    return p0
.end method


# virtual methods
.method public call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    .locals 1

    const/4 v0, 0x0

    .line 528
    invoke-virtual {p0, p1, v0}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z

    move-result p1

    return p1
.end method

.method public call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z
    .locals 9

    .line 533
    monitor-enter p0

    .line 535
    :try_start_0
    iget v0, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "Attempt to post call to callback after it was unregistered, ignoring"

    new-array p2, v2, [Ljava/lang/Object;

    .line 537
    invoke-static {p1, p2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    monitor-exit p0

    return v2

    .line 540
    :cond_0
    iget-object v0, p0, Lnetwork/NetworkRequest$LuaCallback;->taskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-nez v0, :cond_1

    const-string p1, "Attempt to post call to callback without a CoronaRuntimeTaskDispatcher"

    new-array p2, v2, [Ljava/lang/Object;

    .line 542
    invoke-static {p1, p2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    monitor-exit p0

    return v2

    .line 553
    :cond_1
    iget-object v0, p1, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Attempt to post call to callback after cancelling, ignoring"

    new-array p2, v2, [Ljava/lang/Object;

    .line 555
    invoke-static {p1, p2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    monitor-exit p0

    return v2

    .line 562
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 563
    iget-object v3, p1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    iget-object v4, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationPhase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-wide v5, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationTime:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v3, v5, v0

    if-lez v3, :cond_3

    const-string p2, "Attempt to post call to callback for phase \"%s\" within notification interval, ignoring"

    new-array v0, v4, [Ljava/lang/Object;

    .line 565
    iget-object p1, p1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    monitor-exit p0

    return v2

    .line 570
    :cond_3
    iget-object v3, p1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    iput-object v3, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationPhase:Ljava/lang/String;

    .line 571
    iput-wide v0, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationTime:J

    .line 577
    new-instance v0, Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v1, p0, Lnetwork/NetworkRequest$LuaCallback;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {v0, v1, p1}, Lnetwork/NetworkRequest$NetworkRequestState;-><init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestState;)V

    .line 582
    new-instance p1, Lnetwork/NetworkRequest$LuaCallback$1;

    invoke-direct {p1, p0, p0, v0, p2}, Lnetwork/NetworkRequest$LuaCallback$1;-><init>(Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$NetworkRequestState;Z)V

    const-string p2, "Posting callback CoronaRuntimeTask to Corona thread"

    new-array v0, v2, [Ljava/lang/Object;

    .line 652
    invoke-static {p2, v0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    iget-object p2, p0, Lnetwork/NetworkRequest$LuaCallback;->taskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-virtual {p2, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 654
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregister(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 3

    .line 663
    monitor-enter p0

    .line 665
    :try_start_0
    iget v0, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "Attempt to unregister callback after it was already unregistered, ignoring"

    new-array v0, v2, [Ljava/lang/Object;

    .line 667
    invoke-static {p1, v0}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    :try_start_1
    const-string v0, "Unregistering Lua callback using runtime"

    new-array v2, v2, [Ljava/lang/Object;

    .line 673
    invoke-static {v0, v2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 676
    iget v0, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 677
    iput v1, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 682
    :try_start_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 683
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string p1, "Corona"

    .line 684
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :goto_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
