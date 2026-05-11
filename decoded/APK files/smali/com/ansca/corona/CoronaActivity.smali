.class public Lcom/ansca/corona/CoronaActivity;
.super Landroid/app/Activity;
.source "CoronaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaActivity$ApiLevel16;,
        Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;,
        Lcom/ansca/corona/CoronaActivity$EventHandler;,
        Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;,
        Lcom/ansca/corona/CoronaActivity$TakePictureWithCoronaActivityResultHandler;,
        Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;,
        Lcom/ansca/corona/CoronaActivity$VideoPickerEventGenerator;,
        Lcom/ansca/corona/CoronaActivity$ImagePickerEventGenerator;,
        Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;,
        Lcom/ansca/corona/CoronaActivity$SelectVideoRequestPermissionsResultHandler;,
        Lcom/ansca/corona/CoronaActivity$SelectImageRequestPermissionsResultHandler;,
        Lcom/ansca/corona/CoronaActivity$SelectMediaRequestPermissionsResultHandler;,
        Lcom/ansca/corona/CoronaActivity$SelectVideoActivityResultHandler;,
        Lcom/ansca/corona/CoronaActivity$SelectImageActivityResultHandler;,
        Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;,
        Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;,
        Lcom/ansca/corona/CoronaActivity$OnNewIntentResultHandler;,
        Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;,
        Lcom/ansca/corona/CoronaActivity$ResultHandler;
    }
.end annotation


# instance fields
.field private final MIN_REQUEST_CODE:I

.field private SPLASH_SCREEN_DURATION:I

.field private fActivityResultHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private fAutoRotateObserver:Landroid/database/ContentObserver;

.field private fController:Lcom/ansca/corona/Controller;

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fEventHandler:Lcom/ansca/corona/CoronaActivity$EventHandler;

.field private fLoggedOrientation:I

.field private fNewIntentResultHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaActivity$OnNewIntentResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private fRequestPermissionsResultHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private fSplashScreenView:Landroid/widget/ImageView;

.field private fSplashView:Landroid/widget/LinearLayout;

.field private fStartTime:J

.field private myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

.field private myHandler:Landroid/os/Handler;

.field private myInitialIntent:Landroid/content/Intent;

.field private myInitialOrientationSetting:I

.field private myInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

.field private myIsActivityResumed:Z

.field private myIsOrientationLocked:Z

.field private myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private myStatusBarMode:Lcom/ansca/corona/CoronaStatusBarSettings;

