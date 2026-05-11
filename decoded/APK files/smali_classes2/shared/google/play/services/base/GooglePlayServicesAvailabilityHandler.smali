.class public Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$CoronaRuntimeEventHandler;,
        Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;
    }
.end annotation


# static fields
.field private static sApplicationInfo:Landroid/content/pm/ApplicationInfo; = null

.field private static sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime; = null

.field private static sGooglePlayServicesActivityResultHandler:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler; = null

.field private static sInstance:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler; = null

.field private static sListener:I = -0x2

.field private static sNotificationServices:Lcom/ansca/corona/notifications/NotificationServices;

.field private static sPackageServices:Lcom/ansca/corona/storage/PackageServices;

.field private static sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

.field private static sPresentedAlertDialog:Landroid/app/AlertDialog;

.field private static sPresentedNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sGooglePlayServicesActivityResultHandler:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    .line 65
    sput-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 66
    sput v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedNotificationId:I

    .line 69
    sput-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    sput-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sInstance:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 79
    :goto_0
    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->loadRecentStateHistory(Landroid/content/Context;)V

    .line 82
    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getPackageServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/storage/PackageServices;

    .line 83
    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getNotificationServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/notifications/NotificationServices;

    .line 84
    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getPermissionsServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/permissions/PermissionsServices;

    .line 87
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$CoronaRuntimeEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$CoronaRuntimeEventHandler;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;)V

    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lshared/google/play/services/base/PackageStateChangedService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    .line 94
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    sput-object p1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic access$200(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/storage/PackageState;I)Landroid/app/AlertDialog;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getStoreErrorDialog(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/storage/PackageState;I)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Landroid/app/AlertDialog;
    .locals 1

    .line 47
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 47
    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/ansca/corona/storage/PackageState;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->postGooglePlayStoreStateNotification(Lcom/ansca/corona/storage/PackageState;)V

    return-void
.end method

