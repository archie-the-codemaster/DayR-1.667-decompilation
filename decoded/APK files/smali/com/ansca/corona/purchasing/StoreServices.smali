.class public Lcom/ansca/corona/purchasing/StoreServices;
.super Ljava/lang/Object;
.source "StoreServices.java"


# static fields
.field public static final AMAZON_MARKETPLACE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.venezia"

.field public static final GOOGLE_MARKETPLACE_APP_PACKAGE_NAME_1:Ljava/lang/String; = "com.android.vending"

.field public static final GOOGLE_MARKETPLACE_APP_PACKAGE_NAME_2:Ljava/lang/String; = "com.google.android.feedback"

.field public static final SAMSUNG_MARKETPLACE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableAppStoreNames()[Ljava/lang/String;
    .locals 4

    .line 138
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 139
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.vending"

    .line 142
    invoke-static {v2}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.google.android.feedback"

    .line 143
    invoke-static {v2}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "google"

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "com.amazon.venezia"

    .line 146
    invoke-static {v2}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "amazon"

    .line 147
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "com.sec.android.app.samsungapps"

    .line 149
    invoke-static {v2}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "samsung"

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "ro.nook.manufacturer"

    .line 155
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "barnes"

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "noble"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    :cond_5
    const-string v1, "nook"

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :cond_7
    return-object v1
.end method

.method public static getAvailableInAppStoreNames()[Ljava/lang/String;
    .locals 3

    const-string v0, "google"

    .line 124
    invoke-static {v0}, Lcom/ansca/corona/purchasing/StoreServices;->isInAppStoreAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getDefaultInAppStoreName()Ljava/lang/String;
    .locals 2

    const-string v0, "google"

    .line 55
    invoke-static {v0}, Lcom/ansca/corona/purchasing/StoreServices;->isInAppStoreAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "none"

    return-object v0
.end method

.method public static getStoreApplicationWasPurchasedFrom()Ljava/lang/String;
    .locals 2

    .line 218
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/ansca/corona/purchasing/StoreName;->fromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "none"

    :goto_0
    return-object v0
.end method

.method public static getTargetedAppStoreName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 188
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 187
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 190
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "targetedAppStore"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    const-string v0, "none"

    :cond_2
    return-object v0
.end method

.method public static isAppStoreAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 100
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreName;->isNotValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getAvailableAppStoreNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isInAppStoreAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 71
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreName;->isNotValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "google"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "com.android.vending"

    .line 79
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.google.android.feedback"

    .line 80
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v0, "amazon"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    return v1
.end method

.method private static isPackageNameInstalled(Ljava/lang/String;)Z
    .locals 2

    .line 234
    new-instance v0, Lcom/ansca/corona/storage/PackageServices;

    .line 235
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/storage/PackageServices;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v0, p0}, Lcom/ansca/corona/storage/PackageServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
