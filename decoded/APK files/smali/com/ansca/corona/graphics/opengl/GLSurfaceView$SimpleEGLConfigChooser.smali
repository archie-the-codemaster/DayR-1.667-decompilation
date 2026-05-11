.class Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;Z)V
    .locals 8

    .line 1020
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1021
    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;IIIIII)V

    const/4 p1, 0x5

    .line 1024
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    const/4 p2, 0x6

    .line 1025
    iput p2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 1026
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    return-void
.end method
