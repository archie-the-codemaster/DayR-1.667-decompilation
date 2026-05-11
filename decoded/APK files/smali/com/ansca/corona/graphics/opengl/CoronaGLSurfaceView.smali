.class public Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;
.super Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.source "CoronaGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;
    }
.end annotation


# instance fields
.field private fActivity:Landroid/app/Activity;

.field private fActivityInfo:Lcom/ansca/corona/CoronaActivityInfo;

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fOrientationListener:Landroid/view/OrientationEventListener;

.field private fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fRenderer:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;

.field private fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Z)V
    .locals 7

    .line 52
    invoke-direct {p0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 59
    iput-object p2, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 63
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 64
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 69
    new-instance p1, Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {p1}, Lcom/ansca/corona/MessageBasedTimer;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    .line 70
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/MessageBasedTimer;->setHandler(Landroid/os/Handler;)V

    .line 71
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/TimeSpan;->fromSeconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/MessageBasedTimer;->setInterval(Lcom/ansca/corona/TimeSpan;)V

    .line 72
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance v0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;-><init>(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/MessageBasedTimer;->setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    .line 95
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 96
    sget-object p1, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 97
    new-instance p1, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;

    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$2;-><init>(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    const/4 p1, 0x2

    .line 134
    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 144
    new-instance p1, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;

    invoke-direct {p1, p0, p2, p3}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;-><init>(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/CoronaRuntime;Z)V

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;

    .line 145
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setRenderer(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setRenderMode(I)V

    .line 149
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x3

    .line 152
    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setDebugFlags(I)V

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/CoronaActivityInfo;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivityInfo:Lcom/ansca/corona/CoronaActivityInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Landroid/app/Activity;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->sendOrientationChangedEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p0
.end method

.method private sendOrientationChangedEvent()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/events/OrientationTask;

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 204
    invoke-virtual {v2}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v2

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 205
    invoke-virtual {v3}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/ansca/corona/events/OrientationTask;-><init>(II)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canRender()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->canRender()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->canRender()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearFirstSurface()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$CoronaRenderer;->clearFirstSurface()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivityInfo:Lcom/ansca/corona/CoronaActivityInfo;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 178
    sget-object p1, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    goto :goto_0

    .line 181
    :cond_1
    sget-object p1, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    sget-object v1, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    if-ne v0, v1, :cond_3

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 186
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 187
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivityInfo:Lcom/ansca/corona/CoronaActivityInfo;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivityInfo;->hasFixedOrientation()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivity:Landroid/app/Activity;

    .line 188
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "accelerometer_rotation"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->sendOrientationChangedEvent()V

    :cond_3
    return-void
.end method

.method public onResumeCoronaRuntime()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->start()V

    .line 262
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public onSuspendCoronaRuntime()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 273
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public requestExitAndWait()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->mGLThread:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivity:Landroid/app/Activity;

    .line 157
    new-instance p1, Lcom/ansca/corona/CoronaActivityInfo;

    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaActivityInfo;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivityInfo:Lcom/ansca/corona/CoronaActivityInfo;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    if-eqz p1, :cond_3

    .line 219
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/ansca/corona/WindowOrientation;->isSupportedBy(Landroid/app/Activity;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    if-eq v1, v0, :cond_2

    .line 235
    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 236
    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 240
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_3
    :goto_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 253
    invoke-super {p0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
