.class Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;
.super Ljava/lang/Object;
.source "CoronaEnvironment.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuntimeEventHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaEnvironment$1;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;-><init>()V

    return-void
.end method

.method private cloneListenerCollection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation

    .line 489
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 547
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_0

    .line 549
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onExiting(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 499
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_0

    .line 501
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onLoaded(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 535
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_0

    .line 537
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onResumed(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 511
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_0

    .line 513
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onStarted(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 523
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_0

    .line 525
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onSuspended(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_1
    return-void
.end method
