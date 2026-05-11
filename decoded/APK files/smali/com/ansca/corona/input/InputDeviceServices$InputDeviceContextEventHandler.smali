.class Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;
.super Ljava/lang/Object;
.source "InputDeviceServices.java"

# interfaces
.implements Lcom/ansca/corona/input/InputDeviceContext$OnStatusChangedListener;
.implements Lcom/ansca/corona/input/InputDeviceContext$OnAxisDataReceivedListener;
.implements Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDeviceContextEventHandler"
.end annotation


# static fields
.field public static INSTANCE:Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 546
    new-instance v0, Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;-><init>()V

    sput-object v0, Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;->INSTANCE:Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAxisDataReceived(Lcom/ansca/corona/input/InputDeviceContext;Lcom/ansca/corona/input/AxisDataEventInfo;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 606
    :cond_0
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$100()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceMonitor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 612
    :cond_1
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    .line 613
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$300()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceContext;->getCoronaDeviceId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByCoronaDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p1

    .line 614
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    return-void

    .line 620
    :cond_2
    new-instance v0, Lcom/ansca/corona/input/RaiseAxisEventTask;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/input/RaiseAxisEventTask;-><init>(Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/AxisDataEventInfo;)V

    .line 623
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 625
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 627
    invoke-virtual {v1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 629
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 614
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public onHandleVibrateRequest(Lcom/ansca/corona/input/InputDeviceContext;Lcom/ansca/corona/input/VibrationSettings;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 646
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceContext;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->hasAndroidDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceContext;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result p1

    invoke-static {p1, p2}, Lcom/ansca/corona/input/InputDeviceServices$ApiLevel16;->vibrateInputDeviceUsing(ILcom/ansca/corona/input/VibrationSettings;)V

    :cond_1
    return-void
.end method

.method public onStatusChanged(Lcom/ansca/corona/input/InputDeviceContext;Lcom/ansca/corona/input/InputDeviceStatusEventInfo;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 566
    :cond_0
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$100()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceMonitor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 572
    :cond_1
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    .line 573
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$300()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceContext;->getCoronaDeviceId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByCoronaDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p1

    .line 574
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    return-void

    .line 581
    :cond_2
    new-instance v0, Lcom/ansca/corona/input/RaiseInputDeviceStatusChangedEventTask;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/input/RaiseInputDeviceStatusChangedEventTask;-><init>(Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/InputDeviceStatusEventInfo;)V

    .line 584
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 586
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->access$000()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 588
    invoke-virtual {v1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 590
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 574
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
