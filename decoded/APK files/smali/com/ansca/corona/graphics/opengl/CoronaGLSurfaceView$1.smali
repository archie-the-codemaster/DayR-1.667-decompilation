.class Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;
.super Ljava/lang/Object;
.source "CoronaGLSurfaceView.java"

# interfaces
.implements Lcom/ansca/corona/MessageBasedTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerElapsed()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->hasGLSurface()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->canRender()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v4}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_2
    :goto_0
    return-void
.end method
