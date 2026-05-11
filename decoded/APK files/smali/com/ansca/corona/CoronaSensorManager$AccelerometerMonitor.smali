.class Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
.super Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccelerometerMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;,
        Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;
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

    .line 575
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    .line 576
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    .line 579
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    .line 580
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p1, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    const/4 p1, 0x0

    .line 581
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    .line 582
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    .line 583
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    const-wide/16 v0, 0x0

    .line 584
    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSampleTimestamp:J

    .line 587
    new-instance p1, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->setSensorListener(Landroid/hardware/SensorEventListener;)V

    .line 588
    new-instance p1, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$TimerHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->setTimerListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1600(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z
    .locals 0

    .line 554
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSensorMeasurement:Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z
    .locals 0

    .line 554
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z
    .locals 0

    .line 554
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)J
    .locals 2

    .line 554
    iget-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSampleTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;J)J
    .locals 0

    .line 554
    iput-wide p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fLastSampleTimestamp:J

    return-wide p1
.end method


# virtual methods
.method public getSensorType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStarting()V
    .locals 1

    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasSkippedFirstMeasurement:Z

    .line 604
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedMeasurement:Z

    .line 605
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->fHasReceivedSample:Z

    return-void
.end method
