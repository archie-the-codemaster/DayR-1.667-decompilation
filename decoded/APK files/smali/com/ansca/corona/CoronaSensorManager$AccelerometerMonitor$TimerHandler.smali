.class Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Lcom/ansca/corona/MessageBasedTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)V

    return-void
.end method


# virtual methods
.method public onTimerElapsed()V
    .locals 14

    .line 640
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1800(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1900(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 653
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-wide v1, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$2002(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;J)J

    .line 654
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1902(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z

    return-void

    .line 663
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$2000(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    const-wide/16 v7, 0x2

    div-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 664
    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v3}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v3

    iget-wide v3, v3, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    invoke-static {v3, v4, v1, v2}, Lcom/ansca/corona/CoronaSensorManager;->compareSensorTimestamps(JJ)I

    move-result v1

    if-gtz v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v2}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$2000(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-virtual {v4}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v7

    mul-long v7, v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    .line 669
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-wide v1, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v3}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$2000(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ansca/corona/CoronaSensorManager;->subtractSensorTimestamps(JJ)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x3e112e0be826d695L    # 1.0E-9

    .line 670
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v1, v3

    .line 671
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v2

    iget-wide v2, v2, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    invoke-static {v1, v2, v3}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$2002(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;J)J

    .line 676
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->isNaturalOrientationPortrait()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 679
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v2}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v2

    iget-object v2, v2, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    aget v1, v2, v1

    neg-float v1, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v1, v3

    .line 680
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-object v1, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    aget v1, v1, v0

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 681
    iget-object v5, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v5

    iget-object v5, v5, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    const/4 v8, 0x2

    aget v5, v5, v8

    neg-float v5, v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v8, v3

    if-nez v0, :cond_4

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    mul-double v1, v1, v3

    :cond_4
    move-wide v8, v1

    .line 687
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/events/AccelerometerTask;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/ansca/corona/events/AccelerometerTask;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_5
    return-void
.end method
