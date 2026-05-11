.class Lcom/ansca/corona/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private fCamera:Landroid/hardware/Camera;

.field private fCameraOrientationInDegrees:I

.field private fDeviceOrientationInDegrees:I

.field private fHolder:Landroid/view/SurfaceHolder;

.field private fIsCameraOrientationKnown:Z

.field private fIsUsingFrontFacingCamera:Z

.field private fOrientationListener:Landroid/view/OrientationEventListener;

.field private fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

.field private fUsingCameraId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    .line 27
    iput-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    .line 28
    iput-object v0, p0, Lcom/ansca/corona/CameraView;->fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/ansca/corona/CameraView;->fDeviceOrientationInDegrees:I

    .line 31
    iput v0, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    .line 32
    iput-boolean v0, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    .line 33
    iput v0, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    .line 34
    iput-boolean v0, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z

    .line 45
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 46
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 47
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 52
    new-instance v0, Lcom/ansca/corona/CameraView$1;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/CameraView$1;-><init>(Lcom/ansca/corona/CameraView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method static synthetic access$002(Lcom/ansca/corona/CameraView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/ansca/corona/CameraView;->fDeviceOrientationInDegrees:I

    return p1
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    int-to-double v2, v0

    int-to-double v4, v1

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 274
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v7, v5

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 275
    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    iget v12, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    sub-double/2addr v10, v2

    .line 276
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fa999999999999aL    # 0.05

    cmpl-double v14, v10, v12

    if-lez v14, :cond_2

    goto :goto_0

    .line 277
    :cond_2
    iget v10, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    cmpg-double v12, v10, v7

    if-gez v12, :cond_1

    .line 279
    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v7, v0

    move-object v0, v9

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    .line 286
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 287
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v7, v4

    cmpg-double v4, v7, v5

    if-gez v4, :cond_4

    .line 289
    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v4, v0

    move-object v0, v3

    move-wide v5, v4

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private updateCameraInformation()V
    .locals 8

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    .line 382
    iput-boolean v0, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z

    .line 383
    iput v0, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    :try_start_0
    const-string v1, "android.hardware.Camera$CameraInfo"

    .line 387
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 389
    const-class v3, Landroid/hardware/Camera;

    const-string v4, "getCameraInfo"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 390
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 391
    iget v6, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "facing"

    .line 392
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "orientation"

    .line 393
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 394
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v7, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    .line 396
    iput-boolean v7, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateCameraOrientation()V
    .locals 7

    .line 305
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/16 v5, 0xb4

    if-eq v1, v2, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    goto :goto_0

    :cond_2
    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    .line 325
    :goto_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v6, v0, :cond_4

    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 329
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z

    if-eqz v0, :cond_6

    .line 331
    iget v0, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    const/16 v0, 0x5a

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 342
    :goto_2
    iget-boolean v4, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    if-eqz v4, :cond_8

    add-int/2addr v1, v0

    .line 344
    rem-int/lit16 v1, v1, 0x168

    rsub-int v1, v1, 0x168

    .line 345
    rem-int/lit16 v1, v1, 0x168

    goto :goto_3

    :cond_8
    add-int/lit16 v4, v0, 0x168

    sub-int/2addr v4, v1

    .line 349
    rem-int/lit16 v1, v4, 0x168

    .line 351
    :goto_3
    iget-object v4, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 355
    iget-object v1, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 356
    iget v4, p0, Lcom/ansca/corona/CameraView;->fDeviceOrientationInDegrees:I

    sub-int/2addr v0, v4

    if-gez v0, :cond_9

    add-int/lit16 v0, v0, 0x168

    .line 360
    :cond_9
    iget-boolean v4, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    if-eqz v4, :cond_c

    if-eqz v2, :cond_a

    .line 363
    rem-int/lit16 v4, v0, 0xb4

    if-eqz v4, :cond_b

    :cond_a
    if-nez v2, :cond_c

    rem-int/lit16 v2, v0, 0xb4

    if-ne v2, v3, :cond_c

    :cond_b
    add-int/lit16 v0, v0, 0xb4

    .line 365
    rem-int/lit16 v0, v0, 0x168

    .line 368
    :cond_c
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 369
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method protected disableCamera()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 191
    iget-object v1, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 195
    iput-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    .line 198
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    return-void
.end method

.method protected enableCamera()V
    .locals 7

    .line 141
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    :try_start_0
    const-class v3, Landroid/hardware/Camera;

    const-string v4, "open"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 153
    iget v4, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    goto :goto_1

    .line 156
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    .line 158
    :goto_1
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraInformation()V

    .line 159
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraOrientation()V

    .line 160
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 161
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    return-void

    :catch_1
    nop

    .line 164
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 166
    iput-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    :cond_3
    const-string v0, "Corona"

    const-string v1, "Failed to enable camera."

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public getSelectedCameraIndex()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    return v0
.end method

.method public isCameraDisabled()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public selectCameraByIndex(I)V
    .locals 1

    .line 98
    iget v0, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    if-ne p1, v0, :cond_0

    return-void

    .line 103
    :cond_0
    iput p1, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    .line 106
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->disableCamera()V

    .line 108
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->enableCamera()V

    :cond_1
    return-void
.end method

.method public setTakePictureListener(Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ansca/corona/CameraView;->fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 241
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 243
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraOrientation()V

    .line 244
    iget-object p1, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    .line 230
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->enableCamera()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->disableCamera()V

    return-void
.end method

.method public takePicture()V
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 216
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraOrientation()V

    .line 217
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 220
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ansca/corona/CameraView;->fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
