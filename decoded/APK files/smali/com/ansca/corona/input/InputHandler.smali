.class public Lcom/ansca/corona/input/InputHandler;
.super Ljava/lang/Object;
.source "InputHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputHandler$ApiLevel14;,
        Lcom/ansca/corona/input/InputHandler$ApiLevel12;
    }
.end annotation


# instance fields
.field private fController:Lcom/ansca/corona/Controller;

.field private fTapTrackers:Lcom/ansca/corona/input/TapTrackerCollection;

.field private fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 37
    new-instance v0, Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/TouchTrackerCollection;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    .line 38
    new-instance v0, Lcom/ansca/corona/input/TapTrackerCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/TapTrackerCollection;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTapTrackers:Lcom/ansca/corona/input/TapTrackerCollection;

    .line 39
    iput-object p1, p0, Lcom/ansca/corona/input/InputHandler;->fController:Lcom/ansca/corona/Controller;

    return-void
.end method

.method private handleAxisEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 158
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    if-lez v2, :cond_2

    .line 165
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 167
    new-instance v1, Lcom/ansca/corona/input/InputDeviceServices;

    invoke-direct {v1, v2}, Lcom/ansca/corona/input/InputDeviceServices;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v1, p1}, Lcom/ansca/corona/input/InputDeviceServices;->fetchDeviceFrom(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    return v0

    .line 177
    :cond_3
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceContext;->beginUpdate()V

    .line 178
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->getAxes()Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;

    move-result-object v2

    const/4 v3, 0x0

    .line 179
    :goto_0
    invoke-virtual {v2}, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 180
    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->getByIndex(I)Lcom/ansca/corona/input/AxisInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 183
    :try_start_0
    invoke-virtual {v4}, Lcom/ansca/corona/input/AxisInfo;->getType()Lcom/ansca/corona/input/AxisType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/input/AxisType;->toAndroidIntegerId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/ansca/corona/input/InputHandler$ApiLevel12;->getAxisValueFrom(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 184
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v5

    new-instance v6, Lcom/ansca/corona/input/AxisDataPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {v6, v4, v7, v8}, Lcom/ansca/corona/input/AxisDataPoint;-><init>(FJ)V

    invoke-virtual {v5, v3, v6}, Lcom/ansca/corona/input/InputDeviceContext;->update(ILcom/ansca/corona/input/AxisDataPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceContext;->endUpdate()V

    return v0
.end method

.method private handleMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 208
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/input/InputDeviceType;->from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v3

    .line 209
    sget-object v4, Lcom/ansca/corona/input/InputDeviceType;->MOUSE:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v3, v4, :cond_1

    return v2

    .line 214
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gtz v3, :cond_2

    return v2

    .line 219
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 222
    new-instance v4, Lcom/ansca/corona/input/TouchPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/ansca/corona/input/TouchPoint;-><init>(FFJ)V

    .line 228
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    const/4 v7, 0x1

    if-lt v5, v6, :cond_3

    .line 229
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/input/InputHandler$ApiLevel14;->isPrimaryMouseButtonPressedFor(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/input/InputHandler$ApiLevel14;->isSecondaryMouseButtonPressedFor(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 231
    invoke-static/range {p1 .. p1}, Lcom/ansca/corona/input/InputHandler$ApiLevel14;->isMiddleMouseButtonPressedFor(Landroid/view/MotionEvent;)Z

    move-result v8

    move/from16 v16, v6

    move/from16 v17, v8

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 242
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xc

    const/4 v9, 0x0

    if-lt v6, v8, :cond_7

    const/16 v6, 0x8

    if-ne v3, v6, :cond_7

    const/16 v6, 0xa

    .line 246
    invoke-static {v1, v6}, Lcom/ansca/corona/input/InputHandler$ApiLevel12;->getAxisValueFrom(Landroid/view/MotionEvent;I)F

    move-result v6

    const/16 v8, 0x9

    .line 247
    invoke-static {v1, v8}, Lcom/ansca/corona/input/InputHandler$ApiLevel12;->getAxisValueFrom(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 251
    iget-object v10, v0, Lcom/ansca/corona/input/InputHandler;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v10}, Lcom/ansca/corona/Controller;->getDefaultFontSize()F

    move-result v10

    mul-float v6, v6, v10

    .line 252
    iget-object v10, v0, Lcom/ansca/corona/input/InputHandler;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v10}, Lcom/ansca/corona/Controller;->getDefaultFontSize()F

    move-result v10

    mul-float v8, v8, v10

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_6

    const/high16 v9, -0x40800000    # -1.0f

    mul-float v8, v8, v9

    :cond_6
    move v11, v6

    move v12, v8

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 261
    :goto_3
    iget-object v6, v0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz v6, :cond_8

    .line 263
    new-instance v6, Lcom/ansca/corona/input/RaiseMouseEventTask;

    .line 264
    invoke-virtual {v4}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v4}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result v10

    .line 266
    invoke-virtual {v4}, Lcom/ansca/corona/input/TouchPoint;->getTimestamp()J

    move-result-wide v13

    move-object v8, v6

    move v15, v5

    invoke-direct/range {v8 .. v17}, Lcom/ansca/corona/input/RaiseMouseEventTask;-><init>(FFFFJZZZ)V

    .line 270
    iget-object v8, v0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-virtual {v8, v6}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 274
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    .line 275
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 276
    iget-object v8, v0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {v8, v6, v1}, Lcom/ansca/corona/input/TouchTrackerCollection;->getByDeviceAndPointerId(II)Lcom/ansca/corona/input/TouchTracker;

    move-result-object v8

    if-nez v8, :cond_9

    .line 278
    new-instance v8, Lcom/ansca/corona/input/TouchTracker;

    invoke-direct {v8, v6, v1}, Lcom/ansca/corona/input/TouchTracker;-><init>(II)V

    .line 279
    iget-object v1, v0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {v1, v8}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    :cond_9
    const/4 v1, 0x3

    if-eqz v5, :cond_c

    if-eq v3, v1, :cond_c

    .line 285
    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchTracker;->hasNotStarted()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 287
    sget-object v1, Lcom/ansca/corona/input/TouchPhase;->BEGAN:Lcom/ansca/corona/input/TouchPhase;

    invoke-virtual {v8, v4, v1}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;)V

    :goto_4
    const/4 v2, 0x1

    goto :goto_5

    .line 293
    :cond_a
    invoke-virtual {v4}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 294
    invoke-virtual {v4}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-gez v1, :cond_b

    cmpl-float v1, v3, v5

    if-ltz v1, :cond_e

    .line 296
    :cond_b
    sget-object v1, Lcom/ansca/corona/input/TouchPhase;->MOVED:Lcom/ansca/corona/input/TouchPhase;

    invoke-virtual {v8, v4, v1}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;)V

    goto :goto_4

    .line 301
    :cond_c
    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchTracker;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_e

    if-ne v3, v1, :cond_d

    .line 304
    sget-object v1, Lcom/ansca/corona/input/TouchPhase;->CANCELED:Lcom/ansca/corona/input/TouchPhase;

    invoke-virtual {v8, v4, v1}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;)V

    goto :goto_4

    .line 307
    :cond_d
    sget-object v1, Lcom/ansca/corona/input/TouchPhase;->ENDED:Lcom/ansca/corona/input/TouchPhase;

    invoke-virtual {v8, v4, v1}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;)V

    goto :goto_4

    :cond_e
    :goto_5
    if-eqz v2, :cond_10

    .line 313
    iget-object v1, v0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz v1, :cond_10

    .line 314
    iget-object v1, v0, Lcom/ansca/corona/input/InputHandler;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->isMultitouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 315
    new-instance v1, Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-direct {v1}, Lcom/ansca/corona/input/TouchTrackerCollection;-><init>()V

    .line 316
    invoke-virtual {v1, v8}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    .line 317
    iget-object v2, v0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    new-instance v3, Lcom/ansca/corona/input/RaiseMultitouchEventTask;

    invoke-direct {v3, v1}, Lcom/ansca/corona/input/RaiseMultitouchEventTask;-><init>(Lcom/ansca/corona/input/TouchTrackerCollection;)V

    invoke-virtual {v2, v3}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_6

    .line 320
    :cond_f
    iget-object v1, v0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    new-instance v2, Lcom/ansca/corona/input/RaiseTouchEventTask;

    invoke-direct {v2, v8}, Lcom/ansca/corona/input/RaiseTouchEventTask;-><init>(Lcom/ansca/corona/input/TouchTracker;)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 326
    :cond_10
    :goto_6
    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchTracker;->getPhase()Lcom/ansca/corona/input/TouchPhase;

    move-result-object v1

    sget-object v2, Lcom/ansca/corona/input/TouchPhase;->ENDED:Lcom/ansca/corona/input/TouchPhase;

    if-eq v1, v2, :cond_11

    .line 327
    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchTracker;->getPhase()Lcom/ansca/corona/input/TouchPhase;

    move-result-object v1

    sget-object v2, Lcom/ansca/corona/input/TouchPhase;->CANCELED:Lcom/ansca/corona/input/TouchPhase;

    if-ne v1, v2, :cond_12

    .line 328
    :cond_11
    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchTracker;->reset()V

    :cond_12
    return v7
