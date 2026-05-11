.class public Lcom/ansca/corona/CameraServices;
.super Ljava/lang/Object;
.source "CameraServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CameraServices$CameraRequestPermissionsResultHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraCount()I
    .locals 4

    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "getNumberOfCameras"

    new-array v3, v0, [Ljava/lang/Class;

    .line 125
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public static hasCamera()Z
    .locals 1

    .line 81
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasRearCamera()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static hasFrontFacingCamera()Z
    .locals 2

    .line 103
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasPermission()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.CAMERA"

    .line 48
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static hasRearCamera()Z
    .locals 2

    .line 90
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static requestCameraPermission()V
    .locals 4

    .line 63
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsSettings;

    const-string v2, "android.permission.CAMERA"

    invoke-direct {v1, v2}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Lcom/ansca/corona/CameraServices$CameraRequestPermissionsResultHandler;

    invoke-direct {v3}, Lcom/ansca/corona/CameraServices$CameraRequestPermissionsResultHandler;-><init>()V

    .line 73
    invoke-virtual {v0, v3, v1}, Lcom/ansca/corona/CoronaActivity;->registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/PermissionsSettings;)I

    move-result v1

    .line 72
    invoke-virtual {v0, v2, v1}, Lcom/ansca/corona/CoronaActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
