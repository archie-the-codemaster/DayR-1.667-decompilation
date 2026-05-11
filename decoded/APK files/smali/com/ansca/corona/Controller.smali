.class public Lcom/ansca/corona/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/Controller$ApiLevel22;,
        Lcom/ansca/corona/Controller$ApiLevel21;,
        Lcom/ansca/corona/Controller$ApiLevel14;,
        Lcom/ansca/corona/Controller$ApiLevel11;,
        Lcom/ansca/corona/Controller$OpenUrlRequestPermissionsResultHandler;,
        Lcom/ansca/corona/Controller$RuntimeState;
    }
.end annotation


# static fields
.field private static final IMAGE_SOURCE_CAMERA:I = 0x1

.field private static final IMAGE_SOURCE_PHOTO_LIBRARY:I = 0x0

.field private static final IMAGE_SOURCE_SAVED_PHOTOS_ALBUM:I = 0x2

.field private static final MEDIA_CAPTURE_QUALITY_HIGH:I = 0x2

.field private static final MEDIA_CAPTURE_QUALITY_LOW:I = 0x0

.field private static final MEDIA_CAPTURE_QUALITY_MEDIUM:I = 0x1


# instance fields
.field private myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

.field private myAlertDialog:Landroid/app/AlertDialog;

.field private myAndroidVersion:Lcom/ansca/corona/version/IAndroidVersionSpecific;

.field private myBridge:Lcom/ansca/corona/NativeToJavaBridge;

.field private myContext:Landroid/content/Context;

.field private myCoronaApiListener:Lcom/ansca/corona/CoronaApiListener;

.field private myCoronaShowApiListener:Lcom/ansca/corona/listeners/CoronaShowApiListener;

.field private myCoronaSplashScreenApiListener:Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;

.field private myCoronaStatusBarApiListener:Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;

.field private myCoronaStoreApiListener:Lcom/ansca/corona/listeners/CoronaStoreApiListener;

.field private myCoronaSystemApiListener:Lcom/ansca/corona/listeners/CoronaSystemApiListener;

.field private myDefaultFontSize:F

.field private myDefaultTextFieldPaddingInPixels:I

.field private myEventManager:Lcom/ansca/corona/events/EventManager;

.field private myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

.field private myGoogleMapsAPIKey:Ljava/lang/String;

.field private myHandler:Landroid/os/Handler;

.field private myHasRenderedFirstFrame:Z

.field private myIdleEnabled:Z

.field private myInitialResume:Z

.field private myIsNaturalOrientationPortrait:Z

.field private myMediaManager:Lcom/ansca/corona/MediaManager;

.field private myResourceServices:Lcom/ansca/corona/storage/ResourceServices;

.field private myRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

.field private mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

.field private mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

.field private myTimerHandler:Landroid/os/Handler;

.field private myTimerMilliseconds:I

