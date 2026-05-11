.class public Lshared/google/play/services/base/PackageStateChangedService;
.super Landroid/app/Service;
.source "PackageStateChangedService.java"


# static fields
.field private static sBroadcastReceiver:Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private registerPackageStateChangedBroadcastReceiver()V
    .locals 2

    .line 44
    new-instance v0, Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;

    invoke-direct {v0}, Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;-><init>()V

    sput-object v0, Lshared/google/play/services/base/PackageStateChangedService;->sBroadcastReceiver:Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lshared/google/play/services/base/PackageStateChangedService;->sBroadcastReceiver:Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lshared/google/play/services/base/PackageStateChangedService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lshared/google/play/services/base/PackageStateChangedService;->registerPackageStateChangedBroadcastReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 32
    sget-object v0, Lshared/google/play/services/base/PackageStateChangedService;->sBroadcastReceiver:Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;

    invoke-virtual {p0, v0}, Lshared/google/play/services/base/PackageStateChangedService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lshared/google/play/services/base/PackageStateChangedService;->sBroadcastReceiver:Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
