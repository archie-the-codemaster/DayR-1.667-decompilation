.class Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;
.super Ljava/lang/Object;
.source "CoronaGLSurfaceView.java"

# interfaces
.implements Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoronaRenderer"
.end annotation


# static fields
.field private static sFirstSurface:Z = true


# instance fields
.field private fCanRender:Z

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fIsCoronaKit:Z

.field private fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fLastViewHeight:I

.field private fLastViewWidth:I

.field private fView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/CoronaRuntime;Z)V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 324
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    const/4 p1, 0x0

    .line 325
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    .line 326
    sget-object p1, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    const/4 p1, -0x1

    .line 327
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastViewWidth:I

    .line 328
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastViewHeight:I

    .line 329
    iput-boolean p3, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fIsCoronaKit:Z

    .line 330
    iput-object p2, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void

    .line 322
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public canRender()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    return v0
.end method

.method public clearFirstSurface()V
    .locals 1

    const/4 v0, 0x1

    .line 439
    sput-boolean v0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->sFirstSurface:Z

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 434
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    invoke-static {p1, v0}, Lcom/ansca/corona/Controller;->updateRuntimeState(Lcom/ansca/corona/CoronaRuntime;Z)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7

    .line 370
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$600(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->access$700(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    .line 378
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fIsCoronaKit:Z

    if-nez v1, :cond_2

    .line 379
    invoke-virtual {p1}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gt p2, p3, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/WindowOrientation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge p2, p3, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 381
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    return-void

    .line 385
    :cond_2
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fIsCoronaKit:Z

    if-eqz v1, :cond_3

    .line 386
    sget-object p1, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v2}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v6, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fIsCoronaKit:Z

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/ansca/corona/JavaToNativeShim;->resize(Lcom/ansca/corona/CoronaRuntime;Landroid/content/Context;IILcom/ansca/corona/WindowOrientation;Z)V

    const/4 v1, 0x1

    .line 395
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    .line 400
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    sget-object v2, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    if-ne v1, v2, :cond_4

    .line 401
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    goto :goto_0

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    if-eq v1, p1, :cond_5

    .line 404
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 405
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v1, :cond_5

    .line 406
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v1

    new-instance v2, Lcom/ansca/corona/events/OrientationTask;

    .line 408
    invoke-virtual {p1}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result p1

    .line 409
    invoke-virtual {v0}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v0

    invoke-direct {v2, p1, v0}, Lcom/ansca/corona/events/OrientationTask;-><init>(II)V

    .line 406
    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 415
    :cond_5
    :goto_0
    iget p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastViewWidth:I

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastViewHeight:I

    if-ltz v0, :cond_7

    if-ne p1, p2, :cond_6

    if-eq v0, p3, :cond_7

    .line 418
    :cond_6
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p1, :cond_7

    .line 419
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/events/ResizeTask;

    invoke-direct {v0}, Lcom/ansca/corona/events/ResizeTask;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 422
    :cond_7
    iput p2, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastViewWidth:I

    .line 423
    iput p3, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastViewHeight:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 346
    sget-boolean p1, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->sFirstSurface:Z

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setNeedsSwap()V

    :cond_0
    const/4 p1, 0x0

    .line 349
    sput-boolean p1, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->sFirstSurface:Z

    .line 353
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {p1}, Lcom/ansca/corona/JavaToNativeShim;->unloadResources(Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method
