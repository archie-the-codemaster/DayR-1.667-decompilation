.class Lcom/ansca/corona/input/InputDeviceServices$InputDeviceMonitorEventHandler;
.super Ljava/lang/Object;
.source "InputDeviceServices.java"

# interfaces
.implements Lcom/ansca/corona/input/InputDeviceMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDeviceMonitorEventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceConnected(I)V
    .locals 0

    .line 489
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceServices;->access$200(I)V

    return-void
.end method

.method public onInputDeviceDisconnected(I)V
    .locals 4

    .line 500
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    .line 501
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$300()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->clone()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v1

    .line 502
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 509
    :cond_0
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 510
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 511
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceContext;->beginUpdate()V

    .line 512
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    sget-object v3, Lcom/ansca/corona/input/ConnectionState;->DISCONNECTED:Lcom/ansca/corona/input/ConnectionState;

    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/ConnectionState;)V

    .line 513
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->getPlayerNumber()I

    move-result v2

    if-lez v2, :cond_2

    .line 514
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    .line 515
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->cloneWithoutPlayerNumber()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v3

    .line 514
    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/InputDeviceInfo;)V

    .line 517
    :cond_2
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceContext;->endUpdate()V

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 502
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onInputDeviceReconfigured(I)V
    .locals 0

    .line 529
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceServices;->access$200(I)V

    return-void
.end method
