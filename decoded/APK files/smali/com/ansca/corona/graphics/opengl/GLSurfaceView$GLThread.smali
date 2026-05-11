.class Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ansca/corona/graphics/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ansca/corona/graphics/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1364
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1851
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 1365
    iput v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1366
    iput v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1367
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1368
    iput v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1369
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0

    .line 1362
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1411
    new-instance v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    const/4 v0, 0x0

    .line 1412
    iput-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1413
    iput-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1429
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1431
    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    .line 1432
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1665
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1666
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1667
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1668
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1435
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1436
    iget-object v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v13, v2

    goto/16 :goto_5

    .line 1442
    :cond_1
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    .line 1443
    iget-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1444
    iget-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    iput-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1445
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1452
    :cond_2
    iget-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_3

    .line 1456
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1457
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v0, 0x0

    .line 1458
    iput-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    if-eqz v3, :cond_4

    .line 1464
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1465
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    .line 1470
    :cond_4
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v2, :cond_6

    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_6

    .line 1474
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_5

    .line 1475
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    const/4 v2, 0x1

    .line 1477
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    const/4 v2, 0x0

    .line 1478
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1479
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1483
    :cond_6
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 1487
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1488
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_7
    if-eqz v4, :cond_8

    const/4 v2, 0x1

    .line 1497
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1498
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v14, 0x0

    .line 1502
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1505
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3

    .line 1508
    :cond_9
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_a

    .line 1510
    :try_start_4
    iget-object v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v2, 0x1

    .line 1515
    :try_start_5
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1518
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1512
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)V

    .line 1513
    throw v0

    .line 1522
    :cond_a
    :goto_3
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v2, :cond_b

    const/4 v2, 0x1

    .line 1523
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 1529
    :cond_b
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_19

    .line 1530
    iget-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v2, :cond_c

    .line 1532
    iget v6, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1533
    iget v8, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHeight:I

    const/4 v2, 0x0

    .line 1544
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x1

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    .line 1546
    :goto_4
    iput-boolean v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1547
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    move v5, v0

    .line 1568
    :goto_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v13, :cond_d

    .line 1571
    :try_start_6
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_d
    if-eqz v10, :cond_f

    .line 1580
    iget-object v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1581
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v0, 0x1

    .line 1582
    :try_start_7
    iput-boolean v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1583
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1584
    monitor-exit v2

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_e
    const/4 v10, 0x0

    :cond_f
    if-eqz v11, :cond_10

    .line 1591
    iget-object v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1593
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object v7, v0

    const/4 v11, 0x0

    :cond_10
    if-eqz v9, :cond_12

    .line 1601
    iget-object v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v0, :cond_11

    .line 1603
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$900(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v2, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v7, v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_11
    const/4 v9, 0x0

    :cond_12
    if-eqz v12, :cond_14

    .line 1612
    iget-object v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v0, :cond_13

    .line 1614
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$900(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v7, v6, v8}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_13
    const/4 v12, 0x0

    .line 1623
    :cond_14
    iget-object v0, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v0, :cond_18

    if-lez v6, :cond_18

    if-lez v8, :cond_18

    .line 1625
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$900(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1626
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$1000(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1627
    iget-object v2, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v2

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_16

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_15

    const-string v15, "GLThread"

    move/from16 v16, v3

    const-string v3, "eglSwapBuffers"

    .line 1642
    invoke-static {v15, v3, v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1644
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v3, 0x1

    .line 1645
    :try_start_9
    iput-boolean v3, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1646
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1647
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    const-string v2, "Corona"

    const-string v15, "ERROR: Error in drawing our frame! Surface is bad!"

    .line 1649
    invoke-static {v2, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 1647
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0

    :cond_15
    const/4 v3, 0x1

    const/16 v16, 0x1

    goto :goto_6

    :cond_16
    move/from16 v16, v3

    const/4 v3, 0x1

    :goto_6
    if-eqz v14, :cond_17

    goto :goto_7

    :cond_17
    move v3, v4

    :goto_7
    const/4 v2, 0x0

    .line 1655
    invoke-static {v0, v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$1002(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move v4, v3

    goto :goto_8

    :cond_18
    move/from16 v16, v3

    const/4 v2, 0x0

    :goto_8
    move/from16 v3, v16

    :goto_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x0

    move v5, v0

    .line 1566
    :try_start_d
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    .line 1568
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    .line 1665
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1666
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1667
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1668
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1677
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1404
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 1406
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1407
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1393
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1394
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1395
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1673
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1697
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1698
    :try_start_0
    iget v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1699
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasGLSurface()Z
    .locals 1

    .line 1683
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 1744
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1748
    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1749
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1750
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1755
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1757
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1760
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .line 1764
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1768
    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1769
    iput-boolean v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1770
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1771
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1772
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1777
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1779
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1782
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onWindowResize(II)V
    .locals 2

    .line 1786
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1787
    :try_start_0
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 1788
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1789
    iput p2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1790
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1791
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1792
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1793
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1795
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1827
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1828
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1830
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1825
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1801
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1802
    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1803
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1804
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1806
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1808
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1811
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 1815
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1816
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1703
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1704
    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1705
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1706
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1380
    :try_start_0
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    :catch_0
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1690
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1691
    :try_start_0
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1692
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1693
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1688
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1710
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1714
    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1715
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1716
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1718
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1720
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1723
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public surfaceDestroyed()V
    .locals 2

    .line 1727
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1731
    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1732
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1733
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1735
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1737
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1740
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