.field private myTimerTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    .line 134
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Lcom/ansca/corona/Controller;->myHasRenderedFirstFrame:Z

    .line 139
    new-instance v2, Lcom/ansca/corona/NativeToJavaBridge;

    iget-object v3, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ansca/corona/NativeToJavaBridge;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myBridge:Lcom/ansca/corona/NativeToJavaBridge;

    .line 140
    new-instance v2, Lcom/ansca/corona/MediaManager;

    iget-object v3, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    iget-object v4, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/ansca/corona/MediaManager;-><init>(Lcom/ansca/corona/CoronaRuntime;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    .line 141
    new-instance v2, Lcom/ansca/corona/CoronaSensorManager;

    iget-object v3, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v2, v3}, Lcom/ansca/corona/CoronaSensorManager;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    .line 142
    new-instance v2, Lcom/ansca/corona/SystemMonitor;

    iget-object v3, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    iget-object v4, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/ansca/corona/SystemMonitor;-><init>(Lcom/ansca/corona/CoronaRuntime;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    .line 144
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    .line 145
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    .line 146
    new-instance v2, Lcom/ansca/corona/events/EventManager;

    invoke-direct {v2, p0}, Lcom/ansca/corona/events/EventManager;-><init>(Lcom/ansca/corona/Controller;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myEventManager:Lcom/ansca/corona/events/EventManager;

    .line 147
    new-instance v2, Lcom/ansca/corona/storage/ResourceServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myResourceServices:Lcom/ansca/corona/storage/ResourceServices;

    .line 152
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v0, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 164
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    goto :goto_2

    .line 160
    :cond_0
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    goto :goto_2

    .line 156
    :cond_2
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    .line 169
    :goto_2
    new-instance v0, Lcom/ansca/corona/CoronaEditText;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    .line 170
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/ansca/corona/Controller;->myDefaultFontSize:F

    .line 171
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 172
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingTop()I

    move-result p2

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getBorderPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/ansca/corona/Controller;->myDefaultTextFieldPaddingInPixels:I

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/Controller$RuntimeState;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/Controller;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    return p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/Controller;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ansca/corona/Controller;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ansca/corona/Controller;)Landroid/app/AlertDialog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/storage/ResourceServices;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myResourceServices:Lcom/ansca/corona/storage/ResourceServices;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ansca/corona/Controller;Lcom/ansca/corona/ActivityIndicatorDialog;)Lcom/ansca/corona/ActivityIndicatorDialog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/listeners/CoronaShowApiListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ansca/corona/Controller;->myCoronaShowApiListener:Lcom/ansca/corona/listeners/CoronaShowApiListener;

    return-object p0
.end method

