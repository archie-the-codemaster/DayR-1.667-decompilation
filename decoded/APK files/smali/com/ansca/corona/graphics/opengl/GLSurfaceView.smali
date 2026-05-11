.class public Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$LogWriter;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$BaseConfigChooser;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;,
        Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field protected mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;

.field private mNeedsSwap:Z

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ansca/corona/graphics/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2028
    new-instance v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$1;)V

    sput-object v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->sGLThreadManager:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2029
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 2040
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mNeedsSwap:Z

    .line 217
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2029
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 2040
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mNeedsSwap:Z

    .line 226
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mNeedsSwap:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;Z)Z
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mNeedsSwap:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)I
    .locals 0

    .line 166
    iget p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return p0
.end method

.method static synthetic access$300(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLWrapper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)I
    .locals 0

    .line 166
    iget p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method static synthetic access$800()Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;
    .locals 1

    .line 166
    sget-object v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->sGLThreadManager:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mRenderer:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .line 1900
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-nez v0, :cond_0

    return-void

    .line 1901
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 246
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public canRender()Z
    .locals 1

    .line 2051
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearNeedsSwap()V
    .locals 1

    const/4 v0, 0x0

    .line 2047
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mNeedsSwap:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected hasGLSurface()Z
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2059
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->hasGLSurface()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 594
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 598
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mRenderer:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 603
    :goto_0
    new-instance v2, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-eq v0, v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mDetached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mDetached:Z

    .line 627
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->onResume()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    .line 444
    new-instance v8, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->setEGLConfigChooser(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 408
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 426
    new-instance v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->setEGLConfigChooser(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 476
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 377
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 391
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLWrapper:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;

    return-void
.end method

.method public setNeedsSwap()V
    .locals 1

    const/4 v0, 0x1

    .line 2043
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mNeedsSwap:Z

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    .line 350
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 351
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;Lcom/ansca/corona/graphics/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 358
    new-instance v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 360
    :cond_2
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mRenderer:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;

    .line 361
    new-instance p1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    .line 362
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    if-eqz p1, :cond_1

    .line 548
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 554
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {p1, p3, p4}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 538
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    return-void
.end method
