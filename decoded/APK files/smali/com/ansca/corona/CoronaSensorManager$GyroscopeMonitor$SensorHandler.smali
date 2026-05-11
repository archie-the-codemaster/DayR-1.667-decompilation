.class Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .line 750
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)V

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

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2300(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 761
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2302(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z

    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2400(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;)Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->copyFrom(Landroid/hardware/SensorEvent;)V

    .line 769
    iget-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor$SensorHandler;->this$1:Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->access$2502(Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;Z)Z

    return-void
.end method
