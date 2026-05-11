.class public Lcom/ansca/corona/JavaToNativeShim;
.super Ljava/lang/Object;
.source "JavaToNativeShim.java"


# static fields
.field public static final EventTypeAccelerometer:I = 0x1

.field public static final EventTypeGyroscope:I = 0x2

.field public static final EventTypeHeading:I = 0x4

.field public static final EventTypeLocation:I = 0x3

.field public static final EventTypeMultitouch:I = 0x5

.field public static final EventTypeNumTypes:I = 0x6

.field public static final EventTypeOrientation:I = 0x0

.field public static final EventTypeUnknown:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lua"

    .line 125
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jnlua5.1"

    .line 126
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "openal"

    .line 127
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "mpg123"

    .line 130
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "almixer"

    .line 134
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "corona"

    .line 135
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortShowingImageProvider(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeAbortShowingImageProvider(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static abortShowingVideoProvider(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeAbortShowingVideoProvider(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static accelerometerEvent(Lcom/ansca/corona/CoronaRuntime;DDDD)V
    .locals 11

    if-eqz p0, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-static/range {v1 .. v10}, Lcom/ansca/corona/JavaToNativeShim;->nativeAccelerometerEvent(JDDDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static alertCallback(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeAlertCallback(JIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applicationOpenEvent(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeApplicationOpenEvent(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static axisEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/AxisDataEventInfo;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    .line 501
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 504
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getCoronaDeviceId()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 505
    :goto_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ansca/corona/input/AxisDataEventInfo;->getAxisIndex()I

    move-result p0

    invoke-virtual {p2}, Lcom/ansca/corona/input/AxisDataEventInfo;->getDataPoint()Lcom/ansca/corona/input/AxisDataPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ansca/corona/input/AxisDataPoint;->getValue()F

    move-result p2

    invoke-static {v0, v1, p1, p0, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeAxisEvent(JIIF)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static convertCoronaPointToAndroidPoint(Lcom/ansca/corona/CoronaRuntime;II)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeConvertCoronaPointToAndroidPoint(JII)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 269
    instance-of p1, p0, Landroid/graphics/Point;

    if-eqz p1, :cond_1

    .line 270
    move-object v0, p0

    check-cast v0, Landroid/graphics/Point;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static copyBitmap(Lcom/ansca/corona/CoronaRuntime;JLandroid/graphics/Bitmap;FIZ)Z
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v3

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/ansca/corona/JavaToNativeShim;->nativeCopyBitmap(JJLandroid/graphics/Bitmap;FIZ)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static copyBitmapInfo(Lcom/ansca/corona/CoronaRuntime;JIIFI)Z
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v3

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/ansca/corona/JavaToNativeShim;->nativeCopyBitmapInfo(JJIIFI)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static destroy(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeDone(J)V

    return-void
.end method

.method public static dispatchEventInLua(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeDispatchEventInLua(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getBuildId(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 3

    const-string v0, "unknown"

    if-eqz p0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetBuildId(J)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getContentHeightInPixels(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetContentHeightInPixels(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getContentWidthInPixels(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetContentWidthInPixels(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getCoronaRuntimeFromBridge(J)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 792
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetCoronaRuntime(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method public static getHorizontalMarginInPixels(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetHorizontalMarginInPixels(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getKeyNameFromKeyCode(I)Ljava/lang/String;
    .locals 0

    .line 217
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetKeyNameFromKeyCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxTextureSize(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetMaxTextureSize(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 143
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVerticalMarginInPixels(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetVerticalMarginInPixels(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static gyroscopeEvent(Lcom/ansca/corona/CoronaRuntime;DDDD)V
    .locals 11

    if-eqz p0, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-static/range {v1 .. v10}, Lcom/ansca/corona/JavaToNativeShim;->nativeGyroscopeEvent(JDDDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static imagePickerEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-eqz p0, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeImagePickerEvent(JLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static init(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 193
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeInit(Lcom/ansca/corona/CoronaRuntime;)J

    move-result-wide v0

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/ansca/corona/CoronaRuntime;->setJavaToNativeBridgeAddress(J)V

    :cond_0
    return-void
.end method

.method public static inputDeviceStatusEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/InputDeviceStatusEventInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    .line 392
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getCoronaDeviceId()I

    move-result p0

    invoke-virtual {p2}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo;->hasConnectionStateChanged()Z

    move-result p1

    invoke-virtual {p2}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo;->wasReconfigured()Z

    move-result p2

    .line 391
    invoke-static {v0, v1, p0, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeInputDeviceStatusEvent(JIZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static keyEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/KeyPhase;IZZZZ)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 485
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 488
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getCoronaDeviceId()I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/ansca/corona/input/KeyPhase;->toCoronaNumericId()I

    move-result v4

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 489
    invoke-static/range {v1 .. v9}, Lcom/ansca/corona/JavaToNativeShim;->nativeKeyEvent(JIIIZZZZ)Z

    move-result v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static locationEvent(Lcom/ansca/corona/CoronaRuntime;DDDDDDD)V
    .locals 17

    if-eqz p0, :cond_1

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    invoke-static/range {v1 .. v16}, Lcom/ansca/corona/JavaToNativeShim;->nativeLocationEvent(JDDDDDDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mapAddressReceivedEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    if-eqz p0, :cond_1

    .line 726
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapAddressReceivedEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mapAddressRequestFailedEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 736
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapAddressRequestFailedEvent(JLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mapMarkerEvent(Lcom/ansca/corona/CoronaRuntime;IIDD)V
    .locals 9

    if-eqz p0, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v1 .. v8}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapMarkerEvent(JIIDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mapRequestLocationEvent(Lcom/ansca/corona/CoronaRuntime;IDDLjava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapRequestLocationEvent(JIDDLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mapRequestLocationFailed(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 752
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapRequestLocationFailedEvent(JILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mapTappedEvent(Lcom/ansca/corona/CoronaRuntime;IDD)V
    .locals 8

    if-eqz p0, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapTappedEvent(JIDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static memoryWarningEvent(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeMemoryWarningEvent(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static mouseEvent(Lcom/ansca/corona/CoronaRuntime;IIIIJZZZ)V
    .locals 12

    if-eqz p0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 429
    invoke-static/range {v1 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->nativeMouseEvent(JIIIIJZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static multitouchEventAdd(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/TouchTracker;)V
    .locals 12

    if-eqz p0, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    .line 462
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result p0

    float-to-int v3, p0

    .line 463
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result p0

    float-to-int v4, p0

    .line 464
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getStartPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result p0

    float-to-int v5, p0

    .line 465
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getStartPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result p0

    float-to-int v6, p0

    .line 466
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getPhase()Lcom/ansca/corona/input/TouchPhase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPhase;->toCoronaNumericId()I

    move-result v7

    .line 467
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getTimestamp()J

    move-result-wide v8

    .line 468
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getTouchId()I

    move-result v10

    .line 469
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getPressure()F

    move-result v11

    .line 461
    invoke-static/range {v1 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->nativeMultitouchEventAdd(JIIIIIJIF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static multitouchEventBegin(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeMultitouchEventBegin(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static multitouchEventEnd(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeMultitouchEventEnd(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static native nativeAbortShowingImageProvider(J)V
.end method

.method private static native nativeAbortShowingVideoProvider(J)V
.end method

.method private static native nativeAccelerometerEvent(JDDDD)V
.end method

.method private static native nativeAddInputDeviceAxis(JIIFFFZ)V
.end method

.method private static native nativeAlertCallback(JIZ)V
.end method

.method private static native nativeApplicationOpenEvent(J)V
.end method

.method private static native nativeAxisEvent(JIIF)V
.end method

.method private static native nativeClearInputDeviceAxes(JI)V
.end method

.method private static native nativeConvertCoronaPointToAndroidPoint(JII)Ljava/lang/Object;
.end method

.method private static native nativeCopyBitmap(JJLandroid/graphics/Bitmap;FIZ)Z
.end method

.method private static native nativeCopyBitmapInfo(JJIIFI)Z
.end method

.method private static native nativeDispatchEventInLua(J)V
.end method

.method private static native nativeDone(J)V
.end method

.method private static native nativeGetBuildId(J)Ljava/lang/String;
.end method

.method private static native nativeGetContentHeightInPixels(J)I
.end method

.method private static native nativeGetContentWidthInPixels(J)I
.end method

.method private static native nativeGetCoronaRuntime(J)Ljava/lang/Object;
.end method

.method private static native nativeGetHorizontalMarginInPixels(J)I
.end method

.method private static native nativeGetKeyNameFromKeyCode(I)Ljava/lang/String;
.end method

.method private static native nativeGetMaxTextureSize(J)I
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private static native nativeGetVerticalMarginInPixels(J)I
.end method

.method private static native nativeGyroscopeEvent(JDDDD)V
.end method

.method private static native nativeImagePickerEvent(JLjava/lang/String;)V
.end method

.method private static native nativeInit(Lcom/ansca/corona/CoronaRuntime;)J
.end method

.method private static native nativeInputDeviceStatusEvent(JIZZ)V
.end method

.method private static native nativeKeyEvent(JIIIZZZZ)Z
.end method

.method private static native nativeLocationEvent(JDDDDDDD)V
.end method

.method private static native nativeMapAddressReceivedEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeMapAddressRequestFailedEvent(JLjava/lang/String;)V
.end method

.method private static native nativeMapMarkerEvent(JIIDD)V
.end method

.method private static native nativeMapRequestLocationEvent(JIDDLjava/lang/String;)V
.end method

.method private static native nativeMapRequestLocationFailedEvent(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeMapTappedEvent(JIDD)V
.end method

.method private static native nativeMemoryWarningEvent(J)V
.end method

.method private static native nativeMouseEvent(JIIIIJZZZ)V
.end method

.method private static native nativeMultitouchEventAdd(JIIIIIJIF)V
.end method

.method private static native nativeMultitouchEventBegin(J)V
.end method

.method private static native nativeMultitouchEventEnd(J)V
.end method

.method private static native nativeOrientationChanged(JII)V
.end method

.method private static native nativePause(J)V
.end method

.method private static native nativePopupClosedEvent(JLjava/lang/String;Z)V
.end method

.method private static native nativeRecordCallback(JJI)V
.end method

.method private static native nativeReinitializeRenderer(J)V
.end method

.method private static native nativeRender(J)V
.end method

.method private static native nativeResize(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
.end method

.method private static native nativeResizeEvent(J)V
.end method

.method private static native nativeResume(J)V
.end method

.method private static native nativeSetAudioRecorderState(JJZ)V
.end method

.method private static native nativeSetZipFileEntryInfo(JLjava/lang/String;Ljava/lang/String;JJZ)V
.end method

.method private static native nativeSoundEndCallback(JJ)V
.end method

.method private static native nativeStoreTransactionEvent(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeTapEvent(JIII)V
.end method

.method private static native nativeTextEditingEvent(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeTextEvent(JIZZ)V
.end method

.method private static native nativeTouchEvent(JIIIIIJIF)V
.end method

.method private static native nativeUnloadResources(J)V
.end method

.method private static native nativeUpdateInputDevice(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
.end method

.method private static native nativeUseDefaultLuaErrorHandler()V
.end method

.method private static native nativeUseJavaLuaErrorHandler()V
.end method

.method private static native nativeVideoEndCallback(JJ)V
.end method

.method private static native nativeVideoPickerEvent(JLjava/lang/String;IJ)V
.end method

.method private static native nativeVideoViewEnded(JI)V
.end method

.method private static native nativeVideoViewPrepared(JI)V
.end method

.method private static native nativeWebViewClosed(JI)V
.end method

.method private static native nativeWebViewDidFailLoadUrl(JILjava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native nativeWebViewFinishedLoadUrl(JILjava/lang/String;)V
.end method

.method private static native nativeWebViewHistoryUpdated(JIZZ)V
.end method

.method private static native nativeWebViewShouldLoadUrl(JILjava/lang/String;I)V
.end method

.method public static orientationChanged(Lcom/ansca/corona/CoronaRuntime;II)V
    .locals 2

    if-eqz p0, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeOrientationChanged(JII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static pause(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativePause(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static popupClosedEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p0, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativePopupClosedEvent(JLjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static recordCallback(Lcom/ansca/corona/CoronaRuntime;JI)V
    .locals 2

    if-eqz p0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeRecordCallback(JJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static reinitializeRenderer(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeReinitializeRenderer(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static render(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeRender(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static resize(Lcom/ansca/corona/CoronaRuntime;Landroid/content/Context;IILcom/ansca/corona/WindowOrientation;Z)V
    .locals 16

    .line 398
    new-instance v0, Lcom/ansca/corona/storage/FileServices;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    if-eqz p0, :cond_1

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v3

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getDocumentsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationSupportDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 408
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 409
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 410
    invoke-virtual {v0}, Lcom/ansca/corona/storage/FileServices;->getExpansionFileDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 411
    invoke-virtual/range {p4 .. p4}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v14

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v15, p5

    .line 403
    invoke-static/range {v3 .. v15}, Lcom/ansca/corona/JavaToNativeShim;->nativeResize(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static resizeEvent(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeResizeEvent(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static resume(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeResume(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setAudioRecorderState(Lcom/ansca/corona/CoronaRuntime;JZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeSetAudioRecorderState(JJZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setZipFileEntryInfo(JLcom/ansca/corona/storage/AssetFileLocationInfo;)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p2}, Lcom/ansca/corona/storage/AssetFileLocationInfo;->getPackageFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p2}, Lcom/ansca/corona/storage/AssetFileLocationInfo;->getPackageFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 345
    invoke-virtual {p2}, Lcom/ansca/corona/storage/AssetFileLocationInfo;->getZipEntryName()Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-virtual {p2}, Lcom/ansca/corona/storage/AssetFileLocationInfo;->getByteOffsetInPackage()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/ansca/corona/storage/AssetFileLocationInfo;->getByteCountInPackage()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/ansca/corona/storage/AssetFileLocationInfo;->isCompressed()Z

    move-result v9

    move-wide v1, p0

    .line 344
    invoke-static/range {v1 .. v9}, Lcom/ansca/corona/JavaToNativeShim;->nativeSetZipFileEntryInfo(JLjava/lang/String;Ljava/lang/String;JJZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static soundEndCallback(Lcom/ansca/corona/CoronaRuntime;J)V
    .locals 2

    if-eqz p0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeSoundEndCallback(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static storeTransactionEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V
    .locals 15

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_4

    .line 701
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 707
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->hasTransactionTime()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getTransactionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_2
    move-object v11, v1

    .line 710
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->hasOriginalTransactionTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getOriginalTransactionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v14, v1

    .line 715
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v2

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getState()Lcom/ansca/corona/purchasing/StoreTransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/StoreTransactionState;->toValue()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getErrorType()Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->toValue()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getProductName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getReceipt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getTransactionStringId()Ljava/lang/String;

    move-result-object v10

    .line 718
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getOriginalReceipt()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getOriginalTransactionStringId()Ljava/lang/String;

    move-result-object v13

    .line 715
    invoke-static/range {v2 .. v14}, Lcom/ansca/corona/JavaToNativeShim;->nativeStoreTransactionEvent(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static tapEvent(Lcom/ansca/corona/CoronaRuntime;III)V
    .locals 2

    if-eqz p0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeTapEvent(JIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static textEditingEvent(Lcom/ansca/corona/CoronaRuntime;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/ViewManager;->hasDisplayObjectWithId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/ansca/corona/JavaToNativeShim;->nativeTextEditingEvent(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static textEvent(Lcom/ansca/corona/CoronaRuntime;IZZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/ViewManager;->hasDisplayObjectWithId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeTextEvent(JIZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static touchEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/TouchTracker;)V
    .locals 12

    if-eqz p0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    .line 440
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result p0

    float-to-int v3, p0

    .line 441
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result p0

    float-to-int v4, p0

    .line 442
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getStartPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result p0

    float-to-int v5, p0

    .line 443
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getStartPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result p0

    float-to-int v6, p0

    .line 444
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getPhase()Lcom/ansca/corona/input/TouchPhase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPhase;->toCoronaNumericId()I

    move-result v7

    .line 445
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchPoint;->getTimestamp()J

    move-result-wide v8

    .line 446
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getTouchId()I

    move-result v10

    .line 447
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchTracker;->getPressure()F

    move-result v11

    .line 439
    invoke-static/range {v1 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->nativeTouchEvent(JIIIIIJIF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static unloadResources(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->nativeUnloadResources(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static update(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    .line 354
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    .line 361
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getCoronaDeviceId()I

    move-result v3

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result v4

    .line 362
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getType()Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceType;->toCoronaIntegerId()I

    move-result v5

    .line 363
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getPermanentStringId()Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getProductName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 365
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->canVibrate()Z

    move-result v9

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getPlayerNumber()I

    move-result v10

    .line 366
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getConnectionState()Lcom/ansca/corona/input/ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/ConnectionState;->toCoronaIntegerId()I

    move-result v11

    .line 359
    invoke-static/range {v1 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->nativeUpdateInputDevice(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 369
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getCoronaDeviceId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->nativeClearInputDeviceAxes(JI)V

    .line 370
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getAxes()Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/AxisInfo;

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v2

    .line 373
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterface;->getCoronaDeviceId()I

    move-result v4

    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisInfo;->getType()Lcom/ansca/corona/input/AxisType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ansca/corona/input/AxisType;->toCoronaIntegerId()I

    move-result v5

    .line 374
    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisInfo;->getMinValue()F

    move-result v6

    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisInfo;->getMaxValue()F

    move-result v7

    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisInfo;->getAccuracy()F

    move-result v8

    .line 375
    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisInfo;->isProvidingAbsoluteValues()Z

    move-result v9

    .line 372
    invoke-static/range {v2 .. v9}, Lcom/ansca/corona/JavaToNativeShim;->nativeAddInputDeviceAxis(JIIFFFZ)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static useDefaultLuaErrorHandler()V
    .locals 0

    .line 278
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeUseDefaultLuaErrorHandler()V

    return-void
.end method

.method public static useJavaLuaErrorHandler()V
    .locals 0

    .line 283
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeUseJavaLuaErrorHandler()V

    return-void
.end method

.method public static videoEndCallback(Lcom/ansca/corona/CoronaRuntime;J)V
    .locals 2

    if-eqz p0, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeVideoEndCallback(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static videoPickerEvent(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;IJ)V
    .locals 6

    if-eqz p0, :cond_2

    .line 658
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    move-object v2, p1

    .line 664
    div-int/lit16 v3, p2, 0x3e8

    .line 665
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ansca/corona/JavaToNativeShim;->nativeVideoPickerEvent(JLjava/lang/String;IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static videoViewEnded(Lcom/ansca/corona/CoronaRuntime;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 785
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeVideoViewEnded(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static videoViewPrepared(Lcom/ansca/corona/CoronaRuntime;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 777
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeVideoViewPrepared(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static webViewClosed(Lcom/ansca/corona/CoronaRuntime;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewClosed(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static webViewDidFailLoadUrl(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    if-eqz p0, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewDidFailLoadUrl(JILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static webViewFinishedLoadUrl(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewFinishedLoadUrl(JILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static webViewHistoryUpdated(Lcom/ansca/corona/CoronaRuntime;IZZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewHistoryUpdated(JIZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static webViewShouldLoadUrl(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewShouldLoadUrl(JILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
