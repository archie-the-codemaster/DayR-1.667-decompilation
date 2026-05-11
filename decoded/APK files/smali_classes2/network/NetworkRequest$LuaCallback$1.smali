.class Lnetwork/NetworkRequest$LuaCallback$1;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnetwork/NetworkRequest$LuaCallback;

.field final synthetic val$callback:Lnetwork/NetworkRequest$LuaCallback;

.field final synthetic val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

.field final synthetic val$willUnregister:Z


# direct methods
.method constructor <init>(Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$NetworkRequestState;Z)V
    .locals 0

    .line 583
    iput-object p1, p0, Lnetwork/NetworkRequest$LuaCallback$1;->this$1:Lnetwork/NetworkRequest$LuaCallback;

    iput-object p2, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    iput-object p3, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-boolean p4, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$willUnregister:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 6

    .line 587
    iget-object v0, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    invoke-static {v0}, Lnetwork/NetworkRequest$LuaCallback;->access$100(Lnetwork/NetworkRequest$LuaCallback;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Attempt to post call to callback after it was unregistered, ignoring (Corona thread)"

    .line 590
    invoke-static {v0, p1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 594
    :cond_0
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Attempt to call to callback posted before cancelling, after cancelling, ignoring"

    .line 596
    invoke-static {v0, p1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 600
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Executing callback - thread: %d"

    invoke-static {v4, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 601
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Executing callback - runtime luaState: %s"

    invoke-static {v4, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v3, "Calling Lua callback"

    new-array v4, v1, [Ljava/lang/Object;

    .line 605
    invoke-static {v3, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v3, "networkRequest"

    .line 608
    invoke-static {p1, v3}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v3, p1}, Lnetwork/NetworkRequest$NetworkRequestState;->push(Lcom/naef/jnlua/LuaState;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 612
    :try_start_1
    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_1
    .catch Lcom/naef/jnlua/LuaRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 617
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 619
    invoke-virtual {v3, v5}, Lcom/naef/jnlua/LuaRuntimeException;->printLuaStackTrace(Ljava/io/PrintStream;)V

    const-string v3, "UTF8"

    .line 620
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.naef.jnlua.LuaRuntimeException: "

    const-string v5, ""

    .line 621
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 625
    new-instance v4, Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-direct {v4}, Lcom/ansca/corona/CoronaLuaErrorHandler;-><init>()V

    .line 626
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->insert(I)V

    .line 628
    invoke-virtual {v4, p1}, Lcom/ansca/corona/CoronaLuaErrorHandler;->invoke(Lcom/naef/jnlua/LuaState;)I

    .line 631
    :goto_0
    iget-boolean v2, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$willUnregister:Z

    if-eqz v2, :cond_2

    const-string v2, "Unregistering callback after call"

    new-array v1, v1, [Ljava/lang/Object;

    .line 633
    invoke-static {v2, v1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 641
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 642
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 643
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Corona"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
