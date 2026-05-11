.class Lcom/ansca/corona/CoronaSensorManager$1;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaSensorManager;->startType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;

.field final synthetic val$eventType:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaSensorManager;I)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    iput p2, p0, Lcom/ansca/corona/CoronaSensorManager$1;->val$eventType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    .line 129
    iget v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->val$eventType:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    const/4 v3, 0x2

    if-eq v1, v3, :cond_11

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    :cond_0
    :goto_0
    move-object v3, v0

    goto/16 :goto_6

    .line 150
    :cond_1
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaSensorManager;->access$202(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 151
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    new-instance v2, Lcom/ansca/corona/CoronaSensorManager$1$1;

    invoke-direct {v2, v0}, Lcom/ansca/corona/CoronaSensorManager$1$1;-><init>(Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaSensorManager;->access$402(Lcom/ansca/corona/CoronaSensorManager;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 193
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$300(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v2}, Lcom/ansca/corona/CoronaSensorManager;->access$400(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v4, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v4}, Lcom/ansca/corona/CoronaSensorManager;->access$200(Lcom/ansca/corona/CoronaSensorManager;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_10

    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 209
    :cond_4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v5, "android.hardware.location.gps"

    .line 210
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "android.hardware.location.network"

    .line 211
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    const-string v1, "Corona"

    const-string v2, "WARNING: Unable to set up location listener. This device is incapable of providing location data."

    .line 213
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v6, 0x0

    .line 221
    iget-object v7, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    new-instance v8, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    invoke-direct {v8, v7, v3}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;-><init>(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-static {v7, v8}, Lcom/ansca/corona/CoronaSensorManager;->access$702(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v5, :cond_6

    .line 222
    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 224
    iget-object v5, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager;->access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->setSupportsGps()V

    .line 226
    iget-object v5, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    iget-object v5, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    .line 227
    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager;->access$900(Lcom/ansca/corona/CoronaSensorManager;)D

    move-result-wide v5

    double-to-float v12, v5

    iget-object v5, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager;->access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v13

    const-string v9, "gps"

    .line 226
    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 230
    iget-object v5, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v5}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v5

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    move-object v5, v3

    :goto_2
    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    if-eqz v1, :cond_8

    .line 232
    invoke-virtual {v4, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 234
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;->setSupportsNetwork()V

    .line 236
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v9

    const-wide/16 v11, 0x3e8

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    .line 237
    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$900(Lcom/ansca/corona/CoronaSensorManager;)D

    move-result-wide v13

    double-to-float v13, v13

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v14

    const-string v10, "network"

    .line 236
    invoke-virtual/range {v9 .. v14}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    if-nez v5, :cond_7

    .line 241
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v5, "network"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    :cond_7
    const/4 v6, 0x1

    .line 244
    :cond_8
    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 245
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v9

    const-wide/16 v11, 0x3e8

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    .line 246
    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$900(Lcom/ansca/corona/CoronaSensorManager;)D

    move-result-wide v13

    double-to-float v13, v13

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$700(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$CoronaLocationListener;

    move-result-object v14

    const-string v10, "passive"

    .line 245
    invoke-virtual/range {v9 .. v14}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    if-nez v5, :cond_a

    .line 250
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1000(Lcom/ansca/corona/CoronaSensorManager;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v4, "passive"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    goto :goto_3

    :cond_9
    move v2, v6

    .line 256
    :cond_a
    :goto_3
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v5, :cond_b

    .line 257
    iget-object v1, v0, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$500(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v1

    new-instance v4, Lcom/ansca/corona/events/LocationTask;

    .line 258
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 259
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 260
    invoke-virtual {v5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v14

    .line 261
    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object/from16 v24, v4

    float-to-double v3, v6

    .line 262
    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v6

    move-object/from16 v25, v7

    float-to-double v6, v6

    .line 263
    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v9

    move-object/from16 v26, v1

    float-to-double v0, v9

    move-object/from16 v27, v8

    .line 264
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v16, 0x408f400000000000L    # 1000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v22, v8, v16

    move-object/from16 v9, v24

    move-wide/from16 v16, v3

    move-wide/from16 v18, v6

    move-wide/from16 v20, v0

    invoke-direct/range {v9 .. v23}, Lcom/ansca/corona/events/LocationTask;-><init>(DDDDDDD)V

    move-object/from16 v1, v24

    move-object/from16 v0, v26

    .line 257
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_4

    :cond_b
    move-object/from16 v25, v7

    move-object/from16 v27, v8

    :goto_4
    if-nez v2, :cond_f

    .line 269
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, v25

    .line 270
    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v1

    move-object/from16 v2, v27

    .line 272
    invoke-virtual {v0, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v2

    .line 274
    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v1, v3, :cond_c

    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v2, v3, :cond_c

    move-object/from16 v3, p0

    .line 275
    iget-object v0, v3, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$1100(Lcom/ansca/corona/CoronaSensorManager;)V

    goto :goto_6

    :cond_c
    move-object/from16 v3, p0

    .line 276
    sget-object v4, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-eq v1, v4, :cond_13

    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v2, v1, :cond_d

    goto :goto_6

    .line 279
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_13

    .line 280
    iget-object v1, v3, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1200(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object v1

    if-nez v1, :cond_e

    .line 281
    iget-object v1, v3, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    new-instance v2, Lcom/ansca/corona/permissions/PermissionsSettings;

    sget-object v4, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    const-string v5, "android.permission-group.LOCATION"

    invoke-virtual {v0, v4, v5}, Lcom/ansca/corona/permissions/PermissionsServices;->getRequestedPermissionsInStateForGroup(Lcom/ansca/corona/permissions/PermissionState;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaSensorManager;->access$1202(Lcom/ansca/corona/CoronaSensorManager;Lcom/ansca/corona/permissions/PermissionsSettings;)Lcom/ansca/corona/permissions/PermissionsSettings;

    .line 284
    :cond_e
    iget-object v1, v3, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1200(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->needsService()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 285
    iget-object v1, v3, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v1}, Lcom/ansca/corona/CoronaSensorManager;->access$1200(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object v1

    new-instance v2, Lcom/ansca/corona/CoronaSensorManager$LocationRequestPermissionsResultHandler;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/ansca/corona/CoronaSensorManager$LocationRequestPermissionsResultHandler;-><init>(Lcom/ansca/corona/CoronaSensorManager$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    goto :goto_6

    :cond_f
    move-object/from16 v3, p0

    goto :goto_6

    :cond_10
    :goto_5
    move-object v3, v0

    return-void

    :cond_11
    move-object v3, v0

    .line 144
    iget-object v0, v3, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$100(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$GyroscopeMonitor;->start()V

    goto :goto_6

    :cond_12
    move-object v3, v0

    .line 140
    iget-object v0, v3, Lcom/ansca/corona/CoronaSensorManager$1;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-static {v0}, Lcom/ansca/corona/CoronaSensorManager;->access$000(Lcom/ansca/corona/CoronaSensorManager;)Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager$AccelerometerMonitor;->start()V

    :cond_13
    :goto_6
    return-void
.end method
