.class Lcom/ansca/corona/input/InputDeviceServices$CoronaRuntimeEventHandler;
.super Ljava/lang/Object;
.source "InputDeviceServices.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoronaRuntimeEventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 461
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 462
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$100()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->stop()V

    return-void

    :catchall_0
    move-exception p1

    .line 463
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 412
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 413
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v2, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 447
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$100()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->start()V

    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 425
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$100()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->start()V

    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 437
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$100()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->stop()V

    return-void
.end method
