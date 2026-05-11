.class Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorMeasurement"
.end annotation


# instance fields
.field public accuracy:I

.field public sensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;

.field public timestamp:J

.field public values:[F


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 2

    .line 312
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 313
    iput p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->accuracy:I

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->sensor:Landroid/hardware/Sensor;

    const-wide/16 v0, 0x0

    .line 315
    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    .line 316
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/SensorEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->accuracy:I

    .line 325
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->sensor:Landroid/hardware/Sensor;

    .line 326
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->timestamp:J

    .line 328
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    :cond_1
    const/4 v0, 0x0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMeasurement;->values:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
