.class public LCoronaProvider/licensing/google/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCoronaProvider/licensing/google/LuaLoader$LoadExpansionFilesWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$IsNewAppVersionWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$GetAvailableExternalSpaceWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$GetExternalStorageStateWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$InitWrapper;,
        LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final LAST_VERSION_CHECKED:Ljava/lang/String; = "LAST_VERSION_CHECKED"

.field public static final PREFS_FILE:Ljava/lang/String; = "CoronaProvider.licensing.google.lualoader"

.field private static SALT:[B = null

.field private static final SALT_STRING:Ljava/lang/String; = "salt"


# instance fields
.field private fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fListener:I

.field private licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

.field private licenseKey:Ljava/lang/String;

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, LCoronaProvider/licensing/google/LuaLoader;->initialize()V

    return-void
.end method

.method static synthetic access$500(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;
    .locals 0

    .line 58
    iget-object p0, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    return-object p0
.end method

.method static synthetic access$600(LCoronaProvider/licensing/google/LuaLoader;)I
    .locals 0

    .line 58
    iget p0, p0, LCoronaProvider/licensing/google/LuaLoader;->fListener:I

    return p0
.end method

.method static synthetic access$700(LCoronaProvider/licensing/google/LuaLoader;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, LCoronaProvider/licensing/google/LuaLoader;->callLuaCallback(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .line 58
    invoke-direct {p0}, LCoronaProvider/licensing/google/LuaLoader;->setExpansionFileNames()V

    return-void
.end method

.method private callLuaCallback(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 235
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 239
    new-instance v7, LCoronaProvider/licensing/google/LuaLoader$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LCoronaProvider/licensing/google/LuaLoader$1;-><init>(LCoronaProvider/licensing/google/LuaLoader;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v7}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method

.method private initLicenseChecker(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 174
    new-instance v0, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LCoronaProvider/licensing/google/LuaLoader$MyLicenseCheckerCallback;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    iput-object v0, p0, LCoronaProvider/licensing/google/LuaLoader;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 175
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v3, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "strict"

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 184
    new-instance p2, Lcom/google/android/vending/licensing/StrictPolicy;

    invoke-direct {p2}, Lcom/google/android/vending/licensing/StrictPolicy;-><init>()V

    iput-object p2, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    goto :goto_0

    .line 189
    :cond_0
    new-instance p2, Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    iput-object p2, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 192
    :goto_0
    :try_start_0
    new-instance p2, Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object p2, p0, LCoronaProvider/licensing/google/LuaLoader;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Corona"

    const-string v0, "Invalid public key"

    .line 194
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public static isNewAppVersion()Z
    .locals 4

    .line 312
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CoronaProvider.licensing.google.lualoader"

    .line 314
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "LAST_VERSION_CHECKED"

    .line 316
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 320
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setExpansionFileNames()V
    .locals 4

    .line 343
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 345
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 346
    :goto_0
    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-virtual {v2}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileNameCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 347
    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader;->licenseCheckPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-virtual {v2, v0}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "main"

    .line 349
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v1, v2}, Lcom/ansca/corona/storage/FileServices;->setMainExpansionFileName(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "patch"

    .line 352
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {v1, v2}, Lcom/ansca/corona/storage/FileServices;->setPatchExpansionFileName(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {v1}, Lcom/ansca/corona/storage/FileServices;->loadExpansionFiles()V

    :cond_3
    return-void
.end method

.method public static setLastCheckedAppVersion()V
    .locals 4

    .line 327
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CoronaProvider.licensing.google.lualoader"

    .line 329
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 331
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 334
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "LAST_VERSION_CHECKED"

    .line 337
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public init(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    .line 125
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const-string v1, "require"

    .line 131
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    const-string v1, "config"

    .line 132
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 133
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->call(II)V

    const-string v3, "application"

    .line 136
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v3

    const-string v4, "google"

    const-string v5, ""

    if-eqz v3, :cond_2

    const-string v3, "license"

    .line 139
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 140
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-virtual {p1, v2, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 143
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "key"

    .line 145
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 146
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const/4 v6, -0x2

    const-string v7, "policy"

    .line 151
    invoke-virtual {p1, v6, v7}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 152
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v5

    goto :goto_1

    :cond_2
    move-object v2, v5

    move-object v3, v2

    .line 159
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 162
    invoke-direct {p0, v3, v2}, LCoronaProvider/licensing/google/LuaLoader;->initLicenseChecker(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 165
    :cond_5
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    .line 167
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v1
.end method

.method protected initialize()V
    .locals 4

    .line 79
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CoronaProvider.licensing.google.lualoader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "salt"

    const/4 v2, 0x0

    .line 80
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 82
    sput-object v2, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    .line 83
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sget-object v3, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 84
    new-instance v2, Ljava/lang/String;

    sget-object v3, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, LCoronaProvider/licensing/google/LuaLoader;->SALT:[B

    return-void
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 97
    invoke-virtual {p0}, LCoronaProvider/licensing/google/LuaLoader;->initialize()V

    .line 98
    new-instance v0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v0, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, LCoronaProvider/licensing/google/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    .line 100
    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$InitWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LCoronaProvider/licensing/google/LuaLoader$InitWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;

    invoke-direct {v1, p0, v2}, LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;

    invoke-direct {v1, p0, v2}, LCoronaProvider/licensing/google/LuaLoader$IsGoogleExpansionFileRequiredWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$GetExternalStorageStateWrapper;

    invoke-direct {v1, p0, v2}, LCoronaProvider/licensing/google/LuaLoader$GetExternalStorageStateWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$GetAvailableExternalSpaceWrapper;

    invoke-direct {v1, p0}, LCoronaProvider/licensing/google/LuaLoader$GetAvailableExternalSpaceWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$IsNewAppVersionWrapper;

    invoke-direct {v1, p0}, LCoronaProvider/licensing/google/LuaLoader$IsNewAppVersionWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;

    invoke-direct {v1, p0}, LCoronaProvider/licensing/google/LuaLoader$GetFileNamesFromPreferencesWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, LCoronaProvider/licensing/google/LuaLoader$LoadExpansionFilesWrapper;

    invoke-direct {v1, p0}, LCoronaProvider/licensing/google/LuaLoader$LoadExpansionFilesWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 112
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p1, v1, v0}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    return v3
.end method

.method public verify(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 205
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "com.android.vending.CHECK_LICENSE"

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "licensing"

    .line 213
    invoke-static {p1, v1, v2}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "google"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    :cond_2
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v2

    iput v2, p0, LCoronaProvider/licensing/google/LuaLoader;->fListener:I

    .line 217
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v3

    .line 221
    :cond_3
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v2, p0, LCoronaProvider/licensing/google/LuaLoader;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;Z)V

    const/4 v3, 0x1

    .line 225
    :cond_4
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v1
.end method
