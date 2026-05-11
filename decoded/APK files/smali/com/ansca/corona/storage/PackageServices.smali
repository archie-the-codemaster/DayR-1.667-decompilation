.class public Lcom/ansca/corona/storage/PackageServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "PackageServices.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPackageState(Ljava/lang/String;I)Lcom/ansca/corona/storage/PackageState;
    .locals 1

    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-static {}, Lcom/ansca/corona/storage/PackageServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_3

    .line 72
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 76
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    sget-object p1, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    return-object p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 89
    iget-boolean p1, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_2

    .line 90
    sget-object p1, Lcom/ansca/corona/storage/PackageState;->DISABLED:Lcom/ansca/corona/storage/PackageState;

    return-object p1

    .line 92
    :cond_2
    sget-object p1, Lcom/ansca/corona/storage/PackageState;->ENABLED:Lcom/ansca/corona/storage/PackageState;

    return-object p1

    .line 97
    :cond_3
    sget-object p1, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    return-object p1

    .line 68
    :catch_1
    sget-object p1, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    return-object p1

    .line 57
    :cond_4
    :goto_1
    sget-object p1, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    return-object p1
.end method

.method public isPackageNameInstalled(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 115
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/storage/PackageServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method
