.class abstract Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SensorMonitor"
.end annotation


# instance fields
.field private fIsRunning:Z

.field private fSensorListener:Landroid/hardware/SensorEventListener;

.field private fTimer:Lcom/ansca/corona/MessageBasedTimer;

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    .line 356
    new-instance p1, Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {p1}, Lcom/ansca/corona/MessageBasedTimer;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    const/4 p1, 0x0

    .line 357
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    const/16 p1, 0xa

    .line 360
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->setIntervalInHertz(I)V

    return-void
.end method

.method private getSensorDelay()I
    .locals 5

    .line 536
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x14

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getInterval()Lcom/ansca/corona/TimeSpan;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalInHertz()I
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public abstract getSensorType()I
.end method

.method public isRunning()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    return v0
.end method

.method protected onStarting()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method public setIntervalInHertz(I)V
    .locals 2

    const/16 v0, 0x3e8

    .line 413
    div-int/2addr v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/ansca/corona/TimeSpan;->fromMilliseconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/TimeSpan;->equals(Lcom/ansca/corona/TimeSpan;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->stop()V

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/MessageBasedTimer;->setInterval(Lcom/ansca/corona/TimeSpan;)V

    if-eqz v0, :cond_2

    .line 431
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->start()V

    :cond_2
    return-void
.end method

.method protected setSensorListener(Landroid/hardware/SensorEventListener;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 375
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    if-ne p1, v0, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->stop()V

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->start()V

    :cond_2
    return-void

    .line 371
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method protected setTimerListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/MessageBasedTimer;->setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 468
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 475
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->onStarting()V

    .line 479
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 481
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->getSensorType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 482
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->getSensorDelay()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    .line 487
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->getListener()Lcom/ansca/corona/MessageBasedTimer$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MessageBasedTimer;->setHandler(Landroid/os/Handler;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 502
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 511
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 512
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    .line 514
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->onStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
