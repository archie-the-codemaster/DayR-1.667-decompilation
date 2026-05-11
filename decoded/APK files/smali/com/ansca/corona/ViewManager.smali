.class public Lcom/ansca/corona/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/ViewManager$LocationRequestPermissionsResultHandler;,
        Lcom/ansca/corona/ViewManager$StringObjectHashMap;
    }
.end annotation


# instance fields
.field private myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

.field private myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

.field private myContentView:Landroid/view/ViewGroup;

.field private myContext:Landroid/content/Context;

.field private myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private myDisplayObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private myHandler:Landroid/os/Handler;

.field private myOverlayView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/ansca/corona/ViewManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    .line 62
    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    .line 63
    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    .line 64
    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    .line 68
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/ViewManager;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ansca/corona/ViewManager;->myContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ansca/corona/ViewManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ansca/corona/ViewManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ansca/corona/ViewManager;Landroid/view/View;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setHardwareAccelerationEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/ansca/corona/ViewManager;I)Lcom/ansca/corona/CoronaVideoView;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager;->getCoronaVideoViewById(I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    return-object p0
.end method

.method private getCoronaVideoViewById(I)Lcom/ansca/corona/CoronaVideoView;
    .locals 1

    .line 151
    const-class v0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->getVideoView()Lcom/ansca/corona/CoronaVideoView;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    const-class v0, Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaVideoView;

    return-object p1
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myHandler:Landroid/os/Handler;

    .line 189
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myHandler:Landroid/os/Handler;

    .line 190
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setHardwareAccelerationEnabled(Landroid/view/View;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 942
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 944
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 947
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    const/4 p2, 0x0

    aput-object p2, v1, v6

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public addMapMarker(ILcom/ansca/corona/maps/MapMarker;)I
    .locals 2

    .line 1457
    const-class v0, Lcom/ansca/corona/maps/MapView;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/maps/MapView;

    if-eqz v0, :cond_0

    .line 1459
    invoke-virtual {v0}, Lcom/ansca/corona/maps/MapView;->getNewMarkerId()I

    move-result v0

    .line 1460
    invoke-virtual {p2, v0}, Lcom/ansca/corona/maps/MapMarker;->setMarkerId(I)V

    .line 1461
    new-instance v1, Lcom/ansca/corona/ViewManager$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/ansca/corona/ViewManager$38;-><init>(Lcom/ansca/corona/ViewManager;ILcom/ansca/corona/maps/MapMarker;)V

    invoke-direct {p0, v1}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addMapView(IIIII)V
    .locals 10

    .line 1218
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    .line 1220
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_0
    new-instance v0, Lcom/ansca/corona/ViewManager$34;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p4

    move v7, p5

    move v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/ansca/corona/ViewManager$34;-><init>(Lcom/ansca/corona/ViewManager;IIIII)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addTextView(IIIIIZ)V
    .locals 9

    .line 264
    new-instance v8, Lcom/ansca/corona/ViewManager$1;

    move-object v0, v8

    move-object v1, p0

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p1

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/ViewManager$1;-><init>(Lcom/ansca/corona/ViewManager;IIIIIZ)V

    invoke-direct {p0, v8}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addVideoView(IIIII)V
    .locals 8

    .line 955
    new-instance v7, Lcom/ansca/corona/ViewManager$20;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/ViewManager$20;-><init>(Lcom/ansca/corona/ViewManager;IIIII)V

    invoke-direct {p0, v7}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addWebView(IIIIIZZ)V
    .locals 10

    .line 1092
    new-instance v9, Lcom/ansca/corona/ViewManager$27;

    move-object v0, v9

    move-object v1, p0

    move/from16 v2, p6

    move v3, p1

    move/from16 v4, p7

    move v5, p4

    move v6, p5

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ansca/corona/ViewManager$27;-><init>(Lcom/ansca/corona/ViewManager;ZIZIIII)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 651
    invoke-virtual {p0}, Lcom/ansca/corona/ViewManager;->destroyAllDisplayObjects()V

    return-void
.end method

.method public destroyAllDisplayObjects()V
    .locals 3

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 667
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V

    :cond_2
    if-nez v1, :cond_0

    return-void

    :catchall_0
    move-exception v1

    .line 667
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public destroyDisplayObject(I)V
    .locals 2

    .line 678
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 686
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    new-instance v0, Lcom/ansca/corona/ViewManager$15;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$15;-><init>(Lcom/ansca/corona/ViewManager;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 686
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public displayObjectUpdateScreenBounds(IIIII)V
    .locals 8

    .line 735
    new-instance v7, Lcom/ansca/corona/ViewManager$17;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/ViewManager$17;-><init>(Lcom/ansca/corona/ViewManager;IIIII)V

    invoke-direct {p0, v7}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAbsolutePopupLayout()Landroid/widget/AbsoluteLayout;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method public getAbsoluteViewLayout()Landroid/widget/AbsoluteLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDisplayObjectAlpha(I)F
    .locals 1

    .line 770
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 773
    instance-of v0, p1, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    if-eqz v0, :cond_0

    .line 774
    check-cast p1, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 775
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 776
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method public getDisplayObjectBackground(I)Z
    .locals 3

    .line 900
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 906
    :cond_0
    instance-of v1, p1, Lcom/ansca/corona/maps/MapView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 910
    :cond_1
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 913
    check-cast p1, Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/ansca/corona/CoronaWebView;->getBackgroundColorFrom(Landroid/webkit/WebView;)I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 919
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    .line 920
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_0

    .line 922
    :cond_3
    instance-of v1, p1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_4

    .line 923
    check-cast p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 925
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public getDisplayObjectById(I)Landroid/view/View;
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 121
    monitor-exit v0

    return-object v2

    .line 124
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 138
    monitor-exit v0

    return-object v2

    .line 141
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getDisplayObjectVisible(I)Z
    .locals 1

    .line 760
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getMapType(I)Lcom/ansca/corona/maps/MapType;
    .locals 1

    .line 1436
    const-class v0, Lcom/ansca/corona/maps/MapView;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/maps/MapView;

    if-nez p1, :cond_0

    .line 1438
    sget-object p1, Lcom/ansca/corona/maps/MapType;->STANDARD:Lcom/ansca/corona/maps/MapType;

    return-object p1

    .line 1440
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/maps/MapView;->getMapType()Lcom/ansca/corona/maps/MapType;

    move-result-object p1

    return-object p1
.end method

.method public getOverlayView()Landroid/widget/FrameLayout;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTextViewAlign(I)Ljava/lang/String;
    .locals 1

    .line 405
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getTextViewAlign()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextViewColor(I)I
    .locals 1

    .line 500
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getTextViewColor()I

    move-result p1

    return p1
.end method

.method public getTextViewInputType(I)Ljava/lang/String;
    .locals 1

    .line 320
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    if-nez p1, :cond_0

    const-string p1, "error"

    return-object p1

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getTextViewInputType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextViewPassword(I)Z
    .locals 1

    .line 383
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getTextViewPassword()Z

    move-result p1

    return p1
.end method

.method public getTextViewPlaceholder(I)Ljava/lang/String;
    .locals 1

    .line 615
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 620
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTextViewSize(I)F
    .locals 1

    .line 520
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getTextViewSize()F

    move-result p1

    return p1
.end method

.method public getTextViewText(I)Ljava/lang/String;
    .locals 1

    .line 605
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 610
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getTextString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goBack()Z
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 247
    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 248
    :try_start_0
    iget-object v3, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 249
    instance-of v5, v4, Lcom/ansca/corona/CoronaWebView;

    if-eqz v5, :cond_1

    .line 250
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 251
    monitor-exit v2

    return v0

    .line 255
    :cond_2
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public hasDisplayObjectWithId(I)Z
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasDisplayObjectWithId(Ljava/lang/Class;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCurrentLocationVisibleInMap(I)Z
    .locals 1

    .line 1375
    const-class v0, Lcom/ansca/corona/maps/MapView;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/maps/MapView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1379
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/maps/MapView;->isCurrentLocationVisible()Z

    move-result p1

    return p1
.end method

.method public isMapScrollEnabled(I)Z
    .locals 1

    .line 1398
    const-class v0, Lcom/ansca/corona/maps/MapView;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/maps/MapView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1402
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/maps/MapView;->isScrollEnabled()Z

    move-result p1

    return p1
.end method

.method public isMapZoomEnabled(I)Z
    .locals 1

    .line 1417
    const-class v0, Lcom/ansca/corona/maps/MapView;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/maps/MapView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1421
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/maps/MapView;->isZoomEnabled()Z

    move-result p1

    return p1
.end method

.method public isTextViewEditable(I)Z
    .locals 1

    .line 361
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public isTextViewSingleLine(I)Z
    .locals 2

    .line 340
    const-class v0, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaEditText;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaEditText;->getInputType()I

    move-result p1

    const/high16 v1, 0x20000

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pushMapCurrentLocationToLua(IJ)I
    .locals 10

    .line 1252
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1256
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1257
    invoke-static {v2}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p2, 0x0

    .line 1263
    const-class p3, Lcom/ansca/corona/maps/MapView;

    invoke-virtual {p0, p3, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/maps/MapView;

    if-eqz p1, :cond_2

    .line 1265
    invoke-virtual {p1}, Lcom/ansca/corona/maps/MapView;->getCurrentLocation()Landroid/location/Location;

    move-result-object p2

    .line 1269
    :cond_2
    invoke-virtual {v2, v1, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 1270
    invoke-virtual {v2}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p1

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 1272
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "latitude"

    .line 1273
    invoke-virtual {v2, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1274
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "longitude"

    .line 1275
    invoke-virtual {v2, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1276
    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "altitude"

    .line 1277
    invoke-virtual {v2, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1278
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "accuracy"

    .line 1279
    invoke-virtual {v2, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1280
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "speed"

    .line 1281
    invoke-virtual {v2, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1282
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "direction"

    .line 1283
    invoke-virtual {v2, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1284
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string p2, "time"

    .line 1285
    invoke-virtual {v2, p1, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1286
    invoke-virtual {v2, p3}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string p2, "isUpdating"

    .line 1287
    invoke-virtual {v2, p1, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const/4 p2, -0x3

    .line 1297
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    const-string v3, "Corona"

    if-eqz v0, :cond_d

    .line 1299
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p1, "ViewManager.pushMapCurrentLocationToLua() cannot continue because there is no Context!"

    .line 1301
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1311
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "location"

    .line 1312
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1313
    invoke-virtual {v0, p3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 1316
    new-instance v4, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 1317
    invoke-virtual {v4, v5}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1319
    invoke-virtual {v4, v7}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v8

    const-string v9, "android.hardware.location"

    .line 1323
    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, -0x2

    const-string p2, "Current location tracking is not available on this device."

    goto :goto_1

    .line 1328
    :cond_5
    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v6, v3, :cond_6

    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v8, v3, :cond_6

    const-string p2, "App is missing location permissions."

    const/4 v1, 0x1

    goto :goto_1

    .line 1334
    :cond_6
    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-eq v6, v3, :cond_a

    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-eq v8, v3, :cond_a

    .line 1338
    sget-object p2, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v6, p2, :cond_7

    .line 1339
    invoke-virtual {v4, v5}, Lcom/ansca/corona/permissions/PermissionsServices;->shouldNeverAskAgain(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    :cond_7
    sget-object p2, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v8, p2, :cond_9

    .line 1342
    invoke-virtual {v4, v7}, Lcom/ansca/corona/permissions/PermissionsServices;->shouldNeverAskAgain(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    const/4 v1, 0x2

    const-string p2, "Location is denied by user."

    goto :goto_1

    .line 1347
    :cond_9
    new-instance p2, Lcom/ansca/corona/ViewManager$LocationRequestPermissionsResultHandler;

    invoke-direct {p2}, Lcom/ansca/corona/ViewManager$LocationRequestPermissionsResultHandler;-><init>()V

    const-string v0, "android.permission-group.LOCATION"

    invoke-virtual {v4, v0, p2}, Lcom/ansca/corona/permissions/PermissionsServices;->requestAllDeniedPermissionsInGroup(Ljava/lang/String;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    const-string p2, "Pending user authorization."

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_c

    .line 1358
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p3, :cond_b

    .line 1360
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    const-string v0, "Current location is unknown."

    move-object p2, v0

    const/4 v1, -0x3

    goto :goto_1

    :cond_c
    :goto_0
    const/4 v1, -0x1

    const-string p2, "Location services are disabled."

    .line 1366
    :goto_1
    invoke-virtual {v2, v1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const-string v0, "errorCode"

    .line 1367
    invoke-virtual {v2, p1, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1368
    invoke-virtual {v2, p2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string p2, "errorMessage"

    .line 1369
    invoke-virtual {v2, p1, p2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :goto_2
    return p3

    :cond_d
    const-string p1, "ViewManager.pushMapCurrentLocationToLua() cannot continue because there is no Controller!"

    .line 1305
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    return v1
.end method

.method public removeAllMapViewMarkers(I)V
    .locals 1

    .line 1487
    new-instance v0, Lcom/ansca/corona/ViewManager$40;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$40;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeMapMarker(II)V
    .locals 1

    .line 1476
    new-instance v0, Lcom/ansca/corona/ViewManager$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$39;-><init>(Lcom/ansca/corona/ViewManager;II)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestWebViewDeleteCookies(I)V
    .locals 0

    .line 1208
    new-instance p1, Lcom/ansca/corona/ViewManager$33;

    invoke-direct {p1, p0}, Lcom/ansca/corona/ViewManager$33;-><init>(Lcom/ansca/corona/ViewManager;)V

    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestWebViewGoBack(I)V
    .locals 1

    .line 1184
    new-instance v0, Lcom/ansca/corona/ViewManager$31;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$31;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestWebViewGoForward(I)V
    .locals 1

    .line 1196
    new-instance v0, Lcom/ansca/corona/ViewManager$32;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$32;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestWebViewLoadUrl(ILjava/lang/String;)V
    .locals 1

    .line 1135
    new-instance v0, Lcom/ansca/corona/ViewManager$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$28;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestWebViewReload(I)V
    .locals 1

    .line 1161
    new-instance v0, Lcom/ansca/corona/ViewManager$29;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$29;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestWebViewStop(I)V
    .locals 1

    .line 1173
    new-instance v0, Lcom/ansca/corona/ViewManager$30;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$30;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 222
    instance-of v3, v2, Lcom/ansca/corona/maps/MapView;

    if-eqz v3, :cond_1

    .line 224
    check-cast v2, Lcom/ansca/corona/maps/MapView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ansca/corona/maps/MapView;->setCurrentLocationTrackingEnabled(Z)V

    goto :goto_0

    .line 226
    :cond_1
    instance-of v3, v2, Lcom/ansca/corona/CoronaVideoView;

    if-eqz v3, :cond_2

    .line 228
    check-cast v2, Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView;->resume()V

    goto :goto_0

    .line 230
    :cond_2
    instance-of v3, v2, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;

    if-eqz v3, :cond_0

    .line 232
    check-cast v2, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->getVideoView()Lcom/ansca/corona/CoronaVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView;->resume()V

    goto :goto_0

    .line 235
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public setDisplayObjectAlpha(IF)V
    .locals 1

    .line 784
    new-instance v0, Lcom/ansca/corona/ViewManager$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$18;-><init>(Lcom/ansca/corona/ViewManager;IF)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisplayObjectBackground(IZ)V
    .locals 1

    .line 825
    new-instance v0, Lcom/ansca/corona/ViewManager$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$19;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisplayObjectVisible(IZ)V
    .locals 1

    .line 716
    new-instance v0, Lcom/ansca/corona/ViewManager$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$16;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGLView(Landroid/view/View;)V
    .locals 2

    .line 628
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    .line 629
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 630
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 634
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 639
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    .line 640
    new-instance p1, Landroid/widget/AbsoluteLayout;

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    .line 641
    iget-object p1, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 642
    iget-object p1, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 646
    new-instance p1, Landroid/widget/AbsoluteLayout;

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    .line 647
    iget-object p1, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMapCenter(IDDZ)V
    .locals 9

    .line 1498
    new-instance v8, Lcom/ansca/corona/ViewManager$41;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/ViewManager$41;-><init>(Lcom/ansca/corona/ViewManager;IDDZ)V

    invoke-direct {p0, v8}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMapRegion(IDDDDZ)V
    .locals 13

    .line 1512
    new-instance v12, Lcom/ansca/corona/ViewManager$42;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/ansca/corona/ViewManager$42;-><init>(Lcom/ansca/corona/ViewManager;IDDDDZ)V

    move-object v0, p0

    invoke-direct {p0, v12}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMapScrollEnabled(IZ)V
    .locals 1

    .line 1406
    new-instance v0, Lcom/ansca/corona/ViewManager$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$35;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMapType(ILcom/ansca/corona/maps/MapType;)V
    .locals 1

    .line 1444
    new-instance v0, Lcom/ansca/corona/ViewManager$37;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$37;-><init>(Lcom/ansca/corona/ViewManager;ILcom/ansca/corona/maps/MapType;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMapZoomEnabled(IZ)V
    .locals 1

    .line 1425
    new-instance v0, Lcom/ansca/corona/ViewManager$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$36;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextPlaceholder(ILjava/lang/String;)V
    .locals 1

    .line 439
    new-instance v0, Lcom/ansca/corona/ViewManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$8;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextReturnKey(ILjava/lang/String;)V
    .locals 1

    .line 414
    new-instance v0, Lcom/ansca/corona/ViewManager$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/ansca/corona/ViewManager$7;-><init>(Lcom/ansca/corona/ViewManager;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextSelection(III)V
    .locals 1

    .line 452
    new-instance v0, Lcom/ansca/corona/ViewManager$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ansca/corona/ViewManager$9;-><init>(Lcom/ansca/corona/ViewManager;III)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewAlign(ILjava/lang/String;)V
    .locals 1

    .line 392
    new-instance v0, Lcom/ansca/corona/ViewManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$6;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewColor(II)V
    .locals 1

    .line 488
    new-instance v0, Lcom/ansca/corona/ViewManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$10;-><init>(Lcom/ansca/corona/ViewManager;II)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewEditable(IZ)V
    .locals 1

    .line 348
    new-instance v0, Lcom/ansca/corona/ViewManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$4;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewFocus(IZ)V
    .locals 1

    .line 528
    new-instance v0, Lcom/ansca/corona/ViewManager$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$12;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewFont(ILjava/lang/String;FZ)V
    .locals 7

    .line 592
    new-instance v6, Lcom/ansca/corona/ViewManager$14;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/ViewManager$14;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;FZ)V

    invoke-direct {p0, v6}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewInputType(ILjava/lang/String;)V
    .locals 1

    .line 307
    new-instance v0, Lcom/ansca/corona/ViewManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$2;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewPassword(IZ)V
    .locals 1

    .line 370
    new-instance v0, Lcom/ansca/corona/ViewManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$5;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewSingleLine(IZ)V
    .locals 1

    .line 329
    new-instance v0, Lcom/ansca/corona/ViewManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$3;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewSize(IF)V
    .locals 1

    .line 508
    new-instance v0, Lcom/ansca/corona/ViewManager$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$11;-><init>(Lcom/ansca/corona/ViewManager;IF)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextViewText(ILjava/lang/String;)V
    .locals 1

    .line 559
    new-instance v0, Lcom/ansca/corona/ViewManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$13;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public suspend()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 202
    instance-of v3, v2, Lcom/ansca/corona/maps/MapView;

    if-eqz v3, :cond_1

    .line 204
    check-cast v2, Lcom/ansca/corona/maps/MapView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ansca/corona/maps/MapView;->setCurrentLocationTrackingEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_1
    instance-of v3, v2, Lcom/ansca/corona/CoronaVideoView;

    if-eqz v3, :cond_2

    .line 208
    check-cast v2, Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView;->suspend()V

    goto :goto_0

    .line 210
    :cond_2
    instance-of v3, v2, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;

    if-eqz v3, :cond_0

    .line 212
    check-cast v2, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView$CenteredLayout;->getVideoView()Lcom/ansca/corona/CoronaVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaVideoView;->suspend()V

    goto :goto_0

    .line 215
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public videoViewGetCurrentTime(I)I
    .locals 0

    .line 1026
    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager;->getCoronaVideoViewById(I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1029
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaVideoView;->getCurrentPosition()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public videoViewGetIsMuted(I)Z
    .locals 0

    .line 1043
    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager;->getCoronaVideoViewById(I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaVideoView;->isMuted()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public videoViewGetIsPlaying(I)Z
    .locals 0

    .line 1081
    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager;->getCoronaVideoViewById(I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1083
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaVideoView;->isPlaying()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public videoViewGetIsTouchTogglesPlay(I)Z
    .locals 0

    .line 1062
    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager;->getCoronaVideoViewById(I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1064
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaVideoView;->isTouchTogglesPlay()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public videoViewGetTotalTime(I)I
    .locals 0

    .line 1035
    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager;->getCoronaVideoViewById(I)Lcom/ansca/corona/CoronaVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1037
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaVideoView;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public videoViewLoad(ILjava/lang/String;)V
    .locals 1

    .line 980
    new-instance v0, Lcom/ansca/corona/ViewManager$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$21;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public videoViewMute(IZ)V
    .locals 1

    .line 1051
    new-instance v0, Lcom/ansca/corona/ViewManager$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$25;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public videoViewPause(I)V
    .locals 1

    .line 1003
    new-instance v0, Lcom/ansca/corona/ViewManager$23;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$23;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public videoViewPlay(I)V
    .locals 1

    .line 992
    new-instance v0, Lcom/ansca/corona/ViewManager$22;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$22;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public videoViewSeek(II)V
    .locals 1

    .line 1014
    new-instance v0, Lcom/ansca/corona/ViewManager$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$24;-><init>(Lcom/ansca/corona/ViewManager;II)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public videoViewTouchTogglesPlay(IZ)V
    .locals 1

    .line 1070
    new-instance v0, Lcom/ansca/corona/ViewManager$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$26;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
