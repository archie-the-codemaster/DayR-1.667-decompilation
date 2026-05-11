.class Lcom/ansca/corona/CoronaSensorManager;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaSensorManager$LocationRequestPermissionsResultHandler;,
        Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;,
        Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;,
        Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;,
        Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;,
        Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
    }
.end annotation


# instance fields
.field private myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

.field private myActiveSensors:[Z

.field private myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

.field private myLastHeading:F

.field private myLocationListener:Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

.field private myLocationManager:Landroid/location/LocationManager;

.field private myLocationPermissionsSettings:Lcom/ansca/corona/permissions/PermissionsSettings;

.field private myLocationThreshold:D

.field private myOrientationSensor:Landroid/hardware/Sensor;

.field private myOrientationSensorListener:Landroid/hardware/SensorEventListener;

.field private mySensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 34
    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationThreshold:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 47
    iput v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLastHeading:F

    .line 55
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ansca/corona/CoronaSensorManager;->showLocationPermissionsMissingFromManifestAlert()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/permissions/PermissionsSettings;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationPermissionsSettings:Lcom/ansca/corona/permissions/PermissionsSettings;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/permissions/PermissionsSettings;)Lcom/ansca/corona/permissions/PermissionsSettings;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationPermissionsSettings:Lcom/ansca/corona/permissions/PermissionsSettings;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/Sensor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myOrientationSensorListener:Landroid/hardware/SensorEventListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ansca/corona/CoronaSensorManager;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLastHeading:F

    return p0
.end method

.method static synthetic access$602(Lcom/ansca/corona/CoronaSensorManager;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLastHeading:F

    return p1
.end method

.method static synthetic access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationListener:Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationListener:Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ansca/corona/CoronaSensorManager;)D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationThreshold:D

    return-wide v0
.end method

.method public static compareSensorTimestamps(JJ)I
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    :cond_0
    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    cmp-long v0, p0, p2

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getHandlerSafely()Landroid/os/Handler;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private showLocationPermissionsMissingFromManifestAlert()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->showLocationPermissionsMissingFromManifestAlert()V

    :cond_0
    return-void
.end method

.method private startType(I)V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/ansca/corona/CoronaSensorManager;->getHandlerSafely()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaSensorManager$1;-><init>(Lcom/ansca/corona/CoronaSensorManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopType(I)V
    .locals 2

    .line 909
    invoke-direct {p0}, Lcom/ansca/corona/CoronaSensorManager;->getHandlerSafely()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 916
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaSensorManager$2;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaSensorManager$2;-><init>(Lcom/ansca/corona/CoronaSensorManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static subtractSensorTimestamps(JJ)J
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    :cond_0
    sub-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public hasAccelerometer()Z
    .locals 3

    .line 1025
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 1027
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasGyroscope()Z
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 1042
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasHeadingHardware()Z
    .locals 3

    .line 1055
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 1057
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public init()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "sensor"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->mySensorManager:Landroid/hardware/SensorManager;

    const-string v1, "location"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationManager:Landroid/location/LocationManager;

    .line 78
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    .line 79
    new-instance v0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 82
    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public isActive(I)Z
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1067
    invoke-direct {p0, v0}, Lcom/ansca/corona/CoronaSensorManager;->stopType(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1077
    invoke-direct {p0, v0}, Lcom/ansca/corona/CoronaSensorManager;->startType(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAccelerometerInterval(I)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myAccelerometerMonitor:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->setIntervalInHertz(I)V

    return-void
.end method

.method public setEventNotification(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->start(I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->stop(I)V

    :goto_0
    return-void
.end method

.method public setGyroscopeInterval(I)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myGyroscopeMonitor:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->setIntervalInHertz(I)V

    return-void
.end method

.method public setLocationAccuracy(D)V
    .locals 0

    return-void
.end method

.method public setLocationThreshold(D)V
    .locals 0

    .line 1096
    iput-wide p1, p0, Lcom/ansca/corona/CoronaSensorManager;->myLocationThreshold:D

    return-void
.end method

.method public start(I)V
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 971
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->startType(I)V

    .line 973
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aput-boolean v1, v0, p1

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 995
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaSensorManager;->stop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop(I)V
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 985
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager;->stopType(I)V

    .line 987
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager;->myActiveSensors:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method
