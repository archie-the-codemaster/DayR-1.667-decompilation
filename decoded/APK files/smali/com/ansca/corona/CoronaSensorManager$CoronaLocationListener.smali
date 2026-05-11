.class Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaLocationListener"
.end annotation


# instance fields
.field private fHasReceivedData:Z

.field private fSupportsGps:Z

.field private fSupportsNetwork:Z

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 836
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fHasReceivedData:Z

    .line 837
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsGps:Z

    .line 838
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsNetwork:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$1;)V
    .locals 0

    .line 835
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;-><init>(Lcom/ansca/corona/CoronaSensorManager;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 21

    move-object/from16 v0, p0

    .line 864
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    iget-boolean v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fHasReceivedData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsGps:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 869
    iput-boolean v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fHasReceivedData:Z

    .line 872
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v1

    new-instance v15, Lcom/ansca/corona/events/LocationTask;

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 875
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 876
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    .line 877
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v9, v2

    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v11, v2

    .line 879
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v13, v2

    move-object/from16 v17, v1

    .line 880
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v0, v18

    move-object v2, v15

    move-object/from16 v20, v15

    move-wide v15, v0

    invoke-direct/range {v2 .. v16}, Lcom/ansca/corona/events/LocationTask;-><init>(DDDDDDD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    .line 873
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setSupportsGps()V
    .locals 1

    const/4 v0, 0x1

    .line 841
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsGps:Z

    return-void
.end method

.method public setSupportsNetwork()V
    .locals 1

    const/4 v0, 0x1

    .line 845
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->fSupportsNetwork:Z

    return-void
.end method
