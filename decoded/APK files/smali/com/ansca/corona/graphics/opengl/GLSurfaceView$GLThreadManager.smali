.class Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/graphics/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GLThreadManager"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$1;)V
    .locals 0

    .line 1906
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 7

    .line 1990
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1991
    iput v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 1993
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 1994
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 1995
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ro.opengles.version"

    aput-object v5, v4, v0

    .line 1997
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1996
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1998
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2001
    :goto_0
    iget v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v2, 0x20000

    if-lt v0, v2, :cond_0

    .line 2002
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 2008
    :cond_0
    iput-boolean v1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 1971
    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_3

    .line 1972
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    const/16 v0, 0x1f01

    .line 1973
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1974
    iget v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    .line 1976
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1977
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1979
    :cond_1
    iget-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1985
    iput-boolean v3, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseEglContextLocked(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)V
    .locals 1

    .line 1952
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1953
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    .line 1955
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    monitor-enter p0

    .line 1962
    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    monitor-enter p0

    .line 1966
    :try_start_0
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1967
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1913
    :try_start_0
    invoke-static {p1, v0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->access$1102(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;Z)Z

    .line 1914
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1915
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    .line 1917
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1918
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tryAcquireEglContextLocked(Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;)Z
    .locals 2

    .line 1928
    iget-object v0, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 1933
    :cond_0
    invoke-direct {p0}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1934
    iget-boolean p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz p1, :cond_1

    return v1

    .line 1941
    :cond_1
    iget-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    if-eqz p1, :cond_2

    .line 1942
    invoke-virtual {p1}, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1929
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/graphics/opengl/GLSurfaceView$GLThread;

    .line 1930
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
