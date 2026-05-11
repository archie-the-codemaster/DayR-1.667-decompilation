.class Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 780
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;Lcom/ansca/corona/graphics/opengl/GLSurfaceView$1;)V
    .locals 0

    .line 779
    invoke-direct {p0, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 783
    iget v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    invoke-static {v1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$200(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 786
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    .line 787
    invoke-static {v2}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView;->access$200(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 786
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    .line 792
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DefaultContextFactory"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const-string p2, "eglDestroyContex"

    invoke-static {p2, p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
