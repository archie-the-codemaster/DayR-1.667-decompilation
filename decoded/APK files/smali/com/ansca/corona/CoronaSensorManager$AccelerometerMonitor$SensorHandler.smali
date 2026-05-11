.class Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .line 609
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1600(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 620
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1602(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z

    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1700(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->copyFrom(Landroid/hardware/SensorEvent;)V

    .line 628
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->access$1802(Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;Z)Z

    return-void
.end method