.end method

.method private handleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 510
    :cond_0
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceType;->from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v1

    .line 511
    sget-object v2, Lcom/ansca/corona/input/InputDeviceType;->TOUCHSCREEN:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/ansca/corona/input/InputDeviceType;->STYLUS:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/ansca/corona/input/InputDeviceType;->MOUSE:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v1, v2, :cond_1

    return v0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTapTrackers:Lcom/ansca/corona/input/TapTrackerCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/input/TapTrackerCollection;->getByDeviceId(I)Lcom/ansca/corona/input/TapTracker;

    move-result-object v0

    if-nez v0, :cond_2

    .line 520
    new-instance v0, Lcom/ansca/corona/input/TapTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/input/TapTracker;-><init>(I)V

    .line 521
    iget-object v1, p0, Lcom/ansca/corona/input/InputHandler;->fTapTrackers:Lcom/ansca/corona/input/TapTrackerCollection;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/input/TapTrackerCollection;->add(Lcom/ansca/corona/input/TapTracker;)V

    .line 525
    :cond_2
    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/TapTracker;->updateWith(Landroid/view/MotionEvent;)V

    .line 528
    invoke-virtual {v0}, Lcom/ansca/corona/input/TapTracker;->hasTapOccurred()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz p1, :cond_3

    .line 529
    new-instance v1, Lcom/ansca/corona/input/RaiseTapEventTask;

    invoke-virtual {v0}, Lcom/ansca/corona/input/TapTracker;->getTapPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ansca/corona/input/TapTracker;->getTapCount()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/ansca/corona/input/RaiseTapEventTask;-><init>(Lcom/ansca/corona/input/TouchPoint;I)V

    invoke-virtual {p1, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 350
    :cond_0
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceType;->from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v1

    .line 351
    sget-object v2, Lcom/ansca/corona/input/InputDeviceType;->TOUCHSCREEN:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/ansca/corona/input/InputDeviceType;->STYLUS:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Lcom/ansca/corona/input/InputHandler;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v2}, Lcom/ansca/corona/Controller;->isMultitouchEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    new-instance v1, Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-direct {v1}, Lcom/ansca/corona/input/TouchTrackerCollection;-><init>()V

    .line 363
    :cond_2
    invoke-static {p1}, Lcom/ansca/corona/input/TouchPhase;->from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/TouchPhase;

    move-result-object v2

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    const/4 v0, 0x5

    if-eq v3, v0, :cond_6

    const/4 v0, 0x6

    if-eq v3, v0, :cond_3

    goto/16 :goto_2

    .line 459
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 460
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 461
    iget-object v5, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/ansca/corona/input/TouchTrackerCollection;->getByDeviceAndPointerId(II)Lcom/ansca/corona/input/TouchTracker;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 464
    new-instance v6, Lcom/ansca/corona/input/TouchPoint;

    .line 465
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/ansca/corona/input/TouchPoint;-><init>(FFJ)V

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    invoke-virtual {v5, v6, v2, v0}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;F)V

    if-eqz v1, :cond_4

    .line 471
    invoke-virtual {v1, v5}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    .line 474
    iget-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1, v3}, Lcom/ansca/corona/input/TouchTrackerCollection;->removeByDeviceAndPointerId(II)Z

    goto/16 :goto_2

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz v0, :cond_5

    .line 479
    new-instance v2, Lcom/ansca/corona/input/RaiseTouchEventTask;

    invoke-direct {v2, v5}, Lcom/ansca/corona/input/RaiseTouchEventTask;-><init>(Lcom/ansca/corona/input/TouchTracker;)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 483
    :cond_5
    iget-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/TouchTrackerCollection;->removeByDeviceId(I)Z

    goto/16 :goto_2

    :cond_6
    if-eqz v1, :cond_10

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 441
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 442
    iget-object v5, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/ansca/corona/input/TouchTrackerCollection;->removeByDeviceAndPointerId(II)Z

    .line 445
    new-instance v5, Lcom/ansca/corona/input/TouchPoint;

    .line 446
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/ansca/corona/input/TouchPoint;-><init>(FFJ)V

    .line 447
    new-instance v6, Lcom/ansca/corona/input/TouchTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    invoke-direct {v6, v7, v3}, Lcom/ansca/corona/input/TouchTracker;-><init>(II)V

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {v6, v5, v2, p1}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;F)V

    .line 449
    iget-object p1, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1, v6}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    .line 452
    invoke-virtual {v1, v6}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    goto/16 :goto_2

    .line 393
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_c

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    .line 397
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 398
    iget-object v7, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {v7, v5, v6}, Lcom/ansca/corona/input/TouchTrackerCollection;->getByDeviceAndPointerId(II)Lcom/ansca/corona/input/TouchTracker;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 399
    invoke-virtual {v5}, Lcom/ansca/corona/input/TouchTracker;->hasNotStarted()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 404
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 406
    sget-object v8, Lcom/ansca/corona/input/TouchPhase;->MOVED:Lcom/ansca/corona/input/TouchPhase;

    if-ne v2, v8, :cond_9

    .line 407
    invoke-virtual {v5}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result v8

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 408
    invoke-virtual {v5}, Lcom/ansca/corona/input/TouchTracker;->getLastPoint()Lcom/ansca/corona/input/TouchPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result v9

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_9

    cmpg-float v8, v9, v10

    if-gez v8, :cond_9

    goto :goto_1

    .line 415
    :cond_9
    new-instance v8, Lcom/ansca/corona/input/TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-direct {v8, v6, v7, v9, v10}, Lcom/ansca/corona/input/TouchPoint;-><init>(FFJ)V

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    invoke-virtual {v5, v8, v2, v6}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;F)V

    if-eqz v1, :cond_a

    .line 421
    invoke-virtual {v1, v5}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    goto :goto_1

    .line 423
    :cond_a
    iget-object v6, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz v6, :cond_b

    .line 425
    new-instance v7, Lcom/ansca/corona/input/RaiseTouchEventTask;

    invoke-direct {v7, v5}, Lcom/ansca/corona/input/RaiseTouchEventTask;-><init>(Lcom/ansca/corona/input/TouchTracker;)V

    invoke-virtual {v6, v7}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_c
    sget-object v0, Lcom/ansca/corona/input/TouchPhase;->ENDED:Lcom/ansca/corona/input/TouchPhase;

    if-eq v2, v0, :cond_d

    sget-object v0, Lcom/ansca/corona/input/TouchPhase;->CANCELED:Lcom/ansca/corona/input/TouchPhase;

    if-ne v2, v0, :cond_10

    .line 431
    :cond_d
    iget-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/TouchTrackerCollection;->removeByDeviceId(I)Z

    goto :goto_2

    .line 370
    :cond_e
    iget-object v2, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/TouchTrackerCollection;->removeByDeviceId(I)Z

    .line 373
    new-instance v2, Lcom/ansca/corona/input/TouchTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/ansca/corona/input/TouchTracker;-><init>(II)V

    .line 374
    new-instance v0, Lcom/ansca/corona/input/TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/ansca/corona/input/TouchPoint;-><init>(FFJ)V

    .line 375
    sget-object v3, Lcom/ansca/corona/input/TouchPhase;->BEGAN:Lcom/ansca/corona/input/TouchPhase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p1

    invoke-virtual {v2, v0, v3, p1}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;F)V

    .line 376
    iget-object p1, p0, Lcom/ansca/corona/input/InputHandler;->fTouchTrackers:Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-virtual {p1, v2}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    if-eqz v1, :cond_f

    .line 381
    invoke-virtual {v1, v2}, Lcom/ansca/corona/input/TouchTrackerCollection;->add(Lcom/ansca/corona/input/TouchTracker;)V

    goto :goto_2

    .line 383
    :cond_f
    iget-object p1, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz p1, :cond_10

    .line 385
    new-instance v0, Lcom/ansca/corona/input/RaiseTouchEventTask;

    invoke-direct {v0, v2}, Lcom/ansca/corona/input/RaiseTouchEventTask;-><init>(Lcom/ansca/corona/input/TouchTracker;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_10
    :goto_2
    if-eqz v1, :cond_11

    .line 490
    invoke-virtual {v1}, Lcom/ansca/corona/input/TouchTrackerCollection;->size()I

    move-result p1

    if-lez p1, :cond_11

    iget-object p1, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz p1, :cond_11

    .line 491
    new-instance v0, Lcom/ansca/corona/input/RaiseMultitouchEventTask;

    invoke-direct {v0, v1}, Lcom/ansca/corona/input/RaiseMultitouchEventTask;-><init>(Lcom/ansca/corona/input/TouchTrackerCollection;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_11
    return v4
.end method


# virtual methods
.method public getDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method public handle(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/ansca/corona/input/KeyPhase;->from(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/KeyPhase;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/ansca/corona/input/KeyPhase;->DOWN:Lcom/ansca/corona/input/KeyPhase;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    return v3

    .line 81
    :cond_1
    instance-of v1, p1, Lcom/ansca/corona/input/CoronaKeyEvent;

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    if-lez v2, :cond_3

    .line 88
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 90
    new-instance v1, Lcom/ansca/corona/input/InputDeviceServices;

    invoke-direct {v1, v2}, Lcom/ansca/corona/input/InputDeviceServices;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v1, p1}, Lcom/ansca/corona/input/InputDeviceServices;->fetchDeviceFrom(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    sget-object v4, Lcom/ansca/corona/input/ConnectionState;->CONNECTED:Lcom/ansca/corona/input/ConnectionState;

    invoke-virtual {v2, v4}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/ConnectionState;)V

    .line 103
    :cond_4
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    if-nez v2, :cond_5

    return v0

    .line 110
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    .line 111
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    .line 113
    iget-object v2, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    if-eqz v2, :cond_6

    .line 114
    new-instance v0, Lcom/ansca/corona/input/RaiseKeyEventTask;

    invoke-direct {v0, v1, p1}, Lcom/ansca/corona/input/RaiseKeyEventTask;-><init>(Lcom/ansca/corona/input/InputDeviceInterface;Landroid/view/KeyEvent;)V

    invoke-virtual {v2, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return v3

    :cond_6
    return v0
.end method

.method public handle(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputHandler;->handleAxisEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 137
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputHandler;->handleMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 138
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 139
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputHandler;->handleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public setDispatcher(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ansca/corona/input/InputHandler;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-void
.end method
