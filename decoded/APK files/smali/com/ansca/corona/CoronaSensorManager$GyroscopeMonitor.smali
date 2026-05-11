.class Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
.super Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GyroscopeMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;,
        Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;
    }
.end annotation


# instance fields
.field private fHasReceivedMeasurement:Z

.field private fHasReceivedSample:Z

.field private fHasSkippedFirstMeasurement:Z

.field private fLastSampleTimestamp:J

.field private fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 2

    .line 716
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    .line 717
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    .line 720
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    .line 721
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    const/4 p1, 0x0

    .line 722
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    .line 723
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    .line 724
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    const-wide/16 v0, 0x0

    .line 725
    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSampleTimestamp:J

    .line 728
    new-instance p1, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->setSensorListener(Landroid/hardware/SensorEventListener;)V

    .line 729
    new-instance p1, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$TimerHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->setTimerListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$2300(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z
    .locals 0

    .line 695
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z
    .locals 0

    .line 695
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z
    .locals 0

    .line 695
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)J
    .locals 2

    .line 695
    iget-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSampleTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;J)J
    .locals 0

    .line 695
    iput-wide p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fLastSampleTimestamp:J

    return-wide p1
.end method


# virtual methods
.method public getSensorType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected onStarting()V
    .locals 1

    const/4 v0, 0x0

    .line 744
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasSkippedFirstMeasurement:Z

    .line 745
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedMeasurement:Z

    .line 746
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->fHasReceivedSample:Z

    return-void
.end method
