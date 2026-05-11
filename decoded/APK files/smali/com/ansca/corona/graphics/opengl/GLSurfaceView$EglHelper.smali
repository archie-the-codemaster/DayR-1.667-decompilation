.class Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ansca/corona/graphics/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRetriedCreatingSurface:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ansca/corona/graphics/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1350
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mHasRetriedCreatingSurface:Z

    .line 1035
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private destroySurfaceImp()V
    .locals 5

    .line 1258
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1262
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1264
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$500(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    const/4 v0, 0x0

    .line 1266
    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1341
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EGL_CONTEXT_LOST"

    return-object p0

    :pswitch_1
    const-string p0, "EGL_BAD_SURFACE"

    return-object p0

    :pswitch_2
    const-string p0, "EGL_BAD_PARAMETER"

    return-object p0

    :pswitch_3
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    return-object p0

    :pswitch_4
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    return-object p0

    :pswitch_5
    const-string p0, "EGL_BAD_MATCH"

    return-object p0

    :pswitch_6
    const-string p0, "EGL_BAD_DISPLAY"

    return-object p0

    :pswitch_7
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    return-object p0

    :pswitch_8
    const-string p0, "EGL_BAD_CONTEXT"

    return-object p0

    :pswitch_9
    const-string p0, "EGL_BAD_CONFIG"

    return-object p0

    :pswitch_a
    const-string p0, "EGL_BAD_ATTRIBUTE"

    return-object p0

    :pswitch_b
    const-string p0, "EGL_BAD_ALLOC"

    return-object p0

    :pswitch_c
    const-string p0, "EGL_BAD_ACCESS"

    return-object p0

    :pswitch_d
    const-string p0, "EGL_NOT_INITIALIZED"

    return-object p0

    :pswitch_e
    const-string p0, "EGL_SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1301
    invoke-static {p1, p2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recreateSurface()Z
    .locals 4

    .line 1190
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1191
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 1192
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 1193
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1194
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1195
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$400(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_0
    const/4 v0, 0x0

    .line 1197
    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1201
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->start()V

    .line 1202
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v0

    return v0
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 0

    .line 1292
    invoke-static {p0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1297
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 6

    .line 1211
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1212
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v1, :cond_3

    .line 1214
    invoke-static {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$600(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1215
    invoke-static {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$600(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1218
    :cond_0
    invoke-static {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$700(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1221
    invoke-static {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$700(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 1224
    :cond_1
    invoke-static {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$700(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1225
    new-instance v3, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$LogWriter;

    invoke-direct {v3}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$LogWriter;-><init>()V

    .line 1227
    :cond_2
    invoke-static {v0, v2, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public createSurface()Z
    .locals 6

    .line 1105
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_8

    .line 1108
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_7

    .line 1111
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_6

    .line 1119
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    const/4 v0, 0x0

    .line 1124
    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1125
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1128
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$500(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 1145
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v1, "EGLHelper"

    const-string v3, "eglMakeCurrent"

    invoke-static {v1, v3, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    .line 1156
    :cond_2
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mHasRetriedCreatingSurface:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/16 v1, 0x1f01

    .line 1157
    invoke-static {v1}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v4, "PowerVR SGX 540"

    .line 1158
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1159
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v1

    instance-of v1, v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;

    if-eqz v1, :cond_3

    .line 1160
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->getMinAlphaSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 1164
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->getMinAlphaSize()I

    move-result v1

    .line 1165
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v4, v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->setMinAlphaSize(I)V

    .line 1168
    :try_start_0
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->recreateSurface()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v2, :cond_3

    .line 1174
    iput-boolean v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mHasRetriedCreatingSurface:Z

    .line 1175
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->setMinAlphaSize(I)V

    .line 1176
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->recreateSurface()Z

    move-result v0

    return v0

    :cond_3
    return v3

    .line 1134
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300b

    if-ne v0, v1, :cond_5

    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 1136
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    .line 1112
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1109
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroySurface()V
    .locals 0

    .line 1254
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    return-void
.end method

.method public finish()V
    .locals 5

    .line 1274
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1277
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$400(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1279
    :cond_0
    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1281
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1282
    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1283
    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public start()V
    .locals 5

    .line 1049
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1054
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1056
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1064
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1069
    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1070
    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 1072
    :cond_0
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1078
    invoke-static {v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$400(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1080
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_2

    .line 1081
    :cond_1
    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    .line 1082
    invoke-direct {p0, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1088
    :cond_2
    iput-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 1065
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swap()I
    .locals 3

    .line 1239
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x3000

    return v0

    :cond_2
    :goto_0
    const/16 v0, 0x3001

    return v0
.end method