.field private myStore:Lcom/ansca/corona/purchasing/StoreProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->MIN_REQUEST_CODE:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    .line 47
    iput-boolean v1, p0, Lcom/ansca/corona/CoronaActivity;->myIsOrientationLocked:Z

    .line 49
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    .line 52
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fAutoRotateObserver:Landroid/database/ContentObserver;

    const/16 v1, 0x5dc

    .line 58
    iput v1, p0, Lcom/ansca/corona/CoronaActivity;->SPLASH_SCREEN_DURATION:I

    .line 68
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myHandler:Landroid/os/Handler;

    .line 74
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    .line 83
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->fLoggedOrientation:I

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fActivityResultHandlers:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fNewIntentResultHandlers:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fRequestPermissionsResultHandlers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/Controller;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/ansca/corona/CoronaActivity;->getDurationOfVideo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private canWriteToExternalStorage()Z
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2735
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2736
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getDurationOfVideo(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 2233
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2236
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2238
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 2239
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method private initializeOrientation()V
    .locals 3

    .line 452
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 460
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    .line 459
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 461
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    .line 462
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "requestedDefaultOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 466
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    goto :goto_0

    :cond_0
    const-string v1, "landscape"

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 468
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    goto :goto_0

    :cond_1
    const-string v1, "reversePortrait"

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    .line 470
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    goto :goto_0

    :cond_2
    const-string v1, "reverseLandscape"

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x8

    .line 472
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    goto :goto_0

    :cond_3
    const-string v1, "sensorPortrait"

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x7

    .line 474
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    goto :goto_0

    :cond_4
    const-string v1, "sensorLandscape"

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x6

    .line 476
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    const/4 v0, -0x1

    .line 478
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    :cond_6
    :goto_0
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->screenOrientationFilter(I)I

    move-result v0

    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    .line 489
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->logOrientation(I)V

    .line 490
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->setRequestedOrientation(I)V

    .line 492
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->needManualOrientationHandling()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 497
    new-instance v0, Lcom/ansca/corona/CoronaActivity$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/CoronaActivity$1;-><init>(Lcom/ansca/corona/CoronaActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fAutoRotateObserver:Landroid/database/ContentObserver;

    :cond_7
    return-void
.end method

.method private launchCoronaCameraActivity(Ljava/lang/String;)V
    .locals 2

    .line 3063
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 3064
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3065
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3067
    :cond_0
    new-instance p1, Lcom/ansca/corona/CoronaActivity$TakePictureWithCoronaActivityResultHandler;

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {p1, v1}, Lcom/ansca/corona/CoronaActivity$TakePictureWithCoronaActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result p1

    .line 3068
    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private registerResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;ILjava/util/HashMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 1442
    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1447
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1450
    invoke-virtual {v1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v0

    :goto_0
    add-int v2, v0, p2

    if-ge v1, v2, :cond_2

    .line 1458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private registerResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;Ljava/util/HashMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    .line 1407
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    goto :goto_0

    .line 1415
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private requestResumeCoronaRuntime()V
    .locals 3

    .line 1994
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    if-nez v0, :cond_0

    return-void

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    const-string v1, "Corona"

    if-nez v0, :cond_1

    const-string v0, "ERROR: CoronaActivity.requestResumeCoronaRuntime(): Can\'t resume the CoronaRuntime because our Controller died!"

    .line 2000
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2006
    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getSystemMonitor()Lcom/ansca/corona/SystemMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2007
    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2012
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->start()V

    .line 2015
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_3

    .line 2016
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->onResumeCoronaRuntime()V

    :cond_3
    const/4 v0, 0x0

    .line 2021
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v2, :cond_4

    .line 2022
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 2025
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->resume()V

    goto :goto_0

    :cond_5
    const-string v0, "ERROR: CoronaActivity.onResume(): Can\'t resume the CoronaActivity\'s views since there\'s no ViewManager!"

    .line 2028
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private requestSuspendCoronaRuntime()V
    .locals 3

    .line 2035
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    const-string v1, "Corona"

    if-eqz v0, :cond_0

    .line 2036
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->stop()V

    goto :goto_0

    :cond_0
    const-string v0, "ERROR: CoronaActivity.requestSuspendCoronaRuntime(): Can\'t suspend the CoronaRuntime because our Controller died!"

    .line 2039
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_1

    .line 2045
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->onSuspendCoronaRuntime()V

    :cond_1
    const/4 v0, 0x0

    .line 2050
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v2, :cond_2

    .line 2051
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 2054
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->suspend()V

    goto :goto_1

    :cond_3
    const-string v0, "ERROR: CoronaActivity.onPause(): Can\'t suspend the CoronaActivity\'s views since there\'s no ViewManager!"

    .line 2057
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private showCameraWindowUsing(Ljava/lang/String;Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;Landroid/net/Uri;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2939
    new-instance v4, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v5, "android.permission.CAMERA"

    .line 2940
    invoke-virtual {v4, v5}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v6

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2941
    invoke-virtual {v4, v7}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v4

    .line 2943
    new-instance v8, Lcom/ansca/corona/storage/ResourceServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    .line 2946
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result v9

    const-string v10, " but hasn\'t registered for access to it!"

    const-string v11, " is trying to write to external storage,"

    const-string v15, "Warning"

    const-string v12, "WARNING: "

    const-string v13, "Corona"

    if-nez v9, :cond_0

    const-string v5, "Camera not found."

    .line 2950
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v12, v0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-eqz v12, :cond_5

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    .line 2953
    invoke-virtual {v8}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v1, 0x104000a

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v14, v8

    .line 2952
    invoke-virtual {v12, v15, v5, v14}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2956
    :cond_0
    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v6, v1, :cond_1

    .line 2957
    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-eqz v1, :cond_5

    .line 2958
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2959
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is trying to use the camera,"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " but hasn\'t registered for access to it."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2958
    invoke-virtual {v1, v5, v8}, Lcom/ansca/corona/Controller;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2963
    :cond_1
    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v6, v1, :cond_5

    .line 2964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " does not have permission to use the camera."

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2967
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v14, v3, :cond_4

    .line 2969
    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v4, v1, :cond_2

    .line 2972
    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-eqz v1, :cond_5

    .line 2973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2974
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2973
    invoke-virtual {v1, v7, v3}, Lcom/ansca/corona/Controller;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2977
    :cond_2
    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v4, v1, :cond_3

    .line 2979
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2980
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2981
    invoke-virtual {v1, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2982
    new-instance v3, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v3, v1}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/util/LinkedHashSet;)V

    .line 2984
    invoke-virtual {v3}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v1

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v5, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;

    invoke-direct {v5}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;-><init>()V

    .line 2985
    invoke-virtual {v0, v5, v3}, Lcom/ansca/corona/CoronaActivity;->registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/PermissionsSettings;)I

    move-result v3

    .line 2984
    invoke-virtual {v0, v1, v3}, Lcom/ansca/corona/CoronaActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 2988
    :cond_3
    invoke-static {}, Lcom/ansca/corona/CameraServices;->requestCameraPermission()V

    goto :goto_0

    .line 2990
    :cond_4
    iget-object v3, v0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-eqz v3, :cond_5

    .line 2991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    iget-object v3, v0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2994
    invoke-virtual {v8}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x104000a

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v5, v12

    .line 2993
    invoke-virtual {v3, v15, v1, v5}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz v9, :cond_e

    .line 3000
    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-eq v6, v1, :cond_6

    goto/16 :goto_2

    .line 3008
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/CoronaActivity;->canWriteToExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3011
    new-instance v1, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;

    iget-object v3, v0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v1, v3, v2}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;)V

    move-object/from16 v2, p1

    .line 3012
    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->setDestinationFilePath(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v3

    move-object/from16 v4, p4

    if-eqz v4, :cond_7

    .line 3016
    invoke-virtual {v1, v4}, Lcom/ansca/corona/CoronaActivity$TakeMediaWithExternalActivityResultHandler;->setSourceUri(Landroid/net/Uri;)V

    .line 3021
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3022
    invoke-virtual {v0, v4, v3}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 3024
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/ansca/corona/CoronaActivity;->launchCoronaCameraActivity(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object/from16 v2, p1

    .line 3027
    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v4, v1, :cond_a

    .line 3030
    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-eqz v1, :cond_d

    .line 3031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3032
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3031
    invoke-virtual {v1, v7, v2}, Lcom/ansca/corona/Controller;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3036
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_b

    .line 3040
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v1, v7}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;

    invoke-direct {v3}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;-><init>()V

    .line 3044
    invoke-virtual {v0, v3, v1}, Lcom/ansca/corona/CoronaActivity;->registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/PermissionsSettings;)I

    move-result v1

    .line 3043
    invoke-virtual {v0, v2, v1}, Lcom/ansca/corona/CoronaActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 3046
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3048
    invoke-direct/range {p0 .. p1}, Lcom/ansca/corona/CoronaActivity;->launchCoronaCameraActivity(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string v1, "ERROR: Could not display Camera Activity for unknown reasons!"

    .line 3051
    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_1
    return-void

    .line 3001
    :cond_e
    :goto_2
    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3002
    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;->generateEvent(Ljava/lang/String;)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_f
    return-void
.end method

.method private unregisterResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/CoronaActivity$ResultHandler;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 1485
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1489
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 1490
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1495
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1496
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public HasSoftwareKeys()Z
    .locals 6

    .line 1233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 1234
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1236
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1237
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1239
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1240
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1242
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1243
    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1245
    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1246
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v5

    if-gtz v3, :cond_2

    sub-int/2addr v4, v0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1250
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    const/4 v3, 0x4

    .line 1251
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    :cond_2
    :goto_0
    return v1
.end method

.method public IsAndroidTV()Z
    .locals 2

    const-string v0, "uimode"

    .line 1222
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 1223
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v0, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->convertCoronaPointToAndroidPoint(Lcom/ansca/corona/CoronaRuntime;II)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 374
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 393
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 412
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getContentHeightInPixels()I
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->getContentHeightInPixels(Lcom/ansca/corona/CoronaRuntime;)I

    move-result v0

    return v0
.end method

.method public getContentWidthInPixels()I
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->getContentWidthInPixels(Lcom/ansca/corona/CoronaRuntime;)I

    move-result v0

    return v0
.end method

.method getCurrentOrientation()I
    .locals 8

    const-string v0, "window"

    .line 553
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 558
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v2, v3, :cond_0

    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    .line 562
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_2

    if-eq v1, v7, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    const/16 v3, 0x9

    if-eq v1, v7, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_9

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    const/16 v2, 0x9

    :cond_9
    :goto_3
    return v2
.end method

.method getGLView()Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHorizontalMarginInPixels()I
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->getHorizontalMarginInPixels(Lcom/ansca/corona/CoronaRuntime;)I

    move-result v0

    return v0
.end method

.method public getInitialIntent()Landroid/content/Intent;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1038
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getLoggedOrientation()I
    .locals 1

    .line 612
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->fLoggedOrientation:I

    return v0
.end method

.method public getOrientationFromManifest()I
    .locals 1

    .line 830
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    return v0
.end method

.method public getOverlayView()Landroid/widget/FrameLayout;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1006
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method getRuntime()Lcom/ansca/corona/CoronaRuntime;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object v0
.end method

.method public getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method getStatusBarHeight()I
    .locals 4

    .line 1186
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uimode"

    .line 1187
    invoke-virtual {p0, v1}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 1188
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 1191
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "amazon"

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getStatusBarHeightForAmazonDevices()I

    move-result v2

    goto :goto_0

    .line 1199
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gamestick"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "barnes"

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1207
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_4

    goto :goto_0

    .line 1212
    :cond_4
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->resolveStatusBarHeight()I

    move-result v2

    :goto_0
    return v2
.end method

.method getStatusBarHeightForAmazonDevices()I
    .locals 5

    .line 1266
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x33

    const/16 v2, 0x28

    const/16 v3, 0x22

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/16 v1, 0x28

    goto/16 :goto_4

    .line 1272
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "KFOT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x1b

    goto/16 :goto_4

    .line 1276
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "KFTT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x23

    goto/16 :goto_4

    .line 1280
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "KFJWI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "KFJWA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1284
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFSOWI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    const/16 v1, 0x22

    goto :goto_4

    .line 1288
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFTHWA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFTHWI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 1292
    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFAPWA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFAPWI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 1296
    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFARWI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_8

    goto :goto_2

    .line 1301
    :cond_8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFASWI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    goto :goto_1

    .line 1305
    :cond_9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFSAWA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFSAWI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 1312
    :cond_a
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->resolveStatusBarHeight()I

    move-result v1

    goto :goto_4

    :cond_b
    :goto_3
    const/16 v1, 0x35

    :cond_c
    :goto_4
    return v1
.end method

.method getStatusBarMode()Lcom/ansca/corona/CoronaStatusBarSettings;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object v0
.end method

.method getStore()Lcom/ansca/corona/purchasing/StoreProxy;
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    return-object v0
.end method

.method getUnscaledStatusBarHeight()D
    .locals 4

    .line 1362
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v0, v3, :cond_0

    return-wide v1

    .line 1367
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    return-wide v1

    :cond_1
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    return-wide v0
.end method

.method public getVerticalMarginInPixels()I
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->getVerticalMarginInPixels(Lcom/ansca/corona/CoronaRuntime;)I

    move-result v0

    return v0
.end method

.method public hasFixedOrientation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method hideSplashScreen()V
    .locals 6

    .line 2185
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2187
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->SPLASH_SCREEN_DURATION:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ansca/corona/CoronaActivity;->fStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2193
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 2197
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2203
    :catch_0
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 2204
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2205
    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2209
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 2210
    iput-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    .line 2211
    new-instance v3, Lcom/ansca/corona/CoronaActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/ansca/corona/CoronaActivity$3;-><init>(Lcom/ansca/corona/CoronaActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method isAtLandscapeOrientation()Z
    .locals 2

    .line 763
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getCurrentOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method isAtPortraitOrientation()Z
    .locals 3

    .line 699
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method isSplashScreenShown()Z
    .locals 1

    .line 2252
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method lockCurrentOrientation()V
    .locals 1

    .line 884
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaActivity;->myIsOrientationLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->logCurrentOrientation()V

    .line 888
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getLoggedOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->lockOrientation(I)V

    return-void
.end method

.method lockOrientation(I)V
    .locals 1

    .line 901
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaActivity;->myIsOrientationLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 906
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->logOrientation(I)V

    .line 907
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->setRequestedOrientation(I)V

    const/4 p1, 0x1

    .line 908
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaActivity;->myIsOrientationLocked:Z

    return-void
.end method

.method logCurrentOrientation()V
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getCurrentOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->logOrientation(I)V

    return-void
.end method

.method logOrientation(I)V
    .locals 0

    .line 621
    iput p1, p0, Lcom/ansca/corona/CoronaActivity;->fLoggedOrientation:I

    return-void
.end method

.method needManualOrientationHandling()Z
    .locals 2

    .line 540
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 3422
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3426
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fActivityResultHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;

    if-nez v0, :cond_0

    return-void

    .line 3434
    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;->onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1983
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1986
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->isSplashScreenShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1987
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->showSplashScreen()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ansca/corona/CoronaActivity;->fStartTime:J

    .line 192
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 194
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p1

    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myInitialIntent:Landroid/content/Intent;

    const/16 p1, 0x80

    const/4 v0, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 210
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "coronaWindowMovesWhenKeyboardAppears"

    .line 211
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 221
    invoke-virtual {p0, v2}, Lcom/ansca/corona/CoronaActivity;->requestWindowFeature(I)Z

    if-nez v1, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 228
    :cond_2
    sget-object v1, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    invoke-virtual {p0, v1}, Lcom/ansca/corona/CoronaActivity;->setStatusBarMode(Lcom/ansca/corona/CoronaStatusBarSettings;)V

    .line 231
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 237
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->initializeOrientation()V

    .line 241
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->isNewInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->onNewInstall(Landroid/content/Context;)V

    .line 244
    :cond_3
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->deleteTempDirectory(Landroid/content/Context;)V

    .line 247
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setCoronaActivity(Lcom/ansca/corona/CoronaActivity;)V

    .line 250
    new-instance v1, Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v1, p0, v0}, Lcom/ansca/corona/CoronaRuntime;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 255
    :try_start_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 256
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 257
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "initialSystemUiVisibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "immersiveSticky"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 260
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    const-string v0, "lowProfile"

    invoke-virtual {p1, v0}, Lcom/ansca/corona/Controller;->setSystemUiVisibility(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->setSystemUiVisibility(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->showCoronaSplashScreen()V

    .line 277
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    .line 279
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEnvironment;->setController(Lcom/ansca/corona/Controller;)V

    .line 281
    new-instance p1, Lcom/ansca/corona/CoronaApiHandler;

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/CoronaApiHandler;-><init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaRuntime;)V

    .line 282
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->setCoronaApiListener(Lcom/ansca/corona/CoronaApiListener;)V

    .line 284
    new-instance p1, Lcom/ansca/corona/CoronaShowApiHandler;

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {p1, p0, v0}, Lcom/ansca/corona/CoronaShowApiHandler;-><init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaRuntime;)V

    .line 285
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->setCoronaShowApiListener(Lcom/ansca/corona/listeners/CoronaShowApiListener;)V

    .line 287
    new-instance p1, Lcom/ansca/corona/CoronaSplashScreenApiHandler;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaSplashScreenApiHandler;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    .line 288
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->setCoronaSplashScreenApiListener(Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;)V

    .line 290
    new-instance p1, Lcom/ansca/corona/CoronaStatusBarApiHandler;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaStatusBarApiHandler;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    .line 291
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->setCoronaStatusBarApiListener(Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;)V

    .line 293
    new-instance p1, Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaStoreApiHandler;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    .line 294
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->setCoronaStoreApiListener(Lcom/ansca/corona/listeners/CoronaStoreApiListener;)V

    .line 296
    new-instance p1, Lcom/ansca/corona/CoronaSystemApiHandler;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaSystemApiHandler;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    .line 297
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->setCoronaSystemApiListener(Lcom/ansca/corona/listeners/CoronaSystemApiListener;)V

    .line 300
    new-instance p1, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {p1, p0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 301
    invoke-virtual {p1}, Lcom/ansca/corona/storage/FileServices;->loadExpansionFiles()V

    .line 304
    new-instance p1, Lcom/ansca/corona/purchasing/StoreProxy;

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ansca/corona/purchasing/StoreProxy;-><init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    .line 305
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    invoke-virtual {p1, p0}, Lcom/ansca/corona/purchasing/StoreProxy;->setActivity(Landroid/app/Activity;)V

    .line 308
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myHandler:Landroid/os/Handler;

    .line 312
    new-instance p1, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 316
    :try_start_2
    invoke-static {p0}, Lcom/ansca/corona/storage/FileContentProvider;->validateManifest(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 319
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "Error"

    invoke-virtual {v0, v2, p1, v1}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 324
    :goto_2
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getGLView()Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    .line 325
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {p1, p0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setActivity(Landroid/app/Activity;)V

    .line 326
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->setContentView(Landroid/view/View;)V

    .line 331
    new-instance v0, Lcom/ansca/corona/input/ViewInputHandler;

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/input/ViewInputHandler;-><init>(Lcom/ansca/corona/Controller;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    .line 332
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/input/ViewInputHandler;->setDispatcher(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V

    .line 333
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    invoke-virtual {p1}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/ViewInputHandler;->setView(Landroid/view/View;)V

    .line 337
    new-instance p1, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {p1, p0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 341
    new-instance p1, Lcom/ansca/corona/input/InputDeviceServices;

    invoke-direct {p1, p0}, Lcom/ansca/corona/input/InputDeviceServices;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance p1, Lcom/ansca/corona/CoronaActivity$EventHandler;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaActivity$EventHandler;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fEventHandler:Lcom/ansca/corona/CoronaActivity$EventHandler;

    .line 350
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_6

    .line 351
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->syncPermissionStateForAllPermissions()V

    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1753
    invoke-static {p0}, Lcom/ansca/corona/CameraActivity;->clearCachedPhotos(Landroid/content/Context;)V

    .line 1756
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fEventHandler:Lcom/ansca/corona/CoronaActivity$EventHandler;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity$EventHandler;->dispose()V

    .line 1759
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->requestExitAndWait()V

    const/4 v0, 0x0

    .line 1762
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    .line 1763
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/StoreProxy;->disable()V

    .line 1765
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    .line 1767
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->dispose()V

    .line 1768
    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 1772
    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->setCoronaActivity(Lcom/ansca/corona/CoronaActivity;)V

    .line 1775
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 3487
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    invoke-virtual {v0, p2}, Lcom/ansca/corona/input/ViewInputHandler;->handle(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_3

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    const/16 v2, 0x15

    :try_start_0
    const-string v3, "audio"

    .line 3510
    invoke-virtual {p0, v3}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 3511
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getVolumeControlStream()I

    move-result v4

    .line 3510
    invoke-virtual {v3, v0, v4, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    nop

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 3519
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3521
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->goBack()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 3529
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3547
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInputHandler:Lcom/ansca/corona/input/ViewInputHandler;

    invoke-virtual {v0, p2}, Lcom/ansca/corona/input/ViewInputHandler;->handle(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3554
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1891
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_6

    .line 1894
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1900
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1901
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    .line 1902
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1903
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string v0, "notification"

    .line 1910
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1915
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->setIntent(Landroid/content/Intent;)V

    .line 1918
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1920
    new-instance v1, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v2, Lcom/ansca/corona/CoronaActivity$2;

    invoke-direct {v2, p0}, Lcom/ansca/corona/CoronaActivity$2;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    invoke-direct {v1, v2}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 1929
    :cond_5
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fNewIntentResultHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaActivity$OnNewIntentResultHandler;

    .line 1930
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaActivity$OnNewIntentResultHandler;->onHandleNewIntentResult(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1845
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1847
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->needManualOrientationHandling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->logCurrentOrientation()V

    .line 1853
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fAutoRotateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 1858
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    .line 1859
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->requestSuspendCoronaRuntime()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 3456
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 3460
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fRequestPermissionsResultHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;

    if-nez v0, :cond_0

    return-void

    .line 3468
    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;->onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1794
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1796
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->needManualOrientationHandling()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "accelerometer_rotation"

    .line 1799
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1800
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fAutoRotateObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1804
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1803
    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 1807
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->isAtPortraitOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->supportsPortraitOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1808
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->isAtLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->supportsLandscapeOrientation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1810
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getLoggedOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->lockOrientation(I)V

    goto :goto_0

    .line 1814
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->lockCurrentOrientation()V

    goto :goto_0

    .line 1818
    :cond_3
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->restoreInitialOrientationSetting()V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 1823
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    .line 1824
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->requestResumeCoronaRuntime()V

    .line 1827
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_5

    .line 1828
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->updateViews()V

    :cond_5
    return-void
.end method

.method onScreenLockStateChanged(Z)V
    .locals 0

    .line 1967
    iget-boolean p1, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    if-eqz p1, :cond_0

    .line 1968
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->updateViews()V

    .line 1972
    :cond_0
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->requestResumeCoronaRuntime()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1785
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1872
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1950
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fActivityResultHandlers:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/CoronaActivity;->registerResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;Ljava/util/HashMap;)I

    move-result p1

    return p1
.end method

.method public registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;I)I
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fActivityResultHandlers:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/ansca/corona/CoronaActivity;->registerResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;ILjava/util/HashMap;)I

    move-result p1

    return p1
.end method

.method public registerNewIntentResultHandler(Lcom/ansca/corona/CoronaActivity$OnNewIntentResultHandler;)V
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fNewIntentResultHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)I
    .locals 2

    .line 1604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fRequestPermissionsResultHandlers:Ljava/util/HashMap;

    .line 1605
    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/CoronaActivity;->registerResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;Ljava/util/HashMap;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;I)I
    .locals 2

    .line 1665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fRequestPermissionsResultHandlers:Ljava/util/HashMap;

    .line 1666
    invoke-direct {p0, p1, p2, v0}, Lcom/ansca/corona/CoronaActivity;->registerResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;ILjava/util/HashMap;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;ILcom/ansca/corona/permissions/PermissionsSettings;)I
    .locals 3

    .line 1699
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)I

    move-result p1

    if-lez p1, :cond_0

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 1703
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsSettings;->getSettingsToBeServiced()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/PermissionsSettings;)I
    .locals 2

    .line 1631
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)I

    move-result p1

    if-lez p1, :cond_0

    .line 1634
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsSettings;->getSettingsToBeServiced()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p1
.end method

.method resolveNavBarHeight()I
    .locals 4

    .line 1351
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1353
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method resolveStatusBarHeight()I
    .locals 6

    .line 1326
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1329
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getUnscaledStatusBarHeight()D

    move-result-wide v0

    .line 1336
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4064000000000000L    # 160.0

    .line 1337
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0
.end method

.method restoreInitialOrientationSetting()V
    .locals 1

    .line 917
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaActivity;->myIsOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 918
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->setRequestedOrientation(I)V

    const/4 v0, 0x0

    .line 919
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaActivity;->myIsOrientationLocked:Z

    :cond_0
    return-void
.end method

.method screenOrientationFilter(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    :pswitch_2
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    :pswitch_3
    const/4 p1, 0x1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRequestedOrientation(I)V
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->screenOrientationFilter(I)I

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method setStatusBarMode(Lcom/ansca/corona/CoronaStatusBarSettings;)V
    .locals 4

    .line 1114
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne p1, v0, :cond_0

    return-void

    .line 1119
    :cond_0
    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    const/16 v1, 0x800

    const/16 v2, 0x400

    if-ne p1, v0, :cond_1

    .line 1120
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_7

    .line 1123
    :cond_1
    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->DEFAULT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->TRANSLUCENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->LIGHT_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 1130
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:Lcom/ansca/corona/CoronaStatusBarSettings;

    sget-object v3, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne v0, v3, :cond_4

    .line 1131
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1132
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1137
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_6

    .line 1138
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->getSystemUiVisibility()I

    move-result v0

    .line 1139
    sget-object v1, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne p1, v1, :cond_5

    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    :cond_5
    and-int/lit16 v0, v0, -0x2001

    .line 1144
    :goto_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 1145
    :cond_6
    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne p1, v0, :cond_7

    .line 1146
    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->LIGHT_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    goto :goto_3

    :cond_7
    :goto_2
    move-object v0, p1

    .line 1149
    :goto_3
    sget-object v1, Lcom/ansca/corona/CoronaStatusBarSettings;->LIGHT_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v1, 0x1

    .line 1151
    :goto_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_b

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_a

    .line 1153
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_6

    .line 1155
    :cond_a
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_c

    .line 1158
    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->TRANSLUCENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    .line 1161
    :cond_c
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_e

    .line 1164
    sget-object v1, Lcom/ansca/corona/CoronaStatusBarSettings;->TRANSLUCENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    const/high16 v2, 0x4000000

    if-ne v0, v1, :cond_d

    .line 1166
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_7

    .line 1169
    :cond_d
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1176
    :cond_e
    :goto_7
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-void
.end method

.method showCameraWindowForImage(Ljava/lang/String;)V
    .locals 8

    .line 2776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2779
    new-instance v1, Lcom/ansca/corona/CoronaActivity$ImagePickerEventGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ansca/corona/CoronaActivity$ImagePickerEventGenerator;-><init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$1;)V

    .line 2781
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 2783
    new-instance v4, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v4, p0}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2784
    invoke-virtual {v4, v5}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v4

    .line 2787
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->canWriteToExternalStorage()Z

    move-result v6

    const-string v7, "Corona"

    if-eqz v6, :cond_2

    if-eqz v3, :cond_6

    .line 2790
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 2794
    new-instance v2, Lcom/ansca/corona/storage/UniqueFileNameBuilder;

    invoke-direct {v2}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;-><init>()V

    .line 2795
    invoke-virtual {v2, v3}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setDirectory(Ljava/io/File;)V

    const-string v3, "Picture"

    .line 2796
    invoke-virtual {v2, v3}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setFileNameFormat(Ljava/lang/String;)V

    const-string v3, ".jpg"

    .line 2797
    invoke-virtual {v2, v3}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setFileExtension(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v2}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->build()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "Failed to generate a unique file name for the camera shot."

    .line 2801
    invoke-static {v7, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2803
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    const-string v0, ""

    invoke-interface {v1, v0}, Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;->generateEvent(Ljava/lang/String;)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void

    .line 2808
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "output"

    .line 2809
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 2812
    :cond_2
    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v4, v3, :cond_3

    .line 2815
    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-eqz v3, :cond_6

    .line 2816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2817
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is trying to write to external storage, but hasn\'t registered for access to it."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2816
    invoke-virtual {v3, v5, v4}, Lcom/ansca/corona/Controller;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2820
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    .line 2823
    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v3}, Lcom/ansca/corona/JavaToNativeShim;->abortShowingImageProvider(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 2826
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ERROR: CoronaActivity.showCamerWindowForImage(): There\'s no external storage available to save photos to! Please mount your external storage"

    .line 2828
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v3, "ERROR: CoronaActivity.showCamerWindowForImage(): Something went horribly wrong when trying to present the camera!"

    .line 2831
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_6
    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ansca/corona/CoronaActivity;->showCameraWindowUsing(Ljava/lang/String;Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;Landroid/net/Uri;)V

    return-void
.end method

.method showCameraWindowForVideo(II)V
    .locals 6

    .line 2843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2846
    new-instance v1, Lcom/ansca/corona/CoronaActivity$VideoPickerEventGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ansca/corona/CoronaActivity$VideoPickerEventGenerator;-><init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$1;)V

    .line 2848
    new-instance v3, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v3, p0}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2849
    invoke-virtual {v3, v4}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v3

    .line 2855
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_2

    .line 2857
    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 2859
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->canWriteToExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 2862
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 2866
    new-instance v4, Lcom/ansca/corona/storage/UniqueFileNameBuilder;

    invoke-direct {v4}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;-><init>()V

    .line 2867
    invoke-virtual {v4, v3}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setDirectory(Ljava/io/File;)V

    const-string v3, "Video"

    .line 2868
    invoke-virtual {v4, v3}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setFileNameFormat(Ljava/lang/String;)V

    const-string v3, ".3gp"

    .line 2869
    invoke-virtual {v4, v3}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setFileExtension(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v4}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->build()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p1, "Corona"

    const-string p2, "Failed to generate a unique file name for the camera shot."

    .line 2873
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2875
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    const-string p2, ""

    invoke-interface {v1, p2}, Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;->generateEvent(Ljava/lang/String;)Lcom/ansca/corona/events/MediaPickerTask;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void

    .line 2880
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "output"

    .line 2881
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 2884
    :cond_2
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->canWriteToExternalStorage()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v3, v4, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 2889
    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v3}, Lcom/ansca/corona/JavaToNativeShim;->abortShowingVideoProvider(Lcom/ansca/corona/CoronaRuntime;)V

    :cond_3
    move-object v3, v2

    :goto_0
    if-lez p1, :cond_4

    const-string v4, "android.intent.extra.durationLimit"

    .line 2893
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const-string p1, "android.intent.extra.videoQuality"

    .line 2896
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2899
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/ansca/corona/CoronaActivity;->showCameraWindowUsing(Ljava/lang/String;Landroid/content/Intent;Lcom/ansca/corona/CoronaActivity$MediaEventGenerator;Landroid/net/Uri;)V

    return-void
