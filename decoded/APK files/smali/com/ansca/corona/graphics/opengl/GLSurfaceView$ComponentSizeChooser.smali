.class Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;
.super Lcom/ansca/corona/graphics/opengl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;IIIIII)V
    .locals 5

    .line 922
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->this$0:Lcom/ansca/corona/graphics/opengl/GLSurfaceView;

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x3023

    aput v4, v0, v3

    const/4 v3, 0x3

    aput p3, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x3022

    aput v4, v0, v3

    const/4 v3, 0x5

    aput p4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x3021

    aput v4, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    const/16 v1, 0x8

    const/16 v3, 0x3025

    aput v3, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v3, 0x3026

    aput v3, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v3, 0x3027

    aput v3, v0, v1

    const/16 v1, 0x3038

    const/16 v3, 0xd

    aput v1, v0, v3

    const/16 v3, 0xe

    aput v1, v0, v3

    .line 923
    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView;[I)V

    new-array p1, v2, [I

    .line 940
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 941
    iput p2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 942
    iput p3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 943
    iput p4, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 944
    iput p5, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 945
    iput p6, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 946
    iput p7, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aput p5, v0, v1

    .line 996
    :try_start_0
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Corona"

    const-string p3, "Exception was caught in GLSurfaceView.findConfigAttrib"

    .line 999
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    :goto_0
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    aget p1, p1, v1

    return p1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 955
    array-length v8, v7

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    move-object v10, v0

    const/4 v9, 0x0

    const/16 v11, 0x3e8

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v12, v7, v9

    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    .line 957
    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 958
    iget v1, v6, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x3026

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    .line 963
    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 964
    iget v1, v6, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    .line 969
    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3023

    .line 970
    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3022

    .line 971
    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    const/16 v4, 0x3021

    .line 972
    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 975
    iget v1, v6, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v6, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    sub-int/2addr v14, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v6, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    sub-int/2addr v15, v2

    .line 976
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v6, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v1, v0

    if-ge v1, v11, :cond_2

    move v11, v1

    move-object v10, v12

    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    return-object v10
.end method

.method public getMinAlphaSize()I
    .locals 1

    .line 986
    iget v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    return v0
.end method

.method public setMinAlphaSize(I)V
    .locals 0

    .line 990
    iput p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    return-void
.end method
