.class public Lcom/ansca/corona/NativeToJavaBridge;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/NativeToJavaBridge$ApiLevel21;,
        Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;,
        Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;,
        Lcom/ansca/corona/NativeToJavaBridge$SaveMediaRequestPermissionsResultHandler;,
        Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
    }
.end annotation


# static fields
.field private static sClassLoader:Ldalvik/system/DexClassLoader;

.field private static sPluginCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/JavaFunction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/NativeToJavaBridge;->sPluginCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 139
    sput-object v0, Lcom/ansca/corona/NativeToJavaBridge;->sClassLoader:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge;->myContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/location/Location;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/ansca/corona/NativeToJavaBridge;->getLocationFromName(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method protected static callCanOpenUrl(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)Z
    .locals 0

    .line 1503
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->canOpenUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static callCanShowPopup(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)Z
    .locals 0

    .line 1643
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->canShowPopup(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static callCancelNativeAlert(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1603
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/Controller;->cancelNativeAlert(I)V

    return-void
.end method

.method protected static callCancelTimer(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1458
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->cancelTimer()V

    return-void
.end method

.method protected static callCloseNativeActivityIndicator(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1618
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->closeNativeActivityIndicator()V

    return-void
.end method

.method protected static callCryptoCalculateDigest(Ljava/lang/String;[B)[B
    .locals 0

    .line 2649
    invoke-static {p0, p1}, Lcom/ansca/corona/Crypto;->CalculateDigest(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method protected static callCryptoCalculateHMAC(Ljava/lang/String;[B[B)[B
    .locals 0

    .line 2653
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/Crypto;->CalculateHMAC(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method protected static callCryptoGetDigestLength(Ljava/lang/String;)I
    .locals 0

    .line 2645
    invoke-static {p0}, Lcom/ansca/corona/Crypto;->GetDigestLength(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected static callDeletePreferences([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "Preference key name array cannot be null."

    return-object p0

    .line 2212
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Failed to acquire application context."

    return-object p0

    .line 2221
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "Failed to acquire the app\'s default Java SharedPreferences object."

    return-object p0

    .line 2225
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "Failed to acquire the Java SharedPreferences editor object."

    return-object p0

    :cond_3
    const/4 v1, 0x0

    .line 2231
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 2232
    aget-object v2, p0, v1

    if-nez v2, :cond_4

    const-string p0, "Preference key name cannot be null."

    return-object p0

    .line 2236
    :cond_4
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2240
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "Failed to commit preference changes to storage."
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 2246
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callDisplayObjectDestroy(Lcom/ansca/corona/CoronaRuntime;I)V
    .locals 0

    .line 2404
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V

    return-void
.end method

.method protected static callDisplayObjectGetAlpha(Lcom/ansca/corona/CoronaRuntime;I)F
    .locals 0

    .line 2434
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectAlpha(I)F

    move-result p0

    return p0
.end method

.method protected static callDisplayObjectGetBackground(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2439
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectBackground(I)Z

    move-result p0

    return p0
.end method

.method protected static callDisplayObjectGetVisible(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2429
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectVisible(I)Z

    move-result p0

    return p0
.end method

.method protected static callDisplayObjectSetAlpha(Lcom/ansca/corona/CoronaRuntime;IF)V
    .locals 0

    .line 2419
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setDisplayObjectAlpha(IF)V

    return-void
.end method

.method protected static callDisplayObjectSetBackground(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2424
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setDisplayObjectBackground(IZ)V

    return-void
.end method

.method protected static callDisplayObjectSetFocus(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2444
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewFocus(IZ)V

    return-void
.end method

.method protected static callDisplayObjectSetVisible(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2409
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setDisplayObjectVisible(IZ)V

    return-void
.end method

.method protected static callDisplayObjectUpdateScreenBounds(Lcom/ansca/corona/CoronaRuntime;IIIII)V
    .locals 6

    .line 2414
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ansca/corona/ViewManager;->displayObjectUpdateScreenBounds(IIIII)V

    return-void
.end method

.method protected static callDisplayUpdate(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1668
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->displayUpdate()V

    return-void
.end method

.method protected static callExternalizeResource(Ljava/lang/String;Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 3

    .line 619
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 624
    :cond_0
    new-instance v2, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v2, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ansca/corona/storage/FileServices;->extractAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 630
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callFetchAllInputDevices(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 3127
    new-instance v0, Lcom/ansca/corona/input/InputDeviceServices;

    .line 3128
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/input/InputDeviceServices;-><init>(Landroid/content/Context;)V

    .line 3129
    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceServices;->fetchAll()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 3130
    invoke-static {p0, v1}, Lcom/ansca/corona/JavaToNativeShim;->update(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static callFetchInputDevice(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 3117
    new-instance v0, Lcom/ansca/corona/input/InputDeviceServices;

    .line 3118
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/input/InputDeviceServices;-><init>(Landroid/content/Context;)V

    .line 3120
    invoke-virtual {v0, p0}, Lcom/ansca/corona/input/InputDeviceServices;->fetchByCoronaDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3122
    invoke-static {p1, p0}, Lcom/ansca/corona/JavaToNativeShim;->update(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;)V

    :cond_0
    return-void
.end method

.method protected static callFlurryEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected static callFlurryInit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected static callGetApproximateScreenDpi()I
    .locals 1

    .line 1763
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1765
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected static callGetAssetFileLocation(Ljava/lang/String;J)Z
    .locals 3

    .line 583
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 591
    :cond_0
    new-instance v2, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v2, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 592
    invoke-virtual {v2, p0}, Lcom/ansca/corona/storage/FileServices;->getAssetFileLocation(Ljava/lang/String;)Lcom/ansca/corona/storage/AssetFileLocationInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 598
    :cond_1
    invoke-static {p1, p2, p0}, Lcom/ansca/corona/JavaToNativeShim;->setZipFileEntryInfo(JLcom/ansca/corona/storage/AssetFileLocationInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected static callGetAvailableStoreNames()[Ljava/lang/String;
    .locals 1

    .line 2953
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getAvailableInAppStoreNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetBytesFromFile(Ljava/lang/String;)[B
    .locals 2

    .line 606
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 613
    :cond_0
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 614
    invoke-virtual {v1, p0}, Lcom/ansca/corona/storage/FileServices;->getBytesFromFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method protected static callGetCoronaResourceFileExists(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)Z
    .locals 3

    .line 571
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    new-instance v1, Ljava/io/File;

    const-string v2, "coronaResources"

    .line 574
    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static callGetDefaultFontSize(Lcom/ansca/corona/CoronaRuntime;)F
    .locals 0

    .line 1733
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getDefaultFontSize()F

    move-result p0

    return p0
.end method

.method protected static callGetDefaultTextFieldPaddingInPixels(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 0

    .line 1738
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getDefaultTextFieldPaddingInPixels()I

    move-result p0

    return p0
.end method

.method protected static callGetExceptionStackTraceFrom(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 241
    :cond_0
    new-instance v1, Lcom/naef/jnlua/LuaError;

    invoke-direct {v1, v0, p0}, Lcom/naef/jnlua/LuaError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    invoke-virtual {v1}, Lcom/naef/jnlua/LuaError;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetFontMetrics(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;FZ)[F
    .locals 2

    .line 1427
    new-instance p0, Lcom/ansca/corona/graphics/FontServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ansca/corona/graphics/FontServices;-><init>(Landroid/content/Context;)V

    .line 1428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1432
    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/graphics/FontServices;->getFontMetrics(Ljava/lang/String;FZ)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1433
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const-string p2, "ascent"

    .line 1434
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v1, p1

    const/4 p1, 0x1

    const-string p2, "descent"

    .line 1435
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v1, p1

    const/4 p1, 0x2

    const-string p2, "leading"

    .line 1436
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v1, p1

    const/4 p1, 0x3

    const-string p2, "height"

    .line 1437
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aput p0, v1, p1

    :cond_0
    return-object v1
.end method

.method protected static callGetFonts()[Ljava/lang/String;
    .locals 2

    .line 1415
    new-instance v0, Lcom/ansca/corona/graphics/FontServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/graphics/FontServices;-><init>(Landroid/content/Context;)V

    .line 1416
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/FontServices;->fetchAllSystemFontNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static callGetIdleTimer(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 0

    .line 1518
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getIdleTimer()Z

    move-result p0

    return p0
.end method

.method protected static callGetManufacturerName(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 1703
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getManufacturerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetModel(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 1708
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getModel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetName(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 1713
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetPlatformVersion(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 1723
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getPlatformVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetPreference(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    .line 2087
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Preference key name cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 2091
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2093
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Failed to acquire application context."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 2101
    :try_start_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2103
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Failed to acquire the app\'s default Java SharedPreferences object."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 2110
    :cond_2
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2113
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    return-object p0
.end method

.method protected static callGetPreference(ILcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    .line 2077
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreference: Unknown category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p0, ""

    goto :goto_0

    .line 2074
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2071
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2068
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2065
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected static callGetProductName(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 1728
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getProductName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetRawAssetExists(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)Z
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ansca/corona/NativeToJavaBridge;->getRawAssetExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static callGetSafeAreaInsetPixels(Lcom/ansca/corona/CoronaRuntime;)[F
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1557
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v2

    monitor-enter v2

    .line 1558
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/Controller;->getCoronaStatusBarApiListener()Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;

    move-result-object v3

    .line 1559
    invoke-interface {v3}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->getStatusBarMode()Lcom/ansca/corona/CoronaStatusBarSettings;

    move-result-object v4

    .line 1560
    invoke-interface {v3}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->HasSoftwareKeys()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    .line 1562
    invoke-interface {v3}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->IsAndroidTV()Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v8, :cond_0

    .line 1563
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->getContentHeightInPixels(Lcom/ansca/corona/CoronaRuntime;)I

    move-result v0

    .line 1564
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->getContentWidthInPixels(Lcom/ansca/corona/CoronaRuntime;)I

    move-result p0

    int-to-float v0, v0

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v3

    float-to-double v4, v0

    .line 1565
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, v1, v10

    aput v0, v1, v6

    int-to-float p0, p0

    mul-float p0, p0, v3

    float-to-double v3, p0

    .line 1566
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p0, v3

    aput p0, v1, v9

    aput p0, v1, v11

    goto :goto_4

    .line 1569
    :cond_0
    sget-object v8, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-eq v4, v8, :cond_1

    invoke-interface {v3}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->getStatusBarHeight()I

    move-result v8

    int-to-float v8, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    aput v8, v1, v6

    if-eqz v5, :cond_2

    .line 1570
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ansca/corona/Controller;->getSystemUiVisibility()Ljava/lang/String;

    move-result-object v6

    const-string v8, "immersive"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    aput v7, v1, v10

    aput v7, v1, v9

    aput v7, v1, v11

    goto :goto_4

    .line 1575
    :cond_2
    sget-object v6, Lcom/ansca/corona/CoronaStatusBarSettings;->LIGHT_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    if-ne v4, v6, :cond_4

    :cond_3
    if-eqz v5, :cond_4

    .line 1577
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object p0

    .line 1578
    sget-object v4, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    if-ne p0, v4, :cond_5

    const/4 v9, 0x3

    goto :goto_1

    :cond_4
    const/4 v9, 0x4

    :cond_5
    :goto_1
    if-ge v11, v0, :cond_8

    if-ne v11, v9, :cond_6

    .line 1581
    invoke-interface {v3}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->getNavigationBarHeight()I

    move-result p0

    int-to-float p0, p0

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    aput p0, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    if-ge v6, v0, :cond_8

    .line 1588
    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1592
    :cond_8
    :goto_4
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method protected static callGetStatusBarHeight(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 1

    .line 1545
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    monitor-enter v0

    .line 1546
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getCoronaStatusBarApiListener()Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1548
    invoke-interface {p0}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->getStatusBarHeight()I

    move-result p0

    monitor-exit v0

    return p0

    .line 1550
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected static callGetStatusBarMode(Lcom/ansca/corona/CoronaRuntime;)I
    .locals 2

    .line 1531
    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    .line 1533
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    monitor-enter v1

    .line 1534
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getCoronaStatusBarApiListener()Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1536
    invoke-interface {p0}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->getStatusBarMode()Lcom/ansca/corona/CoronaStatusBarSettings;

    move-result-object v0

    .line 1538
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaStatusBarSettings;->toCoronaIntId()I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1538
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected static callGetSystemUiVisibility(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 3169
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getSystemUiVisibility()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "unknown"

    :cond_1
    return-object p0
.end method

.method protected static callGetTargetedStoreName(Lcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 2957
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetUniqueIdentifier(ILcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 1718
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/Controller;->getUniqueIdentifier(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callGetVolume(Lcom/ansca/corona/CoronaRuntime;J)F
    .locals 0

    .line 2271
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/MediaManager;->getVolume(J)F

    move-result p0

    return p0
.end method

.method protected static callGooglePushNotificationsRegister(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 3080
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3085
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3087
    new-instance v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;-><init>(Landroid/content/Context;)V

    .line 3090
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 3091
    invoke-virtual {v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getCommaSeparatedRegisteredProjectNumbers()Ljava/lang/String;

    move-result-object v2

    .line 3095
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3096
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p0

    new-instance p1, Lcom/ansca/corona/events/NotificationRegistrationTask;

    invoke-direct {p1, v0}, Lcom/ansca/corona/events/NotificationRegistrationTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void

    .line 3102
    :cond_1
    invoke-virtual {v1, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->register(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected static callGooglePushNotificationsUnregister(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 3110
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3112
    new-instance v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    invoke-direct {v0, p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;-><init>(Landroid/content/Context;)V

    .line 3113
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->unregister()V

    return-void
.end method

.method protected static callGoogleSetMapsAPIKey(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 0

    .line 3106
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->SetGoogleMapsAPIKey(Ljava/lang/String;)V

    return-void
.end method

.method protected static callHasAccelerometer(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 0

    .line 1683
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->hasAccelerometer()Z

    move-result p0

    return p0
.end method

.method protected static callHasAccessToMediaSource(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 1628
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->hasAccessToMediaSource(I)Z

    move-result p0

    return p0
.end method

.method protected static callHasGyroscope(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 0

    .line 1688
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->hasGyroscope()Z

    move-result p0

    return p0
.end method

.method protected static callHasHeadingHardware(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 0

    .line 1693
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->hasHeadingHardware()Z

    move-result p0

    return p0
.end method

.method protected static callHasMediaSource(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 1623
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->hasMediaSource(I)Z

    move-result p0

    return p0
.end method

.method protected static callHttpPost(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1493
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/Controller;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static callInvokeLuaErrorHandler(J)I
    .locals 0

    .line 305
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaEnvironment;->invokeLuaErrorHandler(J)I

    move-result p0

    return p0
.end method

.method private static callLoadBitmap(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;JZIIZ)Z
    .locals 12

    move-object v0, p1

    move/from16 v1, p7

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-eqz v5, :cond_f

    if-nez p0, :cond_0

    goto/16 :goto_7

    .line 930
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, ":/\\."

    .line 936
    invoke-static {v0, v3}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 937
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    .line 941
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.icon"

    .line 946
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 949
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 950
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 951
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 952
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 953
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    .line 954
    :cond_3
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 956
    :cond_4
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 957
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    .line 959
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 960
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_5

    .line 962
    new-instance v6, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    .line 963
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 964
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v6, v7, v3, v4, v2}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;-><init>(IIFI)V

    goto :goto_0

    .line 968
    :cond_5
    new-instance v6, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v6, v3, v4, v2}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;-><init>(Landroid/graphics/Bitmap;FI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_6
    move-object v6, v5

    :goto_0
    if-nez v6, :cond_8

    .line 974
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 975
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v1, :cond_7

    .line 977
    new-instance v0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    invoke-direct {v0, v3, v7, v4, v2}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;-><init>(IIFI)V

    goto :goto_2

    .line 979
    :cond_7
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 980
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 981
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {v0, v2, v2, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 982
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 983
    new-instance v0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    invoke-direct {v0, v3, v4, v2}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;-><init>(Landroid/graphics/Bitmap;FI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_8
    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v5

    .line 988
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 993
    :cond_9
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/Controller;->getBridge()Lcom/ansca/corona/NativeToJavaBridge;

    move-result-object v3

    move/from16 v4, p5

    move/from16 v6, p6

    invoke-direct {v3, v0, v4, v6, v1}, Lcom/ansca/corona/NativeToJavaBridge;->loadBitmap(Ljava/lang/String;IIZ)Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    move-result-object v0

    :goto_2
    move-object v6, v0

    :goto_3
    if-nez v6, :cond_a

    return v2

    .line 1000
    :cond_a
    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v1, :cond_b

    .line 1007
    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getHeight()I

    move-result v9

    .line 1008
    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getScaleFactor()F

    move-result v10

    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getRotationInDegrees()I

    move-result v11

    move-object v5, p0

    move-wide v6, p2

    .line 1006
    invoke-static/range {v5 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->copyBitmapInfo(Lcom/ansca/corona/CoronaRuntime;JIIFI)Z

    move-result v2

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_f

    .line 1012
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_e

    if-eqz p4, :cond_c

    .line 1018
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 1021
    :cond_c
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    move-object v5, v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-nez v5, :cond_d

    return v2

    :cond_d
    move-object v8, v5

    goto :goto_6

    :cond_e
    move-object v8, v0

    .line 1037
    :goto_6
    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getScaleFactor()F

    move-result v9

    .line 1038
    invoke-virtual {v6}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->getRotationInDegrees()I

    move-result v10

    move-object v5, p0

    move-wide v6, p2

    move/from16 v11, p4

    .line 1036
    invoke-static/range {v5 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->copyBitmap(Lcom/ansca/corona/CoronaRuntime;JLandroid/graphics/Bitmap;FIZ)Z

    move-result v2

    :cond_f
    :goto_7
    return v2
.end method

.method protected static callLoadClass(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "Corona"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v3

    if-nez v3, :cond_0

    .line 151
    new-instance v3, Lcom/naef/jnlua/LuaState;

    invoke-direct {v3, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "> Class.forName: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "< Class.forName: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {v3, p0, p2}, Lcom/ansca/corona/NativeToJavaBridge;->instantiateClass(Lcom/naef/jnlua/LuaState;Lcom/ansca/corona/CoronaRuntime;Ljava/lang/Class;)I

    move-result v2

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Loading via reflection: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "\n\tno Java class \'"

    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-nez v2, :cond_1

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method protected static callLoadEventSound(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;)V
    .locals 0

    .line 1468
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/events/EventManager;->loadEventSound(JLjava/lang/String;)V

    return-void
.end method

.method protected static callLoadFile(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;)I
    .locals 4

    .line 186
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_4

    .line 194
    new-instance v2, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v2, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2e

    const/16 v3, 0x2f

    .line 196
    invoke-virtual {p3, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lua"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, v0}, Lcom/ansca/corona/storage/FileServices;->doesAssetFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p0

    if-nez p0, :cond_2

    .line 209
    new-instance p0, Lcom/naef/jnlua/LuaState;

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    :cond_2
    const/4 p1, 0x0

    .line 215
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/ansca/corona/storage/FileServices;->openFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1, p3}, Lcom/naef/jnlua/LuaState;->load(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 223
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "Corona"

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WARNING: Could not load \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_3

    .line 223
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    :catch_1
    :cond_3
    throw p0

    :catch_2
    :cond_4
    :goto_2
    return v1
.end method

.method protected static callLoadSound(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;)V
    .locals 0

    .line 1463
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/events/EventManager;->loadSound(JLjava/lang/String;)V

    return-void
.end method

.method protected static callMapViewAddMarker(Lcom/ansca/corona/CoronaRuntime;IDDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .line 2617
    new-instance v0, Lcom/ansca/corona/maps/MapMarker;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/ansca/corona/maps/MapMarker;-><init>(DD)V

    .line 2618
    invoke-virtual {v0, p6}, Lcom/ansca/corona/maps/MapMarker;->setTitle(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v0, p7}, Lcom/ansca/corona/maps/MapMarker;->setSubtitle(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v0, p8}, Lcom/ansca/corona/maps/MapMarker;->setListener(I)V

    .line 2621
    invoke-virtual {v0, p9}, Lcom/ansca/corona/maps/MapMarker;->setImageFile(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/ViewManager;->addMapMarker(ILcom/ansca/corona/maps/MapMarker;)I

    move-result p0

    return p0
.end method

.method protected static callMapViewCreate(Lcom/ansca/corona/CoronaRuntime;IIIII)V
    .locals 6

    .line 2572
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ansca/corona/ViewManager;->addMapView(IIIII)V

    return-void
.end method

.method protected static callMapViewGetType(Lcom/ansca/corona/CoronaRuntime;I)Ljava/lang/String;
    .locals 0

    .line 2600
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getMapType(I)Lcom/ansca/corona/maps/MapType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2602
    sget-object p0, Lcom/ansca/corona/maps/MapType;->STANDARD:Lcom/ansca/corona/maps/MapType;

    .line 2604
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapType;->toInvariantString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callMapViewIsCurrentLocationVisible(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2576
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->isCurrentLocationVisibleInMap(I)Z

    move-result p0

    return p0
.end method

.method protected static callMapViewIsScrollEnabled(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2584
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->isMapScrollEnabled(I)Z

    move-result p0

    return p0
.end method

.method protected static callMapViewIsZoomEnabled(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2592
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->isMapZoomEnabled(I)Z

    move-result p0

    return p0
.end method

.method protected static callMapViewPushCurrentLocationToLua(Lcom/ansca/corona/CoronaRuntime;IJ)I
    .locals 0

    .line 2580
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/ViewManager;->pushMapCurrentLocationToLua(IJ)I

    move-result p0

    return p0
.end method

.method protected static callMapViewRemoveAllMarkers(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2631
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->removeAllMapViewMarkers(I)V

    return-void
.end method

.method protected static callMapViewRemoveMarker(Lcom/ansca/corona/CoronaRuntime;II)V
    .locals 0

    .line 2627
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->removeMapMarker(II)V

    return-void
.end method

.method protected static callMapViewSetCenter(Lcom/ansca/corona/CoronaRuntime;IDDZ)V
    .locals 7

    .line 2635
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/ViewManager;->setMapCenter(IDDZ)V

    return-void
.end method

.method protected static callMapViewSetRegion(Lcom/ansca/corona/CoronaRuntime;IDDDDZ)V
    .locals 11

    .line 2641
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/ansca/corona/ViewManager;->setMapRegion(IDDDDZ)V

    return-void
.end method

.method protected static callMapViewSetScrollEnabled(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2588
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setMapScrollEnabled(IZ)V

    return-void
.end method

.method protected static callMapViewSetType(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2608
    invoke-static {p2}, Lcom/ansca/corona/maps/MapType;->fromInvariantString(Ljava/lang/String;)Lcom/ansca/corona/maps/MapType;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2610
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setMapType(ILcom/ansca/corona/maps/MapType;)V

    :cond_0
    return-void
.end method

.method protected static callMapViewSetZoomEnabled(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2596
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setMapZoomEnabled(IZ)V

    return-void
.end method

.method protected static callNotificationCancel(I)V
    .locals 2

    .line 3064
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3066
    new-instance v1, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 3067
    invoke-virtual {v1, p0}, Lcom/ansca/corona/notifications/NotificationServices;->removeById(I)Z

    return-void
.end method

.method protected static callNotificationCancelAll(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 3072
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3074
    new-instance v0, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v0, p0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 3075
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationServices;->removeAll()V

    return-void
.end method

.method protected static callNotificationSchedule(Lcom/ansca/corona/CoronaRuntime;JI)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2969
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 2973
    invoke-static {v0}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-eqz p0, :cond_3

    .line 2974
    :cond_2
    new-instance v0, Lcom/naef/jnlua/LuaState;

    invoke-direct {v0, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 2977
    :cond_3
    invoke-static {v0, p3}, Lcom/ansca/corona/NativeToJavaBridge;->notificationSchedule(Lcom/naef/jnlua/LuaState;I)I

    move-result p0

    return p0
.end method

.method protected static callOnAudioEnabled()V
    .locals 0

    .line 300
    invoke-static {}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    return-void
.end method

.method protected static callOnRuntimeLoaded(JLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 267
    invoke-virtual {p2, p0, p1}, Lcom/ansca/corona/CoronaRuntime;->onLoaded(J)V

    :cond_0
    return-void
.end method

.method protected static callOnRuntimeResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->onResumed()V

    :cond_0
    return-void
.end method

.method protected static callOnRuntimeStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->onStarted()V

    :cond_0
    return-void
.end method

.method protected static callOnRuntimeSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->onSuspended()V

    :cond_0
    return-void
.end method

.method protected static callOnRuntimeWillLoadMain(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->onWillLoadMain()V

    :cond_0
    return-void
.end method

.method protected static callOpenUrl(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)Z
    .locals 0

    .line 1508
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static callPauseSound(JLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1483
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ansca/corona/events/EventManager;->pauseSound(J)V

    return-void
.end method

.method protected static callPlaySound(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;Z)V
    .locals 0

    .line 1473
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ansca/corona/events/EventManager;->playSound(JLjava/lang/String;Z)V

    return-void
.end method

.method protected static callPlayVideo(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;Z)V
    .locals 0

    .line 1498
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ansca/corona/MediaManager;->playVideo(JLjava/lang/String;Z)V

    return-void
.end method

.method protected static callPushApplicationOpenArgumentsToLuaTable(Lcom/ansca/corona/CoronaRuntime;J)V
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getCoronaSystemApiListener()Lcom/ansca/corona/listeners/CoronaSystemApiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Lcom/ansca/corona/listeners/CoronaSystemApiListener;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/ansca/corona/NativeToJavaBridge;->pushArgumentsToLuaTable(Lcom/ansca/corona/CoronaRuntime;JLandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected static callPushLaunchArgumentsToLuaTable(Lcom/ansca/corona/CoronaRuntime;J)V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getCoronaSystemApiListener()Lcom/ansca/corona/listeners/CoronaSystemApiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Lcom/ansca/corona/listeners/CoronaSystemApiListener;->getInitialIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/ansca/corona/NativeToJavaBridge;->pushArgumentsToLuaTable(Lcom/ansca/corona/CoronaRuntime;JLandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected static callPushLocationNameCoordinatesToLua(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;J)I
    .locals 4

    .line 2843
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.permission.INTERNET"

    .line 2845
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 2850
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 2854
    invoke-static {v1}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v2

    cmp-long p0, v2, p2

    if-eqz p0, :cond_3

    .line 2855
    :cond_2
    new-instance v1, Lcom/naef/jnlua/LuaState;

    invoke-direct {v1, p2, p3}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 2858
    :cond_3
    invoke-static {p1}, Lcom/ansca/corona/NativeToJavaBridge;->getLocationFromName(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    const-wide/16 p1, 0x0

    if-eqz p0, :cond_4

    .line 2860
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    .line 2861
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    goto :goto_0

    :cond_4
    move-wide v2, p1

    .line 2865
    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 2866
    invoke-virtual {v1, v2, v3}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const/4 p0, 0x2

    return p0
.end method

.method protected static callPushSystemInfoToLua(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1781
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    .line 1785
    invoke-static {p0}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-eqz v4, :cond_3

    .line 1786
    :cond_2
    new-instance p0, Lcom/naef/jnlua/LuaState;

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 1790
    :cond_3
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 1794
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 1795
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p3, :cond_32

    .line 1799
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    goto/16 :goto_10

    :cond_5
    const-string v4, "appName"

    .line 1802
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1804
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    .line 1805
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_10

    :cond_7
    const-string v4, "appVersionString"

    .line 1808
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_9

    .line 1813
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1814
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-nez v1, :cond_8

    move-object v1, v5

    .line 1820
    :cond_8
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v1, "androidAppVersionCode"

    .line 1823
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1828
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1829
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1832
    :catch_1
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    goto :goto_1

    :cond_a
    const-string v1, "androidAppPackageName"

    .line 1835
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bundleID"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_f

    :cond_b
    const-string p2, "androidApiLevel"

    .line 1844
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1845
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    goto :goto_1

    :cond_c
    const-string p2, "androidDisplayDensityName"

    .line 1848
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1851
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1853
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 p2, 0x78

    if-eq p1, p2, :cond_13

    const/16 p2, 0xa0

    if-eq p1, p2, :cond_12

    const/16 p2, 0xd5

    if-eq p1, p2, :cond_11

    const/16 p2, 0xf0

    if-eq p1, p2, :cond_10

    const/16 p2, 0x140

    if-eq p1, p2, :cond_f

    const/16 p2, 0x1e0

    if-eq p1, p2, :cond_e

    const/16 p2, 0x280

    if-eq p1, p2, :cond_d

    goto :goto_3

    :cond_d
    const-string p1, "xxxhdpi"

    goto :goto_4

    :cond_e
    const-string p1, "xxhdpi"

    goto :goto_4

    :cond_f
    const-string p1, "xhdpi"

    goto :goto_4

    :cond_10
    const-string p1, "hdpi"

    goto :goto_4

    :cond_11
    const-string p1, "tvdpi"

    goto :goto_4

    :cond_12
    const-string p1, "mdpi"

    goto :goto_4

    :cond_13
    const-string p1, "ldpi"

    goto :goto_4

    :cond_14
    :goto_3
    const-string p1, "unknown"

    .line 1877
    :goto_4
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    const-string p2, "androidDisplayApproximateDpi"

    .line 1880
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1883
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 1885
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    goto/16 :goto_1

    :cond_16
    const-string p2, "androidDisplayXDpi"

    .line 1889
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1891
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 1893
    invoke-static {p1}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object p1

    .line 1894
    invoke-virtual {p1}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_17

    iget p1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_5

    :cond_17
    iget p1, p2, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_5
    float-to-double p1, p1

    .line 1895
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto/16 :goto_1

    :cond_18
    const-string p2, "androidDisplayYDpi"

    .line 1899
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 1901
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 1903
    invoke-static {p1}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object p1

    .line 1904
    invoke-virtual {p1}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_19

    iget p1, p2, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_6

    :cond_19
    iget p1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    :goto_6
    float-to-double p1, p1

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto/16 :goto_1

    :cond_1a
    const-string p2, "androidDisplayWidthInInches"

    .line 1909
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_1c

    .line 1911
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 1913
    invoke-static {p1}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object p1

    .line 1914
    invoke-virtual {p1}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget p1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_7

    :cond_1b
    iget p1, p2, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_7
    float-to-double v4, p1

    cmpl-double p1, v4, v1

    if-lez p1, :cond_32

    .line 1916
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto/16 :goto_1

    :cond_1c
    const-string p2, "androidDisplayHeightInInches"

    .line 1921
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 1923
    invoke-static {}, Lcom/ansca/corona/NativeToJavaBridge;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 1925
    invoke-static {p1}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object p1

    .line 1926
    invoke-virtual {p1}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget p1, p2, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_8

    :cond_1d
    iget p1, p2, Landroid/util/DisplayMetrics;->xdpi:F

    :goto_8
    float-to-double v4, p1

    cmpl-double p1, v4, v1

    if-lez p1, :cond_32

    .line 1928
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    goto/16 :goto_1

    :cond_1e
    const-string p2, "deniedAppPermissions"

    .line 1933
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_2b

    const-string v1, "androidDeniedAppPermissions"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_c

    :cond_1f
    const-string p2, "grantedAppPermissions"

    .line 1976
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "androidGrantedAppPermissions"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto/16 :goto_9

    :cond_20
    const-string p2, "isoCountryCode"

    .line 2021
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 2022
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    const-string p2, "isoLanguageCode"

    .line 2025
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 2026
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 2028
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :cond_22
    const-string p1, "zh"

    .line 2033
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_23

    .line 2036
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/ansca/corona/NativeToJavaBridge$ApiLevel21;->getScriptFrom(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 2037
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_23

    .line 2038
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2041
    :cond_23
    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    const-string p2, "darkMode"

    .line 2044
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 2045
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-ne p1, p2, :cond_25

    const/4 v0, 0x1

    .line 2046
    :cond_25
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto/16 :goto_1

    .line 1978
    :cond_26
    :goto_9
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v1, p1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 1979
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->getRequestedPermissionsInState(Lcom/ansca/corona/permissions/PermissionState;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_27

    .line 1983
    invoke-virtual {p0, v0, v0}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    goto/16 :goto_1

    .line 1986
    :cond_27
    array-length v4, p1

    invoke-virtual {p0, v4, v0}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 1993
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x1

    .line 1996
    :goto_a
    array-length v6, p1

    if-ge v0, v6, :cond_6

    .line 1997
    aget-object v6, p1, v0

    if-eqz v6, :cond_2a

    .line 1998
    aget-object v6, p1, v0

    .line 1999
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 2001
    invoke-virtual {v1, v6}, Lcom/ansca/corona/permissions/PermissionsServices;->isPartOfPAAppPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 2004
    invoke-virtual {v1, v6}, Lcom/ansca/corona/permissions/PermissionsServices;->getPAAppPermissionNameFromAndroidPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2005
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    goto :goto_b

    .line 2006
    :cond_28
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2011
    :cond_29
    invoke-virtual {p0, v6}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    .line 2014
    invoke-virtual {p0, v2, v5}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    move v5, v6

    :cond_2a
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1935
    :cond_2b
    :goto_c
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v1, p1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 1936
    sget-object p1, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/permissions/PermissionsServices;->getRequestedPermissionsInState(Lcom/ansca/corona/permissions/PermissionState;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2c

    .line 1940
    invoke-virtual {p0, v0, v0}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    goto/16 :goto_1

    .line 1943
    :cond_2c
    array-length v4, p1

    invoke-virtual {p0, v4, v0}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 1950
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x1

    .line 1952
    :goto_d
    array-length v6, p1

    if-ge v0, v6, :cond_6

    .line 1953
    aget-object v6, p1, v0

    if-eqz v6, :cond_2f

    .line 1954
    aget-object v6, p1, v0

    .line 1955
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1957
    invoke-virtual {v1, v6}, Lcom/ansca/corona/permissions/PermissionsServices;->isPartOfPAAppPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1960
    invoke-virtual {v1, v6}, Lcom/ansca/corona/permissions/PermissionsServices;->getPAAppPermissionNameFromAndroidPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1961
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    goto :goto_e

    .line 1962
    :cond_2d
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1966
    :cond_2e
    invoke-virtual {p0, v6}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    .line 1969
    invoke-virtual {p0, v2, v5}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    move v5, v6

    :cond_2f
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1837
    :cond_30
    :goto_f
    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_31

    move-object p1, v5

    .line 1841
    :cond_31
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_32
    :goto_10
    if-gtz v0, :cond_33

    .line 2052
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v0, 0x1

    :cond_33
    return v0
.end method

.method protected static callRecordGetBytes(Lcom/ansca/corona/CoronaRuntime;J)Ljava/nio/ByteBuffer;
    .locals 0

    .line 2459
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(J)Lcom/ansca/corona/AudioRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/AudioRecorder;->getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2461
    iget-object p0, p0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myBuffer:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static callRecordGetCurrentByteCount(Lcom/ansca/corona/CoronaRuntime;J)I
    .locals 0

    .line 2470
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(J)Lcom/ansca/corona/AudioRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/AudioRecorder;->getCurrentBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2472
    iget p0, p0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myValidBytes:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static callRecordReleaseCurrentBuffer(JLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2478
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(J)Lcom/ansca/corona/AudioRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/AudioRecorder;->releaseCurrentBuffer()V

    return-void
.end method

.method protected static callRecordStart(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;J)Z
    .locals 0

    .line 2449
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(J)Lcom/ansca/corona/AudioRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/AudioRecorder;->startRecording(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static callRecordStop(JLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2454
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ansca/corona/MediaManager;->getAudioRecorder(J)Lcom/ansca/corona/AudioRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/AudioRecorder;->stopRecording()V

    return-void
.end method

.method protected static callRenderText(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;Ljava/lang/String;FZIIILjava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 1348
    invoke-static/range {v0 .. v11}, Lcom/ansca/corona/NativeToJavaBridge;->callRenderText(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;Ljava/lang/String;FZIIILjava/lang/String;[F)Z

    move-result v0

    return v0
.end method

.method protected static callRenderText(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;Ljava/lang/String;FZIIILjava/lang/String;[F)Z
    .locals 6

    move-object/from16 v0, p11

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return v1

    .line 1362
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 1369
    :cond_1
    invoke-static/range {p10 .. p10}, Lcom/ansca/corona/graphics/HorizontalAlignment;->fromCoronaStringId(Ljava/lang/String;)Lcom/ansca/corona/graphics/HorizontalAlignment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1371
    sget-object v3, Lcom/ansca/corona/graphics/HorizontalAlignment;->LEFT:Lcom/ansca/corona/graphics/HorizontalAlignment;

    .line 1376
    :cond_2
    new-instance v4, Lcom/ansca/corona/graphics/TextRenderer;

    invoke-direct {v4, v2}, Lcom/ansca/corona/graphics/TextRenderer;-><init>(Landroid/content/Context;)V

    .line 1377
    invoke-virtual {v4}, Lcom/ansca/corona/graphics/TextRenderer;->getFontSettings()Lcom/ansca/corona/graphics/FontSettings;

    move-result-object v2

    move-object v5, p4

    invoke-virtual {v2, p4}, Lcom/ansca/corona/graphics/FontSettings;->setName(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v4}, Lcom/ansca/corona/graphics/TextRenderer;->getFontSettings()Lcom/ansca/corona/graphics/FontSettings;

    move-result-object v2

    move v5, p5

    invoke-virtual {v2, p5}, Lcom/ansca/corona/graphics/FontSettings;->setPointSize(F)V

    .line 1379
    invoke-virtual {v4}, Lcom/ansca/corona/graphics/TextRenderer;->getFontSettings()Lcom/ansca/corona/graphics/FontSettings;

    move-result-object v2

    move v5, p6

    invoke-virtual {v2, p6}, Lcom/ansca/corona/graphics/FontSettings;->setIsBold(Z)V

    move-object v2, p3

    .line 1380
    invoke-virtual {v4, p3}, Lcom/ansca/corona/graphics/TextRenderer;->setText(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v4, v3}, Lcom/ansca/corona/graphics/TextRenderer;->setHorizontalAlignment(Lcom/ansca/corona/graphics/HorizontalAlignment;)V

    move v2, p7

    .line 1382
    invoke-virtual {v4, p7}, Lcom/ansca/corona/graphics/TextRenderer;->setWrapWidth(I)V

    move v2, p8

    .line 1383
    invoke-virtual {v4, p8}, Lcom/ansca/corona/graphics/TextRenderer;->setClipWidth(I)V

    move v2, p9

    .line 1384
    invoke-virtual {v4, p9}, Lcom/ansca/corona/graphics/TextRenderer;->setClipHeight(I)V

    .line 1387
    invoke-virtual {v4}, Lcom/ansca/corona/graphics/TextRenderer;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    .line 1392
    array-length v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 1393
    invoke-virtual {v4}, Lcom/ansca/corona/graphics/TextRenderer;->getBaselineOffset()F

    move-result v3

    aput v3, v0, v1

    :cond_4
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object p3, p0

    move-wide p4, p1

    move-object p6, v2

    move p7, v1

    move p8, v3

    move p9, v0

    .line 1397
    invoke-static/range {p3 .. p9}, Lcom/ansca/corona/JavaToNativeShim;->copyBitmap(Lcom/ansca/corona/CoronaRuntime;JLandroid/graphics/Bitmap;FIZ)Z

    move-result v0

    return v0
.end method

.method protected static callRequestLocationAsync(Lcom/ansca/corona/CoronaRuntime;J)V
    .locals 4

    .line 2793
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.permission.INTERNET"

    .line 2795
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 2801
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 2805
    invoke-static {v1}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-eqz v0, :cond_3

    .line 2806
    :cond_2
    new-instance v1, Lcom/naef/jnlua/LuaState;

    invoke-direct {v1, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    :cond_3
    const/4 p1, -0x1

    const-string p2, "mapLocation"

    .line 2810
    invoke-static {v1, p1, p2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result p2

    const-string v0, "The third arguement of requestLocation should be a listener."

    invoke-virtual {v1, p1, p2, v0}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 2811
    invoke-static {v1, p1}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    const/4 p2, -0x2

    .line 2812
    invoke-virtual {v1, p2}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p2

    .line 2814
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p0

    .line 2817
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$2;

    invoke-direct {v1, p2, p0, p1}, Lcom/ansca/corona/NativeToJavaBridge$2;-><init>(Ljava/lang/String;Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2831
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected static callRequestNearestAddressFromCoordinates(Lcom/ansca/corona/CoronaRuntime;J)V
    .locals 9

    .line 2658
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.permission.INTERNET"

    .line 2660
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 2665
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 2669
    invoke-static {v1}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-eqz p0, :cond_3

    .line 2670
    :cond_2
    new-instance v1, Lcom/naef/jnlua/LuaState;

    invoke-direct {v1, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    :cond_3
    const/4 p0, -0x1

    const-string p1, "requestLocation"

    .line 2673
    invoke-static {v1, p0, p1}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result p1

    const-string p2, "The third arguement of nearestAddress should be a listener."

    invoke-virtual {v1, p0, p1, p2}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    .line 2674
    invoke-static {v1, p0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v7

    const/4 p0, -0x2

    .line 2675
    invoke-virtual {v1, p0}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D

    move-result-wide v5

    const/4 p0, -0x3

    .line 2676
    invoke-virtual {v1, p0}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D

    move-result-wide v3

    .line 2682
    new-instance v8, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v8, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 2684
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/ansca/corona/NativeToJavaBridge$1;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/ansca/corona/NativeToJavaBridge$1;-><init>(DDILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2788
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected static callRequestSystem(Lcom/ansca/corona/CoronaRuntime;JLjava/lang/String;I)Z
    .locals 7

    .line 87
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getCoronaSystemApiListener()Lcom/ansca/corona/listeners/CoronaSystemApiListener;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    move v6, p4

    .line 89
    invoke-interface/range {v1 .. v6}, Lcom/ansca/corona/listeners/CoronaSystemApiListener;->requestSystem(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;JI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static callResumeSound(JLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1488
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ansca/corona/events/EventManager;->resumeSound(J)V

    return-void
.end method

.method protected static callSaveBitmap(Lcom/ansca/corona/CoronaRuntime;[IIIILjava/lang/String;)Z
    .locals 9

    .line 1158
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    const-string v1, "Corona"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "callSaveBitmap has invalid controller"

    .line 1159
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1163
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "callSaveBitmap has null CoronaActivity"

    .line 1165
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-eqz p5, :cond_3

    .line 1171
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, p5

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p5, ".png"

    .line 1173
    invoke-static {p5}, Lcom/ansca/corona/NativeToJavaBridge;->createUniqueFileNameInPicturesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    if-nez p5, :cond_4

    const-string p0, "ERROR: Failed to save bitmap to the photo library."

    .line 1175
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1178
    :cond_4
    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x1

    move-object v7, p5

    const/4 v8, 0x1

    :goto_1
    const/4 p5, 0x0

    .line 1185
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, p5

    :goto_2
    if-nez v5, :cond_5

    return v2

    .line 1195
    :cond_5
    new-instance p1, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;

    move-object v3, p1

    move-object v4, p0

    move v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    .line 1198
    invoke-virtual {p1}, Lcom/ansca/corona/NativeToJavaBridge$SaveBitmapRequestPermissionsResultHandler;->handleSaveMedia()Z

    move-result p0

    return p0
.end method

.method protected static callSaveImageToPhotoLibrary(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1133
    :cond_1
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 1136
    invoke-virtual {v1, p1}, Lcom/ansca/corona/storage/FileServices;->getExtensionFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-static {v2}, Lcom/ansca/corona/NativeToJavaBridge;->createUniqueFileNameInPicturesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 1141
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1143
    new-instance v2, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/storage/FileServices;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v2}, Lcom/ansca/corona/NativeToJavaBridge$SaveImageToPhotoLibraryRequestPermissionsResultHandler;->handleSaveMedia()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method protected static callSetAccelerometerInterval(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1673
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/Controller;->setAccelerometerInterval(I)V

    return-void
.end method

.method protected static callSetEventNotification(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 1698
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/Controller;->setEventNotification(IZ)V

    return-void
.end method

.method protected static callSetGyroscopeInterval(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1678
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/Controller;->setGyroscopeInterval(I)V

    return-void
.end method

.method protected static callSetIdleTimer(Lcom/ansca/corona/CoronaRuntime;Z)V
    .locals 0

    .line 1513
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->setIdleTimer(Z)V

    return-void
.end method

.method protected static callSetLocationAccuracy(DLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method protected static callSetLocationThreshold(DLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2266
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ansca/corona/Controller;->setLocationThreshold(D)V

    return-void
.end method

.method protected static callSetPreferences(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_d

    .line 2129
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 2134
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Failed to acquire application context."

    return-object p0

    .line 2143
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "Failed to acquire the app\'s default Java SharedPreferences object."

    return-object p0

    .line 2147
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "Failed to acquire the Java SharedPreferences editor object."

    return-object p0

    .line 2153
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_4

    const-string p0, "Given preference collection contains a key that\'s not of type string."

    return-object p0

    .line 2158
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    const-string p0, "Preference key name cannot be null."

    return-object p0

    .line 2165
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2166
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    .line 2167
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2169
    :cond_6
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 2170
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2172
    :cond_7
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_8

    .line 2173
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2175
    :cond_8
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_9

    .line 2176
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2178
    :cond_9
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 2179
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2182
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write preference \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' because its Java value type \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not supported."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2190
    :cond_b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_c

    const-string p0, "Failed to commit preference changes to storage."
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 2196
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_1
    const-string p0, "Given preference collection was null or empty."

    return-object p0
.end method

.method protected static callSetStatusBarMode(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1523
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/Controller;->getCoronaStatusBarApiListener()Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1525
    invoke-static {p0}, Lcom/ansca/corona/CoronaStatusBarSettings;->fromCoronaIntId(I)Lcom/ansca/corona/CoronaStatusBarSettings;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;->setStatusBarMode(Lcom/ansca/corona/CoronaStatusBarSettings;)V

    :cond_0
    return-void
.end method

.method protected static callSetSystemUiVisibility(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3162
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->setSystemUiVisibility(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static callSetTimer(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1450
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/Controller;->setTimer(I)V

    return-void
.end method

.method protected static callSetVolume(Lcom/ansca/corona/CoronaRuntime;JF)V
    .locals 0

    .line 2276
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/MediaManager;->setVolume(JF)V

    return-void
.end method

.method protected static callShowAppStorePopup(Lcom/ansca/corona/CoronaRuntime;Ljava/util/HashMap;)Z
    .locals 0

    .line 1658
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->showAppStoreWindow(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method protected static callShowImagePicker(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 1633
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/Controller;->showImagePickerWindow(ILjava/lang/String;)V

    return-void
.end method

.method protected static callShowNativeActivityIndicator(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1613
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->showNativeActivityIndicator()V

    return-void
.end method

.method protected static callShowNativeAlert(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1598
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected static callShowRequestPermissionsPopup(Lcom/ansca/corona/CoronaRuntime;Ljava/util/HashMap;)V
    .locals 0

    .line 1663
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->showRequestPermissionsWindow(Ljava/util/HashMap;)V

    return-void
.end method

.method protected static callShowSendMailPopup(Lcom/ansca/corona/CoronaRuntime;Ljava/util/HashMap;)V
    .locals 0

    .line 1648
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->showSendMailWindow(Ljava/util/HashMap;)V

    return-void
.end method

.method protected static callShowSendSmsPopup(Lcom/ansca/corona/CoronaRuntime;Ljava/util/HashMap;)V
    .locals 0

    .line 1653
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Controller;->showSendSmsWindow(Ljava/util/HashMap;)V

    return-void
.end method

.method protected static callShowSplashScreen(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 3154
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getCoronaSplashScreenApiListener()Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3156
    invoke-interface {p0}, Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;->showSplashScreen()V

    :cond_0
    return-void
.end method

.method protected static callShowTrialAlert(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1608
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->showTrialAlert()V

    return-void
.end method

.method protected static callShowVideoPicker(Lcom/ansca/corona/CoronaRuntime;III)V
    .locals 0

    .line 1638
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/Controller;->showVideoPickerWindow(III)V

    return-void
.end method

.method protected static callStopSound(JLcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1478
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ansca/corona/events/EventManager;->stopSound(J)V

    return-void
.end method

.method protected static callStoreFinishTransaction(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 0

    .line 2939
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getCoronaStoreApiListener()Lcom/ansca/corona/listeners/CoronaStoreApiListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2941
    invoke-interface {p0, p1}, Lcom/ansca/corona/listeners/CoronaStoreApiListener;->storeFinishTransaction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static callStoreInit(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 0

    .line 2925
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getCoronaStoreApiListener()Lcom/ansca/corona/listeners/CoronaStoreApiListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2927
    invoke-interface {p0, p1}, Lcom/ansca/corona/listeners/CoronaStoreApiListener;->storeInit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static callStorePurchase(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;)V
    .locals 0

    .line 2932
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getCoronaStoreApiListener()Lcom/ansca/corona/listeners/CoronaStoreApiListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2934
    invoke-interface {p0, p1}, Lcom/ansca/corona/listeners/CoronaStoreApiListener;->storePurchase(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static callStoreRestoreCompletedTransactions(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2946
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->getCoronaStoreApiListener()Lcom/ansca/corona/listeners/CoronaStoreApiListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2948
    invoke-interface {p0}, Lcom/ansca/corona/listeners/CoronaStoreApiListener;->storeRestore()V

    :cond_0
    return-void
.end method

.method protected static callTextFieldCreate(Lcom/ansca/corona/CoronaRuntime;IIIIIZ)I
    .locals 7

    .line 2281
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/ViewManager;->addTextView(IIIIIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method protected static callTextFieldGetAlign(ILcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 2379
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->getTextViewAlign(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callTextFieldGetColor(Lcom/ansca/corona/CoronaRuntime;I)[I
    .locals 2

    .line 2345
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getTextViewColor(I)I

    move-result p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 2349
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 2350
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 2351
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 2352
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/4 v0, 0x3

    aput p0, p1, v0

    return-object p1
.end method

.method protected static callTextFieldGetFont(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected static callTextFieldGetInputType(ILcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 2389
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->getTextViewInputType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callTextFieldGetPlaceholder(ILcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 2364
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->getTextViewPlaceholder(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callTextFieldGetSecure(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2384
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getTextViewPassword(I)Z

    move-result p0

    return p0
.end method

.method protected static callTextFieldGetSize(Lcom/ansca/corona/CoronaRuntime;I)F
    .locals 0

    .line 2369
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getTextViewSize(I)F

    move-result p0

    return p0
.end method

.method protected static callTextFieldGetText(ILcom/ansca/corona/CoronaRuntime;)Ljava/lang/String;
    .locals 0

    .line 2359
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->getTextViewText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static callTextFieldIsEditable(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2399
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->isTextViewEditable(I)Z

    move-result p0

    return p0
.end method

.method protected static callTextFieldIsSingleLine(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2394
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->isTextViewSingleLine(I)Z

    move-result p0

    return p0
.end method

.method protected static callTextFieldSetAlign(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2325
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewAlign(ILjava/lang/String;)V

    return-void
.end method

.method protected static callTextFieldSetColor(Lcom/ansca/corona/CoronaRuntime;IIIII)V
    .locals 0

    .line 2303
    invoke-static {p5, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 2305
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewColor(II)V

    return-void
.end method

.method protected static callTextFieldSetEditable(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2340
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewEditable(IZ)V

    return-void
.end method

.method protected static callTextFieldSetFont(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;FZ)V
    .locals 0

    .line 2320
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ansca/corona/ViewManager;->setTextViewFont(ILjava/lang/String;FZ)V

    return-void
.end method

.method protected static callTextFieldSetInputType(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2335
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewInputType(ILjava/lang/String;)V

    return-void
.end method

.method protected static callTextFieldSetPlaceholder(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2298
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextPlaceholder(ILjava/lang/String;)V

    return-void
.end method

.method protected static callTextFieldSetReturnKey(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2293
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextReturnKey(ILjava/lang/String;)V

    return-void
.end method

.method protected static callTextFieldSetSecure(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2330
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewPassword(IZ)V

    return-void
.end method

.method protected static callTextFieldSetSelection(Lcom/ansca/corona/CoronaRuntime;III)V
    .locals 0

    .line 2288
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ansca/corona/ViewManager;->setTextSelection(III)V

    return-void
.end method

.method protected static callTextFieldSetSize(Lcom/ansca/corona/CoronaRuntime;IF)V
    .locals 0

    .line 2315
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewSize(IF)V

    return-void
.end method

.method protected static callTextFieldSetText(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2310
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setTextViewText(ILjava/lang/String;)V

    return-void
.end method

.method protected static callVibrate(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2256
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->vibrate()V

    return-void
.end method

.method protected static callVibrateInputDevice(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 3140
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3146
    :cond_0
    new-instance v0, Lcom/ansca/corona/input/InputDeviceServices;

    invoke-direct {v0, p1}, Lcom/ansca/corona/input/InputDeviceServices;-><init>(Landroid/content/Context;)V

    .line 3147
    invoke-virtual {v0, p0}, Lcom/ansca/corona/input/InputDeviceServices;->fetchByCoronaDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3149
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInterface;->vibrate()V

    :cond_1
    return-void
.end method

.method protected static callVideoViewCreate(Lcom/ansca/corona/CoronaRuntime;IIIII)V
    .locals 6

    .line 2513
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ansca/corona/ViewManager;->addVideoView(IIIII)V

    return-void
.end method

.method protected static callVideoViewGetCurrentTime(Lcom/ansca/corona/CoronaRuntime;I)I
    .locals 0

    .line 2538
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->videoViewGetCurrentTime(I)I

    move-result p0

    return p0
.end method

.method protected static callVideoViewGetIsMuted(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2548
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->videoViewGetIsMuted(I)Z

    move-result p0

    return p0
.end method

.method protected static callVideoViewGetIsPlaying(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2568
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->videoViewGetIsPlaying(I)Z

    move-result p0

    return p0
.end method

.method protected static callVideoViewGetIsTouchTogglesPlay(Lcom/ansca/corona/CoronaRuntime;I)Z
    .locals 0

    .line 2558
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->videoViewGetIsTouchTogglesPlay(I)Z

    move-result p0

    return p0
.end method

.method protected static callVideoViewGetTotalTime(Lcom/ansca/corona/CoronaRuntime;I)I
    .locals 0

    .line 2543
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->videoViewGetTotalTime(I)I

    move-result p0

    return p0
.end method

.method protected static callVideoViewLoad(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2518
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->videoViewLoad(ILjava/lang/String;)V

    return-void
.end method

.method protected static callVideoViewMute(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2553
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->videoViewMute(IZ)V

    return-void
.end method

.method protected static callVideoViewPause(Lcom/ansca/corona/CoronaRuntime;I)V
    .locals 0

    .line 2528
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->videoViewPause(I)V

    return-void
.end method

.method protected static callVideoViewPlay(Lcom/ansca/corona/CoronaRuntime;I)V
    .locals 0

    .line 2523
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->videoViewPlay(I)V

    return-void
.end method

.method protected static callVideoViewSeek(Lcom/ansca/corona/CoronaRuntime;II)V
    .locals 0

    .line 2533
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->videoViewSeek(II)V

    return-void
.end method

.method protected static callVideoViewTouchTogglesPlay(Lcom/ansca/corona/CoronaRuntime;IZ)V
    .locals 0

    .line 2563
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->videoViewTouchTogglesPlay(IZ)V

    return-void
.end method

.method protected static callWebViewCreate(Lcom/ansca/corona/CoronaRuntime;IIIIIZZ)V
    .locals 8

    .line 2484
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ansca/corona/ViewManager;->addWebView(IIIIIZZ)V

    return-void
.end method

.method protected static callWebViewRequestDeleteCookies(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2508
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewDeleteCookies(I)V

    return-void
.end method

.method protected static callWebViewRequestGoBack(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2500
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewGoBack(I)V

    return-void
.end method

.method protected static callWebViewRequestGoForward(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2504
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewGoForward(I)V

    return-void
.end method

.method protected static callWebViewRequestLoadUrl(Lcom/ansca/corona/CoronaRuntime;ILjava/lang/String;)V
    .locals 0

    .line 2488
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->requestWebViewLoadUrl(ILjava/lang/String;)V

    return-void
.end method

.method protected static callWebViewRequestReload(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2492
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewReload(I)V

    return-void
.end method

.method protected static callWebViewRequestStop(ILcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 2496
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ansca/corona/ViewManager;->requestWebViewStop(I)V

    return-void
.end method

.method protected static createUniqueFileNameInPicturesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1069
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1075
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1077
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1078
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1082
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/media/My Files/Pictures"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    .line 1091
    :cond_2
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    :goto_1
    const/16 v4, 0x2710

    if-gt v3, v4, :cond_4

    .line 1097
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Picture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1098
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    move-object v2, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v2
.end method

.method protected static getAudioOutputSettings()Ljava/lang/String;
    .locals 3

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 249
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 255
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 256
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getBitmapFileInfo(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 643
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_4

    .line 652
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge;->myContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 653
    invoke-virtual {v1, p1}, Lcom/ansca/corona/storage/FileServices;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 656
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    .line 657
    :try_start_2
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 658
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 662
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 672
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 668
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    .line 672
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    move-object v0, v1

    :catch_4
    :cond_4
    :goto_2
    return-object v0

    :goto_3
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 673
    :catch_5
    :cond_5
    throw p1

    :cond_6
    :goto_4
    return-object v0
.end method

.method private static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .line 1743
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "window"

    .line 1749
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_1

    return-object v1

    .line 1754
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1755
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method private getImageExifRotationInDegreesFrom(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 683
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 691
    invoke-virtual {v1, p1}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 698
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v2, 0x1

    .line 699
    invoke-virtual {v1, p1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x10e

    const/16 v0, 0x10e

    goto :goto_0

    :cond_3
    const/16 p1, 0x5a

    const/16 v0, 0x5a

    goto :goto_0

    :cond_4
    const/16 p1, 0xb4

    const/16 v0, 0xb4

    :catch_0
    :cond_5
    :goto_0
    return v0
.end method

.method private static getLocationFromName(Ljava/lang/String;)Landroid/location/Location;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2876
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2881
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.googleapis.com/maps/api/geocode/json?address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&sensor=true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Android"

    .line 2883
    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2884
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 2885
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 2886
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2887
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2890
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2891
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "results"

    .line 2892
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 2893
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "geometry"

    .line 2894
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "location"

    .line 2895
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2896
    new-instance v2, Landroid/location/Location;

    const-string v3, "Google"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "lat"

    .line 2897
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    const-string v0, "lng"

    .line 2898
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 2908
    :try_start_3
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 2904
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    .line 2908
    :try_start_5
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    move-object v0, v2

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 2909
    :catch_4
    :cond_2
    throw p0

    :catch_5
    :cond_3
    :goto_4
    return-object v0
.end method

.method private getRawAssetExists(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ":/\\."

    .line 518
    invoke-static {p1, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 523
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.icon"

    .line 527
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 530
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    .line 536
    :cond_2
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    :cond_3
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 544
    :cond_4
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 547
    new-instance v0, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v0, v1}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 548
    invoke-virtual {v0, p1}, Lcom/ansca/corona/storage/FileServices;->doesAssetFileExist(Ljava/lang/String;)Z

    move-result v0

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method

.method protected static instantiateClass(Lcom/naef/jnlua/LuaState;Lcom/ansca/corona/CoronaRuntime;Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Lcom/ansca/corona/CoronaRuntime;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    :try_start_0
    const-class v1, Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    sget-object v1, Lcom/ansca/corona/NativeToJavaBridge;->sPluginCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/JavaFunction;

    if-nez v1, :cond_1

    .line 111
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 113
    const-class v2, Lcom/ansca/corona/CoronaRuntimeListener;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    move-object v2, v1

    check-cast v2, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 117
    invoke-static {v2}, Lcom/ansca/corona/CoronaEnvironment;->addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    .line 119
    invoke-interface {v2, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onLoaded(Lcom/ansca/corona/CoronaRuntime;)V

    .line 122
    :cond_0
    check-cast v1, Lcom/naef/jnlua/JavaFunction;

    .line 125
    sget-object p1, Lcom/ansca/corona/NativeToJavaBridge;->sPluginCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: Could not instantiate class ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Corona"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method private loadBitmap(Ljava/lang/String;IIZ)Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
    .locals 16

    move-object/from16 v1, p1

    move/from16 v0, p2

    move/from16 v2, p3

    .line 780
    invoke-direct/range {p0 .. p1}, Lcom/ansca/corona/NativeToJavaBridge;->getBitmapFileInfo(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 785
    :cond_0
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 786
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 791
    new-instance v6, Lcom/ansca/corona/storage/FileServices;

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/ansca/corona/NativeToJavaBridge;->myContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 792
    invoke-virtual {v6, v1}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v8

    .line 793
    invoke-virtual {v6, v1}, Lcom/ansca/corona/storage/FileServices;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v4

    :cond_1
    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 803
    invoke-direct/range {p0 .. p1}, Lcom/ansca/corona/NativeToJavaBridge;->getImageExifRotationInDegreesFrom(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-lez v0, :cond_3

    if-lez v2, :cond_3

    if-ge v0, v2, :cond_5

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    if-lez v2, :cond_6

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 822
    :goto_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    .line 823
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v11, "Corona"

    if-lez v0, :cond_8

    .line 825
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v0

    :goto_2
    div-float/2addr v12, v13

    cmpl-float v13, v12, v10

    if-lez v13, :cond_7

    .line 827
    iget v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v13, v13, 0x2

    iput v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_2

    .line 830
    :cond_7
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le v12, v9, :cond_8

    .line 831
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Downsampling image file \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\' to fit max pixel size of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    mul-int v0, v5, v3

    .line 839
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x4

    mul-long v12, v12, v14

    const-wide/32 v14, 0x1e8480

    add-long/2addr v12, v14

    .line 843
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 844
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v14

    const-string v10, "\' as a 32-bit image. Reducing the image quality to 16-bit."

    cmp-long v0, v12, v14

    if-lez v0, :cond_9

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not enough memory to load file \'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_9
    if-eqz p4, :cond_d

    .line 856
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le v0, v9, :cond_c

    .line 857
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v0, v5, v0

    .line 858
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    rem-int v1, v5, v1

    if-lez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 861
    :cond_a
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v1, v3, v1

    .line 862
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    rem-int/2addr v3, v2

    if-lez v3, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    move v3, v1

    int-to-float v1, v0

    int-to-float v2, v5

    div-float v10, v1, v2

    goto :goto_3

    :cond_c
    move v0, v5

    const/high16 v10, 0x3f800000    # 1.0f

    .line 869
    :goto_3
    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    invoke-direct {v1, v0, v3, v10, v8}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;-><init>(IIFI)V

    return-object v1

    .line 875
    :cond_d
    :try_start_0
    invoke-static {v6, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v2, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 897
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v4

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 881
    :try_start_1
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v9, :cond_e

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load file \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 885
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 886
    invoke-static {v6, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 889
    :cond_e
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    move-exception v0

    .line 893
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    goto :goto_4

    .line 899
    :goto_5
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 901
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    if-nez v2, :cond_f

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode file \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 910
    :cond_f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v5, :cond_10

    .line 911
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v5

    div-float v10, v0, v1

    goto :goto_7

    :cond_10
    const/high16 v10, 0x3f800000    # 1.0f

    .line 915
    :goto_7
    new-instance v0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;

    invoke-direct {v0, v2, v10, v8}, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;-><init>(Landroid/graphics/Bitmap;FI)V

    return-object v0
.end method

.method protected static notificationSchedule(Lcom/naef/jnlua/LuaState;I)I
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2985
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2987
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    .line 2988
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const-string v3, "year"

    .line 2992
    invoke-virtual {p0, p1, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v3, -0x1

    .line 2993
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2994
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2996
    :cond_0
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "month"

    .line 2997
    invoke-virtual {p0, p1, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 2998
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 2999
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3001
    :cond_1
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "day"

    .line 3002
    invoke-virtual {p0, p1, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 3003
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    .line 3004
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3006
    :cond_2
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "hour"

    .line 3007
    invoke-virtual {p0, p1, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 3008
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xb

    .line 3009
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3011
    :cond_3
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "min"

    .line 3012
    invoke-virtual {p0, p1, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 3013
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xc

    .line 3014
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3016
    :cond_4
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "sec"

    .line 3017
    invoke-virtual {p0, p1, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 3018
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xd

    .line 3019
    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3021
    :cond_5
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 3024
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    .line 3026
    :cond_6
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v3, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_7

    .line 3028
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 3029
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v3

    .line 3030
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v8

    double-to-long v2, v3

    add-long/2addr v6, v2

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3034
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    if-nez v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3043
    :cond_8
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3045
    new-instance v3, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v3, v2}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    add-int/2addr p1, v0

    .line 3049
    invoke-static {v2, p0, p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->from(Landroid/content/Context;Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-result-object p0

    .line 3051
    invoke-virtual {v3}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setId(I)V

    .line 3052
    invoke-virtual {p0, v1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setEndTime(Ljava/util/Date;)V

    .line 3053
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTimestamp(Ljava/util/Date;)V

    .line 3056
    invoke-virtual {v3, p0}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 3059
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result p0

    return p0
.end method

.method protected static ping()V
    .locals 2

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NativeToJavaBridge.ping()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static pushArgumentsToLuaTable(Lcom/ansca/corona/CoronaRuntime;JLandroid/content/Intent;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 338
    invoke-static {v0}, Lcom/ansca/corona/CoronaRuntimeProvider;->getLuaStateMemoryAddress(Lcom/naef/jnlua/LuaState;)J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-eqz p0, :cond_3

    .line 339
    :cond_2
    new-instance v0, Lcom/naef/jnlua/LuaState;

    invoke-direct {v0, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 343
    :cond_3
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p0

    .line 344
    invoke-virtual {v0, p0}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 349
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string p2, ""

    if-eqz p1, :cond_5

    .line 350
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "url"

    .line 351
    invoke-virtual {v0, p0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 357
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v2

    if-eqz p1, :cond_6

    .line 360
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, p2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 364
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, p2

    .line 365
    :goto_2
    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string p1, "action"

    .line 366
    invoke-virtual {v0, v2, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 369
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 371
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    :cond_8
    const-string p1, "categories"

    .line 373
    invoke-virtual {v0, v2, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 378
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p1

    .line 379
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 380
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 381
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 382
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 384
    invoke-virtual {v0, p1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string p1, "extras"

    .line 389
    invoke-virtual {v0, v2, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const-string p1, "androidIntent"

    .line 391
    invoke-virtual {v0, p0, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const-string p1, "notification"

    .line 396
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 398
    invoke-virtual {v0, p0, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private static pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 410
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 411
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto/16 :goto_5

    .line 413
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_15

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 416
    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 417
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    goto/16 :goto_5

    .line 419
    :cond_3
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_4

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 422
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 423
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 425
    :cond_5
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_6

    .line 426
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 428
    :cond_6
    instance-of v1, p1, Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 431
    :cond_7
    instance-of v1, p1, Lcom/ansca/corona/CoronaData;

    if-eqz v1, :cond_8

    .line 432
    check-cast p1, Lcom/ansca/corona/CoronaData;

    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    goto/16 :goto_5

    .line 434
    :cond_8
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_b

    .line 435
    check-cast p1, Landroid/os/Bundle;

    .line 436
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 437
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 438
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    .line 439
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 440
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 442
    invoke-virtual {p0, v0, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_a
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto/16 :goto_5

    .line 450
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 451
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_d

    .line 453
    invoke-virtual {p0, v1, v0}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 454
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v2

    :goto_1
    if-ge v0, v1, :cond_16

    .line 456
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v3, v0, 0x1

    .line 458
    invoke-virtual {p0, v2, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    :cond_d
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto/16 :goto_5

    .line 466
    :cond_e
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_12

    .line 467
    check-cast p1, Ljava/util/Map;

    .line 468
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 469
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 470
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    .line 471
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_f

    .line 473
    :cond_10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 475
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_2

    .line 481
    :cond_11
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto :goto_5

    .line 484
    :cond_12
    instance-of v1, p1, Ljava/lang/Iterable;

    if-eqz v1, :cond_14

    .line 485
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 486
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    .line 488
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 489
    invoke-static {p0, v2}, Lcom/ansca/corona/NativeToJavaBridge;->pushToLua(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v2, v0, 0x1

    .line 491
    invoke-virtual {p0, v1, v2}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return v0

    .line 414
    :cond_15
    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    :cond_16
    :goto_5
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_6
    return v0
.end method