.method private createAmazonAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1049
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1053
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel22;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1055
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel14;->createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    .line 1059
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1063
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 976
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 979
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel22;->createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 981
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel21;->createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 983
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel14;->createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 985
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel11;->createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    .line 988
    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 992
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private createOpenUrlIntentFor(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_6

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    if-nez v1, :cond_1

    return-object v0

    .line 524
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 531
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 532
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 535
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_4

    .line 538
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 539
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    goto :goto_4

    .line 546
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "file:///android_asset/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x16

    if-ge v5, v3, :cond_5

    .line 550
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    :goto_0
    move-object v3, v0

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 559
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 560
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 564
    :cond_8
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v5, v7, :cond_9

    goto :goto_0

    :cond_9
    if-lez v5, :cond_a

    .line 568
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 574
    new-instance v5, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v5, v1}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 576
    invoke-virtual {v5, v3}, Lcom/ansca/corona/storage/FileServices;->doesAssetFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_c

    if-eqz v3, :cond_c

    .line 584
    invoke-static {v1, v3}, Lcom/ansca/corona/storage/FileContentProvider;->createContentUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_c

    return-object v0

    .line 594
    :cond_c
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    .line 598
    :cond_d
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.intent.action.VIEW"

    if-eqz v1, :cond_10

    .line 602
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 603
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_f

    add-int/2addr v1, v4

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 605
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 607
    invoke-virtual {v1, p1}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 608
    invoke-virtual {v1, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_f

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    :cond_f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v0, :cond_13

    .line 618
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 621
    :cond_10
    invoke-static {p1}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 623
    invoke-static {p1}, Lcom/ansca/corona/MailSettings;->fromUrl(Ljava/lang/String;)Lcom/ansca/corona/MailSettings;

    move-result-object p1

    .line 626
    invoke-virtual {p1}, Lcom/ansca/corona/MailSettings;->toIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Send mail..."

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_5

    .line 631
    :cond_11
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string v3, "android.intent.action.CALL"

    .line 634
    :cond_12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_13
    :goto_5
    return-object p1

    :cond_14
    :goto_6
    return-object v0
.end method

.method private internalSetIdleTimer(Z)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaApiListener:Lcom/ansca/corona/CoronaApiListener;

    if-nez v0, :cond_0

    const-string p1, "Corona"

    const-string v0, "Controller.internalSetIdleTimer(): Can\'t set internal idle timer because our ApiListener is gone!"

    .line 916
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 921
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    .line 923
    iget-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaApiListener:Lcom/ansca/corona/CoronaApiListener;

    invoke-interface {p1}, Lcom/ansca/corona/CoronaApiListener;->removeKeepScreenOnFlag()V

    goto :goto_0

    .line 927
    :cond_1
    iget-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaApiListener:Lcom/ansca/corona/CoronaApiListener;

    invoke-interface {p1}, Lcom/ansca/corona/CoronaApiListener;->addKeepScreenOnFlag()V

    :goto_0
    return-void
.end method

.method public static updateRuntimeState(Lcom/ansca/corona/CoronaRuntime;Z)V
    .locals 4

    .line 312
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 315
    monitor-enter v0

    .line 319
    :try_start_0
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v3, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_0

    .line 320
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->resume(Lcom/ansca/corona/CoronaRuntime;)V

    .line 321
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->requestRender()V

    .line 322
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v2, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    :cond_0
    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {v1}, Lcom/ansca/corona/events/EventManager;->sendEvents()V

    .line 331
    :cond_1
    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v2, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v1, v2, :cond_2

    .line 332
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->pause(Lcom/ansca/corona/CoronaRuntime;)V

    .line 333
    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v1, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 337
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/ansca/corona/Controller$1;

    invoke-direct {v2, v0}, Lcom/ansca/corona/Controller$1;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    :cond_2
    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v2, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_4

    .line 357
    iget-boolean p1, v0, Lcom/ansca/corona/Controller;->myHasRenderedFirstFrame:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, v0, Lcom/ansca/corona/Controller;->myHasRenderedFirstFrame:Z

    .line 359
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getCoronaSplashScreenApiListener()Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 361
    invoke-interface {p1}, Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;->hideSplashScreen()V

    .line 366
    :cond_3
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->render(Lcom/ansca/corona/CoronaRuntime;)V

    .line 368
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public GetGoogleMapsAPIKey()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGoogleMapsAPIKey:Ljava/lang/String;

    return-object v0
.end method

.method protected GetHardwareIdentifier()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1917
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1918
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 1919
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1920
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method protected GetOSIdentifier()Ljava/lang/String;
    .locals 2

    .line 1931
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1938
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetGoogleMapsAPIKey(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myGoogleMapsAPIKey:Ljava/lang/String;

    return-void
.end method

.method public addImageFileToPhotoGallery(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 901
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    new-instance v2, Lcom/ansca/corona/Controller$3;

    invoke-direct {v2, p0}, Lcom/ansca/corona/Controller$3;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-static {v0, v1, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public canOpenUrl(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "r"

    .line 648
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 654
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller;->createOpenUrlIntentFor(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 660
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 663
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return v2

    .line 668
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    .line 669
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 672
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    .line 677
    :try_start_0
    invoke-virtual {v4, v3, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_3

    .line 680
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v6, 0x1

    goto :goto_0

    :catch_1
    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_4

    .line 687
    :try_start_2
    invoke-virtual {v4, v3, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_4

    .line 690
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 v6, 0x1

    goto :goto_1

    :catch_3
    nop

    :cond_4
    :goto_1
    if-nez v6, :cond_6

    return v2

    :cond_5
    const-string v0, "file"

    .line 700
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 702
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 712
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 714
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.CALL_PHONE"

    .line 716
    invoke-virtual {v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->isPermissionInManifest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 722
    :cond_7
    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->canShowActivityFor(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public canShowActivityFor(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1703
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    if-nez v1, :cond_1

    return v0

    .line 1710
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 1713
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1718
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1719
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.tv.frameworkpackagestubs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public canShowPopup(Ljava/lang/String;)Z
    .locals 4

    .line 1738
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1740
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mail"

    .line 1741
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1742
    new-instance p1, Lcom/ansca/corona/MailSettings;

    invoke-direct {p1}, Lcom/ansca/corona/MailSettings;-><init>()V

    .line 1743
    invoke-virtual {p1}, Lcom/ansca/corona/MailSettings;->toIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v0, "sms"

    .line 1744
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    new-instance p1, Lcom/ansca/corona/SmsSettings;

    invoke-direct {p1}, Lcom/ansca/corona/SmsSettings;-><init>()V

    .line 1746
    invoke-virtual {p1}, Lcom/ansca/corona/SmsSettings;->toIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v0, "appstore"

    .line 1747
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rateapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "requestapppermission"

    .line 1750
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "requestapppermissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1752
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_5

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    if-eqz v3, :cond_6

    .line 1756
    invoke-virtual {p0, v3}, Lcom/ansca/corona/Controller;->canShowActivityFor(Landroid/content/Intent;)Z

    move-result v1

    :cond_6
    return v1
.end method

.method public cancelNativeAlert(I)V
    .locals 3

    .line 1151
    monitor-enter p0

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 1153
    iput-object v1, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    .line 1154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 1160
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ansca/corona/Controller$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/ansca/corona/Controller$5;-><init>(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 1154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancelTimer()V
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->stopTimer()V

    const/4 v0, 0x0

    .line 459
    iput v0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    return-void
.end method

.method public closeNativeActivityIndicator()V
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$14;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$14;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 955
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Amazon"

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller;->createAmazonAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    .line 960
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 961
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 962
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 969
    :cond_1
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller;->createDefaultAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    .line 965
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1003
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel22;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1005
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel21;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 1007
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel14;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 1009
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel11;->createDarkAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    .line 1012
    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1016
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 1024
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1027
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel22;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1029
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel21;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 1031
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel14;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 1033
    invoke-static {p1}, Lcom/ansca/corona/Controller$ApiLevel11;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1

    .line 1036
    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1040
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    .line 298
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/Controller;->cancelNativeAlert(I)V

    .line 299
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->closeNativeActivityIndicator()V

    .line 300
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->stopTimer()V

    .line 301
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->stop()V

    .line 302
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->release()V

    .line 303
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor;->stop()V

    .line 304
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myEventManager:Lcom/ansca/corona/events/EventManager;

    invoke-virtual {v0}, Lcom/ansca/corona/events/EventManager;->removeAllEvents()V

    .line 305
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->destroy(Lcom/ansca/corona/CoronaRuntime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public displayUpdate()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->setNeedsSwap()V

    :cond_0
    return-void
.end method

.method public getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myAndroidVersion:Lcom/ansca/corona/version/IAndroidVersionSpecific;

    return-object v0
.end method

.method public getBridge()Lcom/ansca/corona/NativeToJavaBridge;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myBridge:Lcom/ansca/corona/NativeToJavaBridge;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    return-object v0
.end method

.method getCoronaApiListener()Lcom/ansca/corona/CoronaApiListener;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaApiListener:Lcom/ansca/corona/CoronaApiListener;

    return-object v0
.end method

.method getCoronaShowApiListener()Lcom/ansca/corona/listeners/CoronaShowApiListener;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaShowApiListener:Lcom/ansca/corona/listeners/CoronaShowApiListener;

    return-object v0
.end method

.method getCoronaSplashScreenApiListener()Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaSplashScreenApiListener:Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;

    return-object v0
.end method

.method getCoronaStatusBarApiListener()Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaStatusBarApiListener:Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;

    return-object v0
.end method

.method getCoronaStoreApiListener()Lcom/ansca/corona/listeners/CoronaStoreApiListener;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaStoreApiListener:Lcom/ansca/corona/listeners/CoronaStoreApiListener;

    return-object v0
.end method

.method getCoronaSystemApiListener()Lcom/ansca/corona/listeners/CoronaSystemApiListener;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaSystemApiListener:Lcom/ansca/corona/listeners/CoronaSystemApiListener;

    return-object v0
.end method

.method public getDefaultFontSize()F
    .locals 1

    .line 1990
    iget v0, p0, Lcom/ansca/corona/Controller;->myDefaultFontSize:F

    return v0
.end method

.method public getDefaultTextFieldPaddingInPixels()I
    .locals 1

    .line 1994
    iget v0, p0, Lcom/ansca/corona/Controller;->myDefaultTextFieldPaddingInPixels:I

    return v0
.end method

.method public getEventManager()Lcom/ansca/corona/events/EventManager;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myEventManager:Lcom/ansca/corona/events/EventManager;

    return-object v0
.end method

.method public getGLView()Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIdleTimer()Z
    .locals 1

    .line 944
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z

    return v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 1

    .line 1899
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaManager()Lcom/ansca/corona/MediaManager;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1903
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 1982
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 1986
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemMonitor()Lcom/ansca/corona/SystemMonitor;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    return-object v0
.end method

.method getSystemUiVisibility()Ljava/lang/String;
    .locals 5

    .line 2061
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    const-string v1, "unknown"

    if-nez v0, :cond_0

    return-object v1

    .line 2065
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    const-string v4, "default"

    if-lt v2, v3, :cond_6

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "BN LLC"

    .line 2066
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2070
    :cond_1
    invoke-static {v0}, Lcom/ansca/corona/Controller$ApiLevel11;->getSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v2, v0, 0x1006

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_2

    const-string v0, "immersiveSticky"

    return-object v0

    :cond_2
    and-int/lit16 v2, v0, 0x806

    const/16 v3, 0x806

    if-ne v2, v3, :cond_3

    const-string v0, "immersive"

    return-object v0

    :cond_3
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const-string v0, "lowProfile"

    return-object v0

    :cond_4
    if-eqz v0, :cond_6

    and-int/lit16 v2, v0, 0x1000

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_6

    const/16 v2, 0x800

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    return-object v1

    :cond_6
    :goto_0
    return-object v4
.end method

.method public getUniqueIdentifier(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1965
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetOSIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1961
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetHardwareIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1948
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetHardwareIdentifier()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1949
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    move-object v0, p1

    :cond_3
    if-nez v0, :cond_4

    .line 1956
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetOSIdentifier()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    return-object v0
.end method

.method public hasAccelerometer()Z
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->hasAccelerometer()Z

    move-result v0

    return v0
.end method

.method public hasAccessToMediaSource(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 1592
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasPermission()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hasGyroscope()Z
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->hasGyroscope()Z

    move-result v0

    return v0
.end method

.method public hasHeadingHardware()Z
    .locals 1

    .line 1881
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->hasHeadingHardware()Z

    move-result v0

    return v0
.end method

.method public hasMediaSource(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1573
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 476
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 477
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 479
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 481
    invoke-virtual {v2, p1, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :try_start_0
    new-instance p1, Lorg/apache/http/entity/StringEntity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-direct {p1, p2, p3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v2, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 489
    invoke-virtual {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 499
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 497
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 495
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->init()V

    .line 178
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->init()V

    .line 179
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor;->start()V

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    const/4 v1, 0x1

    .line 181
    iput-boolean v1, p0, Lcom/ansca/corona/Controller;->myInitialResume:Z

    .line 182
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myHasRenderedFirstFrame:Z

    .line 183
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 184
    invoke-static {}, Lcom/ansca/corona/version/AndroidVersionSpecificFactory;->create()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myAndroidVersion:Lcom/ansca/corona/version/IAndroidVersionSpecific;

    .line 187
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMultitouchEnabled()Z
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v0

    invoke-interface {v0}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->apiVersion()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    .line 257
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaSensorManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaturalOrientationPortrait()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 373
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v1, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v1, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

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

.method public openUrl(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 734
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    if-nez v1, :cond_1

    return v0

    .line 745
    :cond_1
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller;->createOpenUrlIntentFor(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 751
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 753
    new-instance v3, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v3, v1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 754
    sget-object v5, Lcom/ansca/corona/Controller$21;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    const-string v6, "android.permission.CALL_PHONE"

    invoke-virtual {v3, v6}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v4, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    goto :goto_0

    .line 766
    :cond_3
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsSettings;

    invoke-direct {v0, v6}, Lcom/ansca/corona/permissions/PermissionsSettings;-><init>(Ljava/lang/String;)V

    .line 768
    new-instance v1, Lcom/ansca/corona/Controller$OpenUrlRequestPermissionsResultHandler;

    invoke-direct {v1, p1}, Lcom/ansca/corona/Controller$OpenUrlRequestPermissionsResultHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/ansca/corona/permissions/PermissionsServices;->requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    return v4

    :cond_4
    const-string p1, "system.openURL() needs access to telephone features when given a telephone number!"

    .line 758
    invoke-virtual {p0, v6, p1}, Lcom/ansca/corona/Controller;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 779
    :cond_5
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/ansca/corona/Controller;->canShowActivityFor(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 780
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 785
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return v0
.end method

.method public requestEventRender()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor;->update()V

    .line 416
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor;->update()V

    .line 407
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 871
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 877
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 881
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 886
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p1, v1, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .line 888
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 889
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 892
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 4

    .line 837
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 844
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    goto :goto_0

    .line 850
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    .line 856
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 857
    invoke-virtual {p1, v0, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 858
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 859
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 862
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v1
.end method

.method public setAccelerometerInterval(I)V
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager;->setAccelerometerInterval(I)V

    return-void
.end method

.method setCoronaApiListener(Lcom/ansca/corona/CoronaApiListener;)V
    .locals 1

    .line 195
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaApiListener:Lcom/ansca/corona/CoronaApiListener;

    .line 196
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/SystemMonitor;->setCoronaApiListener(Lcom/ansca/corona/CoronaApiListener;)V

    return-void
.end method

.method setCoronaShowApiListener(Lcom/ansca/corona/listeners/CoronaShowApiListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaShowApiListener:Lcom/ansca/corona/listeners/CoronaShowApiListener;

    return-void
.end method

.method setCoronaSplashScreenApiListener(Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaSplashScreenApiListener:Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;

    return-void
.end method

.method setCoronaStatusBarApiListener(Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaStatusBarApiListener:Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;

    return-void
.end method

.method setCoronaStoreApiListener(Lcom/ansca/corona/listeners/CoronaStoreApiListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaStoreApiListener:Lcom/ansca/corona/listeners/CoronaStoreApiListener;

    return-void
.end method

.method setCoronaSystemApiListener(Lcom/ansca/corona/listeners/CoronaSystemApiListener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myCoronaSystemApiListener:Lcom/ansca/corona/listeners/CoronaSystemApiListener;

    return-void
.end method

.method public setEventNotification(IZ)V
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/CoronaSensorManager;->setEventNotification(IZ)V

    return-void
.end method

.method setGLView(Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    return-void
.end method

.method public setGyroscopeInterval(I)V
    .locals 1

    .line 1850
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager;->setGyroscopeInterval(I)V

    return-void
.end method

.method public setIdleTimer(Z)V
    .locals 2

    .line 933
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller;->internalSetIdleTimer(Z)V

    .line 934
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 936
    iput-boolean p1, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z

    goto :goto_0

    .line 938
    :cond_0
    iput-boolean p1, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z

    :goto_0
    return-void
.end method

.method public setLocationThreshold(D)V
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/CoronaSensorManager;->setLocationThreshold(D)V

    return-void
.end method

.method setSystemUiVisibility(Ljava/lang/String;)V
    .locals 3

    .line 1998
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_1

    .line 1999
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "BN LLC"

    .line 2000
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2004
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ansca/corona/Controller$20;

    invoke-direct {v2, p0, p1, v0}, Lcom/ansca/corona/Controller$20;-><init>(Lcom/ansca/corona/Controller;Ljava/lang/String;Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setTimer(I)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    .line 435
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->startTimer()V

    return-void
.end method

.method public showAppStoreWindow(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myCoronaShowApiListener:Lcom/ansca/corona/listeners/CoronaShowApiListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1819
    :cond_0
    invoke-interface {v0, p1}, Lcom/ansca/corona/listeners/CoronaShowApiListener;->showAppStoreWindow(Ljava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method public showImagePickerWindow(ILjava/lang/String;)V
    .locals 2

    .line 1608
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/ansca/corona/Controller$15;-><init>(Lcom/ansca/corona/Controller;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showLocationPermissionsMissingFromManifestAlert()V
    .locals 2

    .line 1468
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$12;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$12;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showNativeActivityIndicator()V
    .locals 2

    .line 1495
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$13;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$13;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1071
    monitor-exit p0

    return-void

    .line 1073
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/ansca/corona/Controller$4;-><init>(Lcom/ansca/corona/Controller;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 1073
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$11;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/Controller$11;-><init>(Lcom/ansca/corona/Controller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1399
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/ansca/corona/Controller$10;-><init>(Lcom/ansca/corona/Controller;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPermissionRationaleAlert(Ljava/lang/String;Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/ansca/corona/Controller$8;-><init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/permissions/RequestPermissionsResultData;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showRequestPermissionsWindow(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1828
    invoke-static {p1}, Lcom/ansca/corona/permissions/PermissionsSettings;->from(Ljava/util/HashMap;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p1

    .line 1831
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$19;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/Controller$19;-><init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/permissions/PermissionsSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showSendMailWindow(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1769
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ansca/corona/MailSettings;->from(Landroid/content/Context;Ljava/util/HashMap;)Lcom/ansca/corona/MailSettings;

    move-result-object p1

    .line 1772
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$17;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/Controller$17;-><init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/MailSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showSendSmsWindow(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1791
    invoke-static {p1}, Lcom/ansca/corona/SmsSettings;->from(Ljava/util/HashMap;)Lcom/ansca/corona/SmsSettings;

    move-result-object p1

    .line 1794
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$18;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/Controller$18;-><init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/SmsSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showSettingsRedirectForPermissionAlert(Ljava/lang/String;Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V
    .locals 2

    .line 1317
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/ansca/corona/Controller$9;-><init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/permissions/RequestPermissionsResultData;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showStoreDeprecatedAlert()V
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$7;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$7;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showTrialAlert()V
    .locals 2

    .line 1177
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$6;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$6;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showVideoPickerWindow(III)V
    .locals 2

    .line 1645
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/Controller$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ansca/corona/Controller$16;-><init>(Lcom/ansca/corona/Controller;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 261
    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myInitialResume:Z

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myInitialResume:Z

    .line 270
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myGLView:Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/opengl/CoronaGLSurfaceView;->onResume()V

    .line 274
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->requestEventRender()V

    .line 275
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->resumeAll()V

    .line 276
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->resume()V

    .line 277
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->startTimer()V

    .line 278
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z

    invoke-direct {p0, v0}, Lcom/ansca/corona/Controller;->internalSetIdleTimer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTimer()V
    .locals 4

    .line 439
    iget v0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 444
    new-instance v0, Lcom/ansca/corona/Controller$2;

    invoke-direct {v0, p0}, Lcom/ansca/corona/Controller$2;-><init>(Lcom/ansca/corona/Controller;)V

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    .line 453
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->stopTimer()V

    .line 283
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->pause()V

    .line 284
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    goto :goto_1

    .line 285
    :cond_1
    :goto_0
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 291
    :goto_1
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->requestEventRender()V

    .line 293
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->pauseAll()V

    const/4 v0, 0x1

    .line 294
    invoke-direct {p0, v0}, Lcom/ansca/corona/Controller;->internalSetIdleTimer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopTimer()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public vibrate()V
    .locals 3

    .line 1889
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "vibrator"

    .line 1894
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    .line 1895
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
