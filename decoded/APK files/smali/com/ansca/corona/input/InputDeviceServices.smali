.class public final Lcom/ansca/corona/input/InputDeviceServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "InputDeviceServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputDeviceServices$ApiLevel16;,
        Lcom/ansca/corona/input/InputDeviceServices$ApiLevel9;,
        Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;,
        Lcom/ansca/corona/input/InputDeviceServices$InputDeviceMonitorEventHandler;,
        Lcom/ansca/corona/input/InputDeviceServices$CoronaRuntimeEventHandler;
    }
.end annotation


# static fields
.field private static sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

.field private static sDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

.field private static sNextCoronaDeviceId:I

.field private static sTaskDispatcherMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ansca/corona/CoronaRuntime;",
            "Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;-><init>()V

    sput-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    const/4 v0, 0x1

    .line 26
    sput v0, Lcom/ansca/corona/input/InputDeviceServices;->sNextCoronaDeviceId:I

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sTaskDispatcherMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/ansca/corona/input/InputDeviceServices$CoronaRuntimeEventHandler;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceServices$CoronaRuntimeEventHandler;-><init>()V

    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/ansca/corona/input/InputDeviceMonitor;

    invoke-direct {v0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

    .line 62
    sget-object p1, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

    new-instance v0, Lcom/ansca/corona/input/InputDeviceServices$InputDeviceMonitorEventHandler;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceServices$InputDeviceMonitorEventHandler;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/input/InputDeviceMonitor;->setListener(Lcom/ansca/corona/input/InputDeviceMonitor$Listener;)V

    .line 66
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 67
    sget-object p1, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceServices;->fetchAll()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 21
    sget-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sTaskDispatcherMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Lcom/ansca/corona/input/InputDeviceMonitor;
    .locals 1

    .line 21
    sget-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

    return-object v0
.end method

.method static synthetic access$200(I)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceServices;->updateCollectionWithAndroidDeviceId(I)V

    return-void
.end method

.method static synthetic access$300()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;
    .locals 1

    .line 21
    sget-object v0, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    return-object v0
.end method

.method private static add(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/InputDeviceContext;
    .locals 5

    .line 103
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 106
    :try_start_0
    monitor-exit v0

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInfo;->hasAndroidDeviceId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    sget-object v2, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    .line 112
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result v3

    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInfo;->getType()Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v4

    .line 111
    invoke-virtual {v2, v3, v4}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByAndroidDeviceIdAndType(ILcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    monitor-exit v0

    return-object v1

    .line 119
    :cond_1
    sget v1, Lcom/ansca/corona/input/InputDeviceServices;->sNextCoronaDeviceId:I

    .line 120
    sget v2, Lcom/ansca/corona/input/InputDeviceServices;->sNextCoronaDeviceId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ansca/corona/input/InputDeviceServices;->sNextCoronaDeviceId:I

    .line 123
    new-instance v2, Lcom/ansca/corona/input/InputDeviceContext;

    invoke-direct {v2, v1, p0}, Lcom/ansca/corona/input/InputDeviceContext;-><init>(ILcom/ansca/corona/input/InputDeviceInfo;)V

    .line 124
    sget-object v1, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    new-instance v3, Lcom/ansca/corona/input/InputDeviceInterface;

    invoke-direct {v3, v2}, Lcom/ansca/corona/input/InputDeviceInterface;-><init>(Lcom/ansca/corona/input/InputDeviceContext;)V

    invoke-virtual {v1, v3}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->add(Lcom/ansca/corona/input/InputDeviceInterface;)V

    .line 127
    sget-object v1, Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;->INSTANCE:Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;

    invoke-virtual {v2, v1}, Lcom/ansca/corona/input/InputDeviceContext;->addListener(Lcom/ansca/corona/input/InputDeviceContext$Listener;)V

    .line 128
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInfo;->hasAndroidDeviceId()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 129
    sget-object p0, Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;->INSTANCE:Lcom/ansca/corona/input/InputDeviceServices$InputDeviceContextEventHandler;

    invoke-virtual {v2, p0}, Lcom/ansca/corona/input/InputDeviceContext;->setVibrateRequestHandler(Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;)V

    .line 133
    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static updateCollection()V
    .locals 8

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 279
    :cond_0
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-object v1, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->clone()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v1

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 287
    :cond_1
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices$ApiLevel9;->fetchAndroidDeviceIds()[I

    move-result-object v0

    .line 290
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 291
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/input/InputDeviceInfo;->hasAndroidDeviceId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget v6, v0, v5

    .line 294
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result v7

    if-ne v7, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_2

    .line 300
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceContext;->beginUpdate()V

    .line 301
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v3

    sget-object v4, Lcom/ansca/corona/input/ConnectionState;->DISCONNECTED:Lcom/ansca/corona/input/ConnectionState;

    invoke-virtual {v3, v4}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/ConnectionState;)V

    .line 302
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->getPlayerNumber()I

    move-result v3

    if-lez v3, :cond_5

    .line 303
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v3

    .line 304
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/input/InputDeviceInfo;->cloneWithoutPlayerNumber()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/InputDeviceInfo;)V

    .line 306
    :cond_5
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceContext;->endUpdate()V

    goto :goto_0

    .line 313
    :cond_6
    array-length v1, v0

    :goto_3
    if-ge v3, v1, :cond_7

    aget v2, v0, v3

    .line 314
    invoke-static {v2}, Lcom/ansca/corona/input/InputDeviceServices;->updateCollectionWithAndroidDeviceId(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-void

    :catchall_0
    move-exception v1

    .line 281
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method private static updateCollectionWithAndroidDeviceId(I)V
    .locals 8

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceInfo;->collectionFromAndroidDeviceId(I)Ljava/util/List;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceInfo;

    const/4 v2, 0x0

    .line 344
    const-class v3, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v3

    .line 346
    :try_start_0
    sget-object v4, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->getType()Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByAndroidDeviceIdAndType(ILcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object v4

    if-nez v4, :cond_1

    .line 351
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->hasPermanentStringId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    sget-object v4, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    .line 353
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->getPermanentStringId()Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->getType()Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 352
    invoke-virtual {v4, v5, v6, v7}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByPermanentStringIdAndTypeAndDisplayName(Ljava/lang/String;Lcom/ansca/corona/input/InputDeviceType;Ljava/lang/String;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    .line 361
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_2

    .line 362
    sget-object v4, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    sget-object v5, Lcom/ansca/corona/input/ConnectionState;->DISCONNECTED:Lcom/ansca/corona/input/ConnectionState;

    invoke-virtual {v4, v5}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getBy(Lcom/ansca/corona/input/ConnectionState;)Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v4

    .line 363
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->getType()Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {v4, v5, v6}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByTypeAndDisplayName(Lcom/ansca/corona/input/InputDeviceType;Ljava/lang/String;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object v4

    .line 365
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 367
    invoke-virtual {v4}, Lcom/ansca/corona/input/InputDeviceInterface;->getContext()Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 373
    invoke-static {v1}, Lcom/ansca/corona/input/InputDeviceServices;->add(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceContext;->beginUpdate()V

    .line 382
    sget-object v3, Lcom/ansca/corona/input/ConnectionState;->CONNECTED:Lcom/ansca/corona/input/ConnectionState;

    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/ConnectionState;)V

    .line 383
    invoke-virtual {v2, v1}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/InputDeviceInfo;)V

    .line 384
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceContext;->endUpdate()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 365
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/input/InputDeviceSettings;)Lcom/ansca/corona/input/InputDeviceContext;
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceInfo;->from(Lcom/ansca/corona/input/InputDeviceSettings;)Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceServices;->add(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/InputDeviceContext;

    move-result-object p1

    return-object p1
.end method

.method public fetchAll()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;
    .locals 2

    .line 145
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceServices;->updateCollection()V

    .line 149
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->clone()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v1

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-direct {v1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;-><init>()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 151
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public fetchByAndroidDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterfaceCollection;
    .locals 5

    .line 173
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceServices;->updateCollectionWithAndroidDeviceId(I)V

    .line 176
    new-instance v0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;-><init>()V

    .line 177
    const-class v1, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v1

    .line 178
    :try_start_0
    sget-object v2, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 179
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/input/InputDeviceInfo;->hasAndroidDeviceId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 182
    invoke-virtual {v0, v3}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->add(Lcom/ansca/corona/input/InputDeviceInterface;)V

    goto :goto_0

    .line 185
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public fetchByAndroidDeviceIdAndType(ILcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceServices;->updateCollectionWithAndroidDeviceId(I)V

    .line 244
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-object v1, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-virtual {v1, p1, p2}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByAndroidDeviceIdAndType(ILcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p1

    .line 246
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fetchByCoronaDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 2

    .line 258
    const-class v0, Lcom/ansca/corona/input/InputDeviceServices;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-object v1, Lcom/ansca/corona/input/InputDeviceServices;->sDeviceCollection:Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->getByCoronaDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fetchDeviceFrom(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceType;->from(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/input/InputDeviceServices;->fetchByAndroidDeviceIdAndType(ILcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p1

    return-object p1
.end method

.method public fetchDeviceFrom(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceType;->from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/input/InputDeviceServices;->fetchByAndroidDeviceIdAndType(ILcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p1

    return-object p1
.end method
