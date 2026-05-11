.class public final Lcom/ansca/corona/CoronaEnvironment;
.super Ljava/lang/Object;
.source "CoronaEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;
    }
.end annotation


# static fields
.field private static final CORONA_PREFERENCES_LAST_INSTALL_TIME_KEY:Ljava/lang/String; = "lastInstallTime"

.field private static final CORONA_PREFERENCES_NAME:Ljava/lang/String; = "Corona"

.field private static sApplicationContext:Landroid/content/Context;

.field private static sCoronaActivity:Lcom/ansca/corona/CoronaActivity;

.field private static sCoronaLuaErrorHandler:Lcom/ansca/corona/CoronaLuaErrorHandler;

.field private static sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

.field private static sRuntimeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaLuaErrorHandler;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaEnvironment;->sCoronaLuaErrorHandler:Lcom/ansca/corona/CoronaLuaErrorHandler;

    .line 59
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sCoronaLuaErrorHandler:Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->setLuaErrorHandler(Lcom/naef/jnlua/JavaFunction;)V

    .line 60
    new-instance v0, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;-><init>(Lcom/ansca/corona/CoronaEnvironment$1;)V

    invoke-static {v0}, Lcom/ansca/corona/CoronaRuntime;->addListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 25
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2

    .line 443
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 446
    :try_start_0
    monitor-exit v0

    return-void

    .line 450
    :cond_0
    sget-object v1, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 451
    monitor-exit v0

    return-void

    .line 455
    :cond_1
    sget-object v1, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static deleteDirectoryTree(Ljava/io/File;)V
    .locals 4

    .line 605
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 607
    invoke-static {v3}, Lcom/ansca/corona/CoronaEnvironment;->deleteDirectoryTree(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static deleteTempDirectory(Landroid/content/Context;)V
    .locals 0

    .line 596
    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->deleteDirectoryTree(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 334
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 3

    .line 351
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 355
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 356
    sget-object v2, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public static getApplicationSupportDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 99
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    const-string v0, "support"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 141
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "Caches"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static getCoronaActivity()Lcom/ansca/corona/CoronaActivity;
    .locals 1

    .line 301
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method public static getDocumentsDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 80
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    const-string v0, "data"

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 164
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, ".system"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method static getInternalResourceCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 216
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 219
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "resources"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method static getInternalTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 187
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "temp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method static getInternalWebCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 242
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 245
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "web"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static getLuaErrorHandler()Lcom/naef/jnlua/JavaFunction;
    .locals 1

    .line 379
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    return-object v0
.end method

.method public static getTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 119
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "tmp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method static invokeLuaErrorHandler(J)I
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    .line 424
    :cond_0
    sget-object v1, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    if-nez v1, :cond_1

    return v0

    .line 431
    :cond_1
    new-instance v0, Lcom/naef/jnlua/LuaState;

    invoke-direct {v0, p0, p1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 434
    invoke-interface {v1, v0}, Lcom/naef/jnlua/JavaFunction;->invoke(Lcom/naef/jnlua/LuaState;)I

    move-result p0

    return p0
.end method

.method static isNewInstall(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "Corona"

    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 563
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-string p0, "lastInstallTime"

    const-wide/16 v5, 0x0

    .line 565
    invoke-interface {v1, p0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method static onNewInstall(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "Corona"

    const/4 v1, 0x0

    .line 580
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 585
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lastInstallTime"

    .line 586
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "coronaResources"

    .line 589
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->deleteDirectoryTree(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static removeRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2

    .line 466
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 469
    :try_start_0
    monitor-exit v0

    return-void

    .line 473
    :cond_0
    sget-object v1, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 474
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 323
    sput-object p0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    return-void

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 313
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static setController(Lcom/ansca/corona/Controller;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sCoronaLuaErrorHandler:Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-virtual {v0, p0}, Lcom/ansca/corona/CoronaLuaErrorHandler;->setController(Lcom/ansca/corona/Controller;)V

    return-void
.end method

.method static setCoronaActivity(Lcom/ansca/corona/CoronaActivity;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    .line 291
    :cond_0
    sput-object p0, Lcom/ansca/corona/CoronaEnvironment;->sCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    return-void
.end method

.method public static setLuaErrorHandler(Lcom/naef/jnlua/JavaFunction;)V
    .locals 1

    .line 391
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    if-ne p0, v0, :cond_0

    return-void

    .line 396
    :cond_0
    sput-object p0, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    if-eqz p0, :cond_1

    .line 400
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->useJavaLuaErrorHandler()V

    goto :goto_0

    .line 403
    :cond_1
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->useDefaultLuaErrorHandler()V

    :goto_0
    return-void
.end method

.method public static showCoronaActivity(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