.end method

.method showCoronaSplashScreen()V
    .locals 11

    .line 2068
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-string v2, "Corona"

    const-wide/32 v3, 0x2000000

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    const-string v0, "Not enough memory to show splash screen"

    .line 2070
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2077
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2078
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2080
    new-instance v3, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v3, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    const-string v4, "drawable/_corona_splash_screen.png"

    .line 2081
    invoke-virtual {v3, v4}, Lcom/ansca/corona/storage/FileServices;->doesResourceFileExist(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    const-string v4, "drawable/_corona_splash_screen.jpg"

    .line 2082
    invoke-virtual {v3, v4}, Lcom/ansca/corona/storage/FileServices;->doesResourceFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    .line 2087
    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v3

    :try_start_0
    const-string v4, "_corona_splash_screen"

    const-string v7, "drawable"

    .line 2092
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2095
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCoronaSplashScreen load EXCEPTION: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v5, :cond_5

    .line 2103
    :try_start_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    .line 2104
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2105
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2108
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2109
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v4, "window"

    .line 2113
    invoke-virtual {p0, v4}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 2114
    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2116
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lt v5, v7, :cond_3

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 2121
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 2127
    :cond_3
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-double v7, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-double v9, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    .line 2128
    :try_start_2
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    int-to-double v9, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v9

    cmpl-double v9, v4, v7

    if-lez v9, :cond_4

    .line 2135
    :try_start_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    double-to-int v4, v4

    .line 2136
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    double-to-int v5, v9

    goto :goto_3

    .line 2140
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v4

    double-to-int v7, v7

    .line 2141
    :try_start_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    double-to-int v5, v8

    move v4, v7

    .line 2144
    :goto_3
    :try_start_7
    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2149
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2164
    :goto_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2169
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2171
    iget-object v4, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2173
    invoke-virtual {v3}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity;->fSplashView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCoronaSplashScreen display EXCEPTION: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-void
.end method

.method public showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/Controller;->showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V

    return-void
.end method

.method public showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fController:Lcom/ansca/corona/Controller;

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/Controller;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method showRequestPermissionsWindowUsing(Lcom/ansca/corona/permissions/PermissionsSettings;)V
    .locals 7

    const-string v0, "Corona"

    if-eqz p1, :cond_a

    .line 3293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    .line 3298
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3301
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3307
    :cond_1
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 3308
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3309
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3313
    invoke-virtual {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->isPAAppPermissionName(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 3316
    invoke-virtual {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionGroupFromPAAppPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3317
    invoke-virtual {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3319
    array-length v6, v4

    if-gtz v6, :cond_7

    .line 3321
    :cond_3
    invoke-virtual {p0, v3}, Lcom/ansca/corona/CoronaActivity;->showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V

    return-void

    .line 3325
    :cond_4
    invoke-virtual {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->isSupportedPermissionGroupName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3327
    invoke-virtual {v0, v3}, Lcom/ansca/corona/permissions/PermissionsServices;->findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3329
    array-length v6, v4

    if-gtz v6, :cond_7

    .line 3331
    :cond_5
    invoke-virtual {p0, v3}, Lcom/ansca/corona/CoronaActivity;->showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v5

    .line 3342
    :cond_7
    :goto_0
    array-length v3, v4

    if-ge v5, v3, :cond_2

    .line 3343
    aget-object v3, v4, v5

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3348
    :cond_8
    invoke-virtual {p1, v2}, Lcom/ansca/corona/permissions/PermissionsSettings;->setPermissions(Ljava/util/LinkedHashSet;)V

    .line 3351
    new-instance v1, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;

    invoke-direct {v1}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    return-void

    :cond_9
    :goto_1
    const-string p1, "No App Permissions requested!"

    .line 3302
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :goto_2
    const-string p1, "Cannot request permissions. Invalid environment!"

    .line 3294
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method showSelectImageWindowUsing(Ljava/lang/String;)V
    .locals 4

    .line 2264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 2265
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 2266
    sget-object v1, Lcom/ansca/corona/CoronaActivity$4;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "media.selectPhoto() needs Storage access to handle all possible file paths a 3rd party Gallery app might provide!"

    .line 2268
    invoke-virtual {p0, v2, p1}, Lcom/ansca/corona/CoronaActivity;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2273
    :cond_1
    invoke-virtual {v0, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->shouldNeverAskAgain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2275
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v1, v2}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 2278
    new-instance v2, Lcom/ansca/corona/CoronaActivity$SelectImageRequestPermissionsResultHandler;

    const-string v3, "media.selectPhoto()"

    invoke-direct {v2, v3, p1}, Lcom/ansca/corona/CoronaActivity$SelectImageRequestPermissionsResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    goto :goto_0

    .line 2283
    :cond_2
    iget-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const-string v0, "Corona"

    if-eqz p1, :cond_4

    .line 2284
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2286
    new-instance v0, Lcom/ansca/corona/events/ImagePickerTask;

    invoke-direct {v0}, Lcom/ansca/corona/events/ImagePickerTask;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    :cond_3
    const-string p1, "media.selectPhoto() cannot continue because there\'s no Corona Runtime Task Dispatcher!"

    .line 2288
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "media.selectPhoto() cannot continue because there\'s no Corona Runtime!"

    .line 2291
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 2302
    :cond_5
    :goto_1
    new-instance v0, Lcom/ansca/corona/CoronaActivity$SelectImageActivityResultHandler;

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaActivity$SelectImageActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    .line 2303
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity$SelectImageActivityResultHandler;->setDestinationFilePath(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result p1

    .line 2307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2308
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ""

    .line 2309
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2310
    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showSelectVideoWindow()V
    .locals 4

    .line 2320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 2321
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 2322
    sget-object v1, Lcom/ansca/corona/CoronaActivity$4;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "media.selectVideo() needs Storage access to handle all possible file paths a 3rd party Gallery app might provide!"

    .line 2324
    invoke-virtual {p0, v2, v0}, Lcom/ansca/corona/CoronaActivity;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2329
    :cond_1
    invoke-virtual {v0, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->shouldNeverAskAgain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2332
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v1, v2}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 2335
    new-instance v2, Lcom/ansca/corona/CoronaActivity$SelectVideoRequestPermissionsResultHandler;

    const-string v3, "media.selectVideo()"

    invoke-direct {v2, v3}, Lcom/ansca/corona/CoronaActivity$SelectVideoRequestPermissionsResultHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    goto :goto_0

    .line 2339
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const-string v1, "Corona"

    if-eqz v0, :cond_4

    .line 2340
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2342
    new-instance v1, Lcom/ansca/corona/events/VideoPickerTask;

    invoke-direct {v1}, Lcom/ansca/corona/events/VideoPickerTask;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    :cond_3
    const-string v0, "media.selectVideo() cannot continue because there\'s no Corona Runtime Task Dispatcher!"

    .line 2344
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "media.selectVideo() cannot continue because there\'s no Corona Runtime!"

    .line 2347
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 2359
    :cond_5
    :goto_1
    new-instance v0, Lcom/ansca/corona/CoronaActivity$SelectVideoActivityResultHandler;

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaActivity$SelectVideoActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    .line 2360
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v0

    .line 2363
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "video/*"

    .line 2364
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ""

    .line 2365
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 2366
    invoke-virtual {p0, v1, v0}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showSendMailWindowUsing(Lcom/ansca/corona/MailSettings;)V
    .locals 3

    if-nez p1, :cond_0

    .line 3262
    new-instance p1, Lcom/ansca/corona/MailSettings;

    invoke-direct {p1}, Lcom/ansca/corona/MailSettings;-><init>()V

    .line 3266
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/MailSettings;->toIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3267
    new-instance v0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;

    const/4 v1, 0x0

    const-string v2, "mail"

    invoke-direct {v0, p0, v2, v1}, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity$1;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v0

    .line 3268
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showSendSmsWindowUsing(Lcom/ansca/corona/SmsSettings;)V
    .locals 3

    if-nez p1, :cond_0

    .line 3278
    new-instance p1, Lcom/ansca/corona/SmsSettings;

    invoke-direct {p1}, Lcom/ansca/corona/SmsSettings;-><init>()V

    .line 3282
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/SmsSettings;->toIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3283
    new-instance v0, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;

    const/4 v1, 0x0

    const-string v2, "sms"

    invoke-direct {v0, p0, v2, v1}, Lcom/ansca/corona/CoronaActivity$PopupActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity$1;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v0

    .line 3284
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showSplashScreen()V
    .locals 0

    return-void
.end method

.method public supportsLandscapeOrientation()Z
    .locals 2

    .line 787
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public supportsOrientationChanges()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsPortraitOrientation()Z
    .locals 3

    .line 736
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialOrientationSetting:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method syncPermissionStateForAllPermissions()V
    .locals 12

    .line 927
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v0, p0}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 928
    invoke-virtual {v0}, Lcom/ansca/corona/permissions/PermissionsServices;->getSupportedPermissionGroups()[Ljava/lang/String;

    move-result-object v1

    .line 931
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 934
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 936
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Lcom/ansca/corona/permissions/PermissionsServices;->findAllPermissionsInManifestForGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 938
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 942
    :goto_1
    array-length v10, v5

    if-ge v6, v10, :cond_4

    .line 943
    aget-object v10, v5, v6

    invoke-virtual {v0, v10}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v10

    .line 944
    sget-object v11, Lcom/ansca/corona/CoronaActivity$4;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    invoke-virtual {v10}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v10

    aget v10, v11, v10

    if-eq v10, v7, :cond_2

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v9, :cond_1

    .line 958
    aget-object v8, v5, v6

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    .line 950
    aget-object v9, v5, v6

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v9, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 968
    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 970
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v1, v2}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/util/LinkedHashSet;)V

    new-instance v2, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;

    invoke-direct {v2}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    :cond_6
    return-void
.end method

.method public unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fActivityResultHandlers:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/CoronaActivity;->unregisterResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;Ljava/util/HashMap;)Ljava/util/ArrayList;

    return-void
.end method

.method public unregisterNewIntentResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fNewIntentResultHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;
    .locals 2

    .line 1731
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fRequestPermissionsResultHandlers:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/CoronaActivity;->unregisterResultHandler(Lcom/ansca/corona/CoronaActivity$ResultHandler;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1734
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1736
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1737
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsSettings;->getSettingsToBeServiced()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/permissions/PermissionsSettings;

    goto :goto_0

    :cond_0
    return-object v0
.end method
