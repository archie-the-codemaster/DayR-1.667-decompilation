.class public Lcom/ansca/corona/CoronaRuntime;
.super Ljava/lang/Object;
.source "CoronaRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaRuntime$ApiLevel9;
    }
.end annotation


# static fields
.field private static sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sWillLoadMainListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fBaseDir:Ljava/lang/String;

.field private fController:Lcom/ansca/corona/Controller;

.field private fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

.field private fIsCoronaKit:Z

.field private fJavaToNativeBridgeAddress:J

.field private fLuaState:Lcom/naef/jnlua/LuaState;

.field private fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fViewManager:Lcom/ansca/corona/ViewManager;

.field private fWasDisposed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    .line 50
    new-instance v0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fBaseDir:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lcom/ansca/corona/CoronaRuntime;->fIsCoronaKit:Z

    .line 53
    new-instance v0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-direct {v0, p1, p0, p2}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Z)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    .line 58
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->init(Lcom/ansca/corona/CoronaRuntime;)V

    .line 59
    new-instance p2, Lcom/ansca/corona/Controller;

    invoke-direct {p2, p1, p0}, Lcom/ansca/corona/Controller;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    iput-object p2, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    .line 60
    iget-object p2, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {p2, v0}, Lcom/ansca/corona/Controller;->setGLView(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V

    .line 61
    iget-object p2, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {p2}, Lcom/ansca/corona/Controller;->init()V

    .line 62
    new-instance p2, Lcom/ansca/corona/ViewManager;

    invoke-direct {p2, p1, p0}, Lcom/ansca/corona/ViewManager;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    iput-object p2, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    .line 63
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    iget-object p2, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {p1, p2}, Lcom/ansca/corona/ViewManager;->setGLView(Landroid/view/View;)V

    return-void
.end method

.method static addListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2

    .line 499
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 502
    :try_start_0
    monitor-exit v0

    return-void

    .line 506
    :cond_0
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 507
    monitor-exit v0

    return-void

    .line 511
    :cond_1
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static addWillLoadMainListener(Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;)V
    .locals 2

    .line 538
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 540
    :try_start_0
    monitor-exit v0

    return-void

    .line 544
    :cond_0
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 545
    monitor-exit v0

    return-void

    .line 549
    :cond_1
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static cloneListenerCollection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static cloneWillLoadMainListenerCollection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;",
            ">;"
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 257
    :try_start_0
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private insertFakeNativeLoader()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "table"

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v1, -0x1

    const-string v2, "insert"

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v2, "package"

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v2, "loaders"

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    .line 328
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    .line 329
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    new-instance v1, Lcom/ansca/corona/CoronaRuntime$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaRuntime$1;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    .line 343
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 344
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-void
.end method

.method private onExiting()V
    .locals 2

    .line 472
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_1

    .line 479
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onExiting(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static removeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2

    .line 522
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 525
    :try_start_0
    monitor-exit v0

    return-void

    .line 529
    :cond_0
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 530
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static removeWillLoadMainListener(Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;)V
    .locals 2

    .line 558
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 560
    :try_start_0
    monitor-exit v0

    return-void

    .line 564
    :cond_0
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sWillLoadMainListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 565
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/ansca/corona/CoronaRuntime;->onExiting()V

    .line 87
    invoke-static {p0}, Lcom/ansca/corona/CoronaRuntimeProvider;->removeRuntime(Lcom/ansca/corona/CoronaRuntime;)V

    .line 90
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    iput-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    :cond_1
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    .line 97
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->destroy()V

    .line 99
    iput-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    .line 101
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->destroy()V

    .line 103
    iput-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    return-void
.end method

.method getController()Lcom/ansca/corona/Controller;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    return-object v0
.end method

.method getGLView()Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    return-object v0
.end method

.method getJavaToNativeBridgeAddress()J
    .locals 2

    .line 489
    iget-wide v0, p0, Lcom/ansca/corona/CoronaRuntime;->fJavaToNativeBridgeAddress:J

    return-wide v0
.end method

.method public getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fBaseDir:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method getViewManager()Lcom/ansca/corona/ViewManager;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    return-object v0
.end method

.method initializePackagePath(Lcom/naef/jnlua/LuaState;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ansca/corona/CoronaRuntime$ApiLevel9;->getNativeLibraryDirectoryFrom(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "cpath"

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/lib?.so;"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v0, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 291
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 292
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 294
    iget-object v2, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v2, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 297
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2

    .line 298
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 300
    array-length v1, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, p1, v4

    .line 301
    iget-object v6, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v6, v5}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 302
    iget-object v5, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v0, v2}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_1

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "abi"

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "APKs"

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 313
    invoke-direct {p0}, Lcom/ansca/corona/CoronaRuntime;->insertFakeNativeLoader()V

    return-void
.end method

.method isCoronaKit()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fIsCoronaKit:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->isRunning()Z

    move-result v0

    return v0
.end method

.method onLoaded(J)V
    .locals 3

    .line 357
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->close()V

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    .line 370
    :cond_1
    new-instance v0, Lcom/naef/jnlua/LuaState;

    invoke-direct {v0, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    .line 372
    invoke-static {p0}, Lcom/ansca/corona/CoronaRuntimeProvider;->addRuntime(Lcom/ansca/corona/CoronaRuntime;)V

    .line 374
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaRuntime;->initializePackagePath(Lcom/naef/jnlua/LuaState;)V

    .line 377
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz p2, :cond_2

    .line 379
    invoke-interface {p2, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onLoaded(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method onPause()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->stop()V

    .line 118
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->onSuspendCoronaRuntime()V

    .line 119
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->suspend()V

    return-void
.end method

.method onResume()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->start()V

    .line 124
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->onResumeCoronaRuntime()V

    .line 125
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->updateViews()V

    .line 126
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->resume()V

    return-void
.end method

.method onResumed()V
    .locals 2

    .line 452
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_1

    .line 459
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onResumed(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onStarted()V
    .locals 2

    .line 412
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_1

    .line 419
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onStarted(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onSuspended()V
    .locals 2

    .line 432
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    if-eqz v1, :cond_1

    .line 439
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onSuspended(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onWillLoadMain()V
    .locals 2

    .line 392
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneWillLoadMainListenerCollection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;

    if-eqz v1, :cond_1

    .line 399
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;->onWillLoadMain(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method reset(Landroid/content/Context;)V
    .locals 2

    .line 67
    new-instance v0, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Z)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    .line 68
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {p1, v0}, Lcom/ansca/corona/Controller;->setGLView(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V

    .line 69
    iget-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {p1, v0}, Lcom/ansca/corona/ViewManager;->setGLView(Landroid/view/View;)V

    return-void
.end method

.method setJavaToNativeBridgeAddress(J)V
    .locals 0

    .line 485
    iput-wide p1, p0, Lcom/ansca/corona/CoronaRuntime;->fJavaToNativeBridgeAddress:J

    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/ansca/corona/CoronaRuntime;->fBaseDir:Ljava/lang/String;

    return-void
.end method

.method updateViews()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fViewManager:Lcom/ansca/corona/ViewManager;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getSystemMonitor()Lcom/ansca/corona/SystemMonitor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getSystemMonitor()Lcom/ansca/corona/SystemMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->isScreenOff()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 151
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 158
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getSystemMonitor()Lcom/ansca/corona/SystemMonitor;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntime;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getSystemMonitor()Lcom/ansca/corona/SystemMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->isScreenLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 162
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public wasDisposed()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    return v0
.end method

.method public wasNotDisposed()Z
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
