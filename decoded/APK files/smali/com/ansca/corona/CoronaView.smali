.class public Lcom/ansca/corona/CoronaView;
.super Landroid/widget/FrameLayout;
.source "CoronaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;,
        Lcom/ansca/corona/CoronaView$CoronaViewEventRegister;,
        Lcom/ansca/corona/CoronaView$CoronaEventListener;,
        Lcom/ansca/corona/CoronaView$SendEventListener;
    }
.end annotation


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "instanceState"


# instance fields
.field private fCoronaEventListener:Lcom/ansca/corona/CoronaView$CoronaEventListener;

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fHandler:Landroid/os/Handler;

.field fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

.field private fSavedInstanceState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0}, Lcom/ansca/corona/CoronaView;->internalInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0x777778

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string p1, "CoronaView"

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaView;->addView(Landroid/view/View;)V

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/ansca/corona/CoronaView;->internalInit()V

    return-void
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaView;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ansca/corona/CoronaView;->fHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaView$CoronaEventListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ansca/corona/CoronaView;->fCoronaEventListener:Lcom/ansca/corona/CoronaView$CoronaEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaView;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/ansca/corona/CoronaView;->getCoronaView()Lcom/ansca/corona/CoronaView;

    move-result-object p0

    return-object p0
.end method

.method private getCoronaView()Lcom/ansca/corona/CoronaView;
    .locals 0

    return-object p0
.end method

.method private internalInit()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaView;->fSavedInstanceState:Z

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 103
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaView;->fHandler:Landroid/os/Handler;

    .line 105
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->isNewInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->onNewInstall(Landroid/content/Context;)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->deleteTempDirectory(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ansca/corona/input/ViewInputHandler;->setView(Landroid/view/View;)V

    .line 269
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaView;->fSavedInstanceState:Z

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->dispose()V

    .line 273
    iput-object v1, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 274
    iput-object v1, p0, Lcom/ansca/corona/CoronaView;->fCoronaEventListener:Lcom/ansca/corona/CoronaView$CoronaEventListener;

    return-void
.end method

.method public init()V
    .locals 1

    const-string v0, ""

    .line 182
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaView;->init(Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    .line 192
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 196
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/CoronaRuntime;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const-string v0, "/"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaRuntime;->setPath(Ljava/lang/String;)V

    .line 203
    new-instance p1, Lcom/ansca/corona/CoronaView$CoronaViewEventRegister;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/CoronaView$CoronaViewEventRegister;-><init>(Lcom/ansca/corona/CoronaView;Lcom/ansca/corona/CoronaView$1;)V

    invoke-static {p1}, Lcom/ansca/corona/CoronaRuntime;->addWillLoadMainListener(Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;)V

    .line 206
    new-instance p1, Lcom/ansca/corona/input/ViewInputHandler;

    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ansca/corona/input/ViewInputHandler;-><init>(Lcom/ansca/corona/Controller;)V

    iput-object p1, p0, Lcom/ansca/corona/CoronaView;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    .line 207
    iget-object p1, p0, Lcom/ansca/corona/CoronaView;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/input/ViewInputHandler;->setDispatcher(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V

    .line 208
    iget-object p1, p0, Lcom/ansca/corona/CoronaView;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/input/ViewInputHandler;->setView(Landroid/view/View;)V

    .line 210
    iget-object p1, p0, Lcom/ansca/corona/CoronaView;->fHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ansca/corona/CoronaView$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaView$1;-><init>(Lcom/ansca/corona/CoronaView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaView;->removeView(Landroid/view/View;)V

    .line 126
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "instanceState"

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 128
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "address"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 133
    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->getCoronaRuntimeFromBridge(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 134
    iget-object p1, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntime;->reset(Landroid/content/Context;)V

    goto :goto_0

    .line 137
    :cond_1
    new-instance p1, Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/ansca/corona/CoronaRuntime;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 139
    :goto_0
    iget-object p1, p0, Lcom/ansca/corona/CoronaView;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/input/ViewInputHandler;->setView(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/ansca/corona/CoronaView;->fInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/input/ViewInputHandler;->setDispatcher(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V

    .line 142
    iget-object p1, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/CoronaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaView;->fSavedInstanceState:Z

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    iget-object v1, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getJavaToNativeBridgeAddress()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "address"

    .line 171
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->onPause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->onResume()V

    return-void
.end method

.method public sendEvent(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/CoronaView;->sendEvent(Ljava/util/Hashtable;Lcom/ansca/corona/CoronaView$SendEventListener;)V

    return-void
.end method

.method public sendEvent(Ljava/util/Hashtable;Lcom/ansca/corona/CoronaView$SendEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ansca/corona/CoronaView$SendEventListener;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    .line 327
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    new-instance v1, Lcom/ansca/corona/CoronaView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ansca/corona/CoronaView$2;-><init>(Lcom/ansca/corona/CoronaView;Ljava/util/Hashtable;Lcom/ansca/corona/CoronaView$SendEventListener;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCoronaEventListener(Lcom/ansca/corona/CoronaView$CoronaEventListener;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/ansca/corona/CoronaView;->fCoronaEventListener:Lcom/ansca/corona/CoronaView$CoronaEventListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/ansca/corona/CoronaView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getGLView()Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setZOrderMediaOverlay(Z)V

    return-void
.end method