.method static synthetic access$500(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->postNeedEnvironmentChangeNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->postGooglePlayServicesUserResolvableErrorNotification(I)V

    return-void
.end method

.method static synthetic access$700(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->dismissPresentedAlertDialog()V

    return-void
.end method

.method private clearGooglePlayServicesAvailabilityUI()V
    .locals 2

    .line 923
    invoke-direct {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->dismissPresentedAlertDialog()V

    .line 925
    sget v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedNotificationId:I

    if-eqz v0, :cond_0

    .line 926
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getNotificationServices()Lcom/ansca/corona/notifications/NotificationServices;

    move-result-object v0

    sget v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedNotificationId:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->removeById(I)Z

    const/4 v0, 0x0

    .line 927
    sput v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedNotificationId:I

    :cond_0
    return-void
.end method

.method private dismissPresentedAlertDialog()V
    .locals 3

    .line 937
    monitor-enter p0

    .line 938
    :try_start_0
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 939
    sput-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedAlertDialog:Landroid/app/AlertDialog;

    .line 940
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 946
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 947
    new-instance v2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$6;

    invoke-direct {v2, p0, v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$6;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 940
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static dispatchSharedGooglePlayServicesBaseEvent()V
    .locals 3

    .line 349
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_0

    .line 351
    sget v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sListener:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lshared/google/play/services/base/SharedGooglePlayServicesBaseEvent;

    sget v2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sListener:I

    invoke-direct {v1, v2}, Lshared/google/play/services/base/SharedGooglePlayServicesBaseEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method

.method public static getActivityResultHandler()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;
    .locals 2

    .line 123
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sGooglePlayServicesActivityResultHandler:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sGooglePlayServicesActivityResultHandler:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    .line 126
    :cond_0
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sGooglePlayServicesActivityResultHandler:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    return-object v0
.end method

.method public static getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;
    .locals 1

    .line 103
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstanceWithContext(Landroid/content/Context;)Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceWithContext(Landroid/content/Context;)Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;
    .locals 1

    .line 111
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sInstance:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sInstance:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    new-instance p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;-><init>(Landroid/content/Context;)V

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sInstance:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    .line 118
    :cond_2
    :goto_1
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sInstance:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    return-object p0
.end method

.method private static getNotificationServices()Lcom/ansca/corona/notifications/NotificationServices;
    .locals 1

    .line 171
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getNotificationServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/notifications/NotificationServices;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/notifications/NotificationServices;
    .locals 1

    .line 179
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sNotificationServices:Lcom/ansca/corona/notifications/NotificationServices;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sNotificationServices:Lcom/ansca/corona/notifications/NotificationServices;

    goto :goto_1

    .line 181
    :cond_1
    :goto_0
    new-instance p0, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sNotificationServices:Lcom/ansca/corona/notifications/NotificationServices;

    .line 186
    :cond_2
    :goto_1
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sNotificationServices:Lcom/ansca/corona/notifications/NotificationServices;

    return-object p0
.end method

.method private static getPackageServices()Lcom/ansca/corona/storage/PackageServices;
    .locals 1

    .line 151
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getPackageServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/storage/PackageServices;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/storage/PackageServices;
    .locals 1

    .line 159
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPackageServices:Lcom/ansca/corona/storage/PackageServices;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Lcom/ansca/corona/storage/PackageServices;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/storage/PackageServices;-><init>(Landroid/content/Context;)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPackageServices:Lcom/ansca/corona/storage/PackageServices;

    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    new-instance p0, Lcom/ansca/corona/storage/PackageServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ansca/corona/storage/PackageServices;-><init>(Landroid/content/Context;)V

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPackageServices:Lcom/ansca/corona/storage/PackageServices;

    .line 166
    :cond_2
    :goto_1
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPackageServices:Lcom/ansca/corona/storage/PackageServices;

    return-object p0
.end method

.method private static getPermissionsServices()Lcom/ansca/corona/permissions/PermissionsServices;
    .locals 1

    .line 131
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getPermissionsServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/permissions/PermissionsServices;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionsServicesWithContext(Landroid/content/Context;)Lcom/ansca/corona/permissions/PermissionsServices;
    .locals 1

    .line 139
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    new-instance p0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    .line 146
    :cond_2
    :goto_1
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPermissionsServices:Lcom/ansca/corona/permissions/PermissionsServices;

    return-object p0
.end method

.method private getStoreErrorDialog(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/storage/PackageState;I)Landroid/app/AlertDialog;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 371
    sget-object v1, Lcom/ansca/corona/storage/PackageState;->ENABLED:Lcom/ansca/corona/storage/PackageState;

    if-eq p2, v1, :cond_3

    if-gtz p3, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    invoke-virtual {p1, p1}, Lcom/ansca/corona/CoronaActivity;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 380
    sget-object v0, Lcom/ansca/corona/storage/PackageState;->DISABLED:Lcom/ansca/corona/storage/PackageState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    .line 381
    sget p2, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_enable_title:I

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_enable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 383
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 382
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 384
    sget p1, Lshared/google/play/services/base/R$string;->common_google_play_services_enable_button:I

    new-instance p2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$2;

    invoke-direct {p2, p0, p3}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$2;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;I)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 399
    :cond_1
    sget-object p3, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    if-ne p2, p3, :cond_2

    .line 400
    sget p2, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_unsupported_title:I

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_unsupported_text:I

    new-array p3, v2, [Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    .line 401
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 403
    sget p1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_exit_button:I

    new-instance p2, Lshared/google/play/services/base/OnExitClickListener;

    invoke-direct {p2}, Lshared/google/play/services/base/OnExitClickListener;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 409
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 410
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private handleConnectingToGooglePlayStorePreReqs(Lcom/ansca/corona/CoronaActivity;I)Z
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayStoreState(Lcom/ansca/corona/CoronaActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private handleGooglePlayServicesUserResolvableError(Lcom/ansca/corona/CoronaActivity;I)V
    .locals 3

    .line 743
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 746
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 748
    invoke-static {p2}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->setState(I)V

    .line 756
    invoke-direct {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->clearGooglePlayServicesAvailabilityUI()V

    if-eqz p1, :cond_0

    .line 759
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 761
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;

    invoke-direct {v2, p0, v0, p2, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/google/android/gms/common/GoogleApiAvailability;ILandroid/content/res/Resources;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 804
    :cond_0
    invoke-direct {p0, p2}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->postGooglePlayServicesUserResolvableErrorNotification(I)V

    :goto_0
    return-void
.end method

.method private handleGooglePlayStoreState(Lcom/ansca/corona/CoronaActivity;)Z
    .locals 3

    .line 426
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getPackageServices()Lcom/ansca/corona/storage/PackageServices;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/16 v2, 0x2040

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/storage/PackageServices;->getPackageState(Ljava/lang/String;I)Lcom/ansca/corona/storage/PackageState;

    move-result-object v0

    .line 430
    invoke-static {v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->setState(Lcom/ansca/corona/storage/PackageState;Ljava/lang/String;)V

    .line 432
    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$7;->$SwitchMap$com$ansca$corona$storage$PackageState:[I

    invoke-virtual {v0}, Lcom/ansca/corona/storage/PackageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-direct {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->clearGooglePlayServicesAvailabilityUI()V

    if-eqz p1, :cond_1

    .line 449
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;

    invoke-direct {v1, p0, v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/ansca/corona/storage/PackageState;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0, v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->postGooglePlayStoreStateNotification(Lcom/ansca/corona/storage/PackageState;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    return v2
.end method

.method private handleNeedingReboot(Lcom/ansca/corona/CoronaActivity;)V
    .locals 7

    .line 557
    invoke-direct {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->clearGooglePlayServicesAvailabilityUI()V

    .line 560
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 563
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getPermissionsServices()Lcom/ansca/corona/permissions/PermissionsServices;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 564
    invoke-virtual {v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v1

    .line 569
    sget-object v2, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v1, v2, :cond_0

    .line 570
    sget v2, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_need_reboot_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 572
    sget v3, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_need_reboot_text:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 574
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 572
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 578
    :cond_0
    sget v2, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_reboot_recommended_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    sget v3, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_reboot_recommended_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .line 585
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 587
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;

    invoke-direct {v3, p0, v2, v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Ljava/lang/String;Ljava/lang/String;Lcom/ansca/corona/permissions/PermissionState;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 641
    :cond_1
    invoke-direct {p0, v2, v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->postNeedEnvironmentChangeNotification(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private postGooglePlayServicesUserResolvableErrorNotification(I)V
    .locals 6

    .line 815
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 822
    new-instance v1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/16 v4, 0x9

    if-eq p1, v4, :cond_0

    .line 865
    sget p1, Lshared/google/play/services/base/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 867
    sget v4, Lshared/google/play/services/base/R$string;->common_google_play_services_unknown_issue:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 868
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 867
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_0
    sget p1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_unsupported_title:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 851
    sget v4, Lshared/google/play/services/base/R$string;->common_google_play_services_unsupported_text:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 852
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 851
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_1
    sget p1, Lshared/google/play/services/base/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 843
    sget v4, Lshared/google/play/services/base/R$string;->common_google_play_services_enable_text:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 844
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 843
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_2
    sget p1, Lshared/google/play/services/base/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 838
    sget v4, Lshared/google/play/services/base/R$string;->common_google_play_services_update_text:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 839
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 838
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_3
    sget p1, Lshared/google/play/services/base/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 833
    sget v4, Lshared/google/play/services/base/R$string;->common_google_play_services_install_text_device:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 834
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 873
    :goto_0
    invoke-virtual {v1, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v1, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result p1

    sput p1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedNotificationId:I

    .line 878
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getNotificationServices()Lcom/ansca/corona/notifications/NotificationServices;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    return-void
.end method

.method private postGooglePlayStoreStateNotification(Lcom/ansca/corona/storage/PackageState;)V
    .locals 5

    .line 493
    new-instance v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    .line 496
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 498
    sget-object v2, Lcom/ansca/corona/storage/PackageState;->DISABLED:Lcom/ansca/corona/storage/PackageState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    .line 501
    sget p1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_enable_title:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 505
    sget p1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_enable_text:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 506
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 505
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_0
    sget-object v2, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    if-ne p1, v2, :cond_1

    .line 511
    sget p1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_unsupported_title:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 515
    sget p1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_google_play_unsupported_text:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 516
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 515
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 520
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result p1

    sput p1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedNotificationId:I

    .line 521
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getNotificationServices()Lcom/ansca/corona/notifications/NotificationServices;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    return-void
.end method

.method private postNeedEnvironmentChangeNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 653
    new-instance v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    .line 656
    invoke-virtual {v0, p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0, p2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result p1

    sput p1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sPresentedNotificationId:I

    .line 661
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getNotificationServices()Lcom/ansca/corona/notifications/NotificationServices;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public clearSharedGooglePlayServicesBaseEventListener()V
    .locals 1

    const/4 v0, -0x2

    .line 193
    sput v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sListener:I

    return-void
.end method

.method public getSharedGooglePlayServicesBaseEventListener()I
    .locals 1

    .line 200
    sget v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sListener:I

    return v0
.end method

.method public handleGooglePlayServicesAvailability()V
    .locals 5

    .line 257
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 260
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->getCurrentState()Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    move-result-object v1

    sget-object v2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_REBOOT:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    if-ne v1, v2, :cond_0

    .line 261
    invoke-direct {p0, v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleNeedingReboot(Lcom/ansca/corona/CoronaActivity;)V

    return-void

    .line 266
    :cond_0
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getPackageServices()Lcom/ansca/corona/storage/PackageServices;

    move-result-object v1

    const/16 v2, 0x40

    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v3, v2}, Lcom/ansca/corona/storage/PackageServices;->getPackageState(Ljava/lang/String;I)Lcom/ansca/corona/storage/PackageState;

    move-result-object v1

    .line 269
    sget-object v2, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 270
    invoke-direct {p0, v0, v3}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleConnectingToGooglePlayStorePreReqs(Lcom/ansca/corona/CoronaActivity;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    invoke-direct {p0, v0, v3}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesUserResolvableError(Lcom/ansca/corona/CoronaActivity;I)V

    goto :goto_0

    .line 274
    :cond_1
    sget-object v2, Lcom/ansca/corona/storage/PackageState;->DISABLED:Lcom/ansca/corona/storage/PackageState;

    const/4 v4, 0x3

    if-ne v1, v2, :cond_2

    .line 276
    invoke-direct {p0, v0, v4}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesUserResolvableError(Lcom/ansca/corona/CoronaActivity;I)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    if-eq v1, v4, :cond_6

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    if-eqz v0, :cond_3

    .line 319
    invoke-static {v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->setState(I)V

    .line 322
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;

    invoke-direct {v1, p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesUserResolvableError(Lcom/ansca/corona/CoronaActivity;I)V

    goto :goto_0

    .line 298
    :cond_4
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->getCurrentState()Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    move-result-object v2

    sget-object v3, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    if-ne v2, v3, :cond_5

    .line 299
    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_REBOOT:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    invoke-static {v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->setState(Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;)V

    .line 300
    invoke-direct {p0, v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleNeedingReboot(Lcom/ansca/corona/CoronaActivity;)V

    goto :goto_0

    .line 304
    :cond_5
    invoke-direct {p0, v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleConnectingToGooglePlayStorePreReqs(Lcom/ansca/corona/CoronaActivity;I)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 308
    :cond_6
    invoke-direct {p0, v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesUserResolvableError(Lcom/ansca/corona/CoronaActivity;I)V

    goto :goto_0

    .line 287
    :cond_7
    invoke-static {v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->setState(I)V

    .line 290
    invoke-direct {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->clearGooglePlayServicesAvailabilityUI()V

    .line 293
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->dispatchSharedGooglePlayServicesBaseEvent()V

    :cond_8
    :goto_0
    return-void
.end method

.method public isExemptFromGooglePlayServicesAvailabilityHandling()Z
    .locals 5

    .line 218
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "usesGooglePlayServicesComponent"

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 241
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "usesGooglePlayServicesComponentAds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setSharedGooglePlayServicesBaseEventListener(Lcom/ansca/corona/CoronaRuntime;I)V
    .locals 0

    .line 209
    sput-object p1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 210
    sput p2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->sListener:I

    return-void
.end method
