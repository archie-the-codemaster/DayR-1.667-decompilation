.class Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Lcom/ansca/corona/MessageBasedTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .line 777
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)V

    return-void
.end method


# virtual methods
.method public onTimerElapsed()V
    .locals 14

    .line 781
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2500(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2600(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 794
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-wide v1, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2702(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;J)J

    .line 795
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2602(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z

    return-void

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2700(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    const-wide/16 v7, 0x2

    div-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 805
    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v3}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v3

    iget-wide v3, v3, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    invoke-static {v3, v4, v1, v2}, Lcom/ansca/corona/CoronaSensorManager;->compareSensorTimestamps(JJ)I

    move-result v1

    if-gtz v1, :cond_3

    .line 806
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v2}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2700(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-virtual {v4}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v7

    mul-long v7, v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    .line 810
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-wide v1, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v3}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2700(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ansca/corona/CoronaSensorManager;->subtractSensorTimestamps(JJ)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x3e112e0be826d695L    # 1.0E-9

    .line 811
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v1, v3

    .line 812
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v2

    iget-wide v2, v2, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    invoke-static {v1, v2, v3}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2702(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;J)J

    .line 816
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->isNaturalOrientationPortrait()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 819
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v2}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v2

    iget-object v2, v2, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    aget v1, v2, v1

    float-to-double v6, v1

    .line 820
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v1

    iget-object v1, v1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    aget v1, v1, v0

    float-to-double v1, v1

    .line 821
    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v3}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v3

    iget-object v3, v3, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-double v10, v3

    if-nez v0, :cond_4

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 823
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    :cond_4
    move-wide v8, v1

    .line 827
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    iget-object v0, v0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/events/GyroscopeTask;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/ansca/corona/events/GyroscopeTask;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_5
    return-void
.end method
