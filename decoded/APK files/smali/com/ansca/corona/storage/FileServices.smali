.class public Lcom/ansca/corona/storage/FileServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "FileServices.java"


# static fields
.field private static sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile; = null

.field private static sHasAccessedExpansionFileDirectory:Z = false

.field private static sMainExpansionFile:Ljava/io/File;

.field private static sMainExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

.field private static sPatchExpansionFile:Ljava/io/File;

.field private static sPatchExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/ansca/corona/storage/FileServices;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 63
    :try_start_1
    new-instance v1, Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/ansca/corona/storage/ZipResourceFile;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private createRawResourceNameForAsset(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 842
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 860
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 861
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    return-object v0

    .line 866
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 869
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gtz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 873
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^[a-z][0-9]]"

    const-string v1, "_"

    .line 876
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corona_asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCoronaResourcesFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 775
    invoke-static {}, Lcom/ansca/corona/storage/FileServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 781
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "coronaResources"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getExpansionFileOfType(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const-string v0, "."

    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getExpansionFileDirectory()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 368
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/storage/FileServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 369
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 370
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 369
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".obb"

    .line 377
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    new-instance p1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    move-object p1, v1

    goto :goto_1

    :catch_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method private openZipFileEntry(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 530
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    sget-boolean v1, Lcom/ansca/corona/storage/FileServices;->sHasAccessedExpansionFileDirectory:Z

    if-nez v1, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->loadExpansionFiles()V

    .line 540
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getPatchExpansionFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    sget-object p1, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz p1, :cond_2

    .line 542
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/ansca/corona/storage/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object v0

    .line 549
    :cond_3
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getMainExpansionFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 550
    sget-object p1, Lcom/ansca/corona/storage/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz p1, :cond_4

    .line 551
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/ansca/corona/storage/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_4
    return-object v0

    .line 558
    :cond_5
    invoke-static {p1, p2}, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->tryOpen(Ljava/io/File;Ljava/lang/String;)Lcom/ansca/corona/storage/ZipFileEntryInputStream;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    return-object v0
.end method

.method private openZipFileEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/ansca/corona/storage/FileServices;->openZipFileEntry(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_b

    .line 933
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 939
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->openFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    .line 942
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 943
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v3, 0x400

    new-array v4, v3, [B

    :goto_0
    if-lez v1, :cond_3

    if-le v3, v1, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    const/16 v5, 0x400

    .line 954
    :goto_1
    invoke-virtual {p1, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 955
    invoke-virtual {v2, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-int/2addr v1, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_6

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 969
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 973
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    nop

    :cond_6
    :goto_4
    if-nez v0, :cond_9

    .line 977
    :catch_4
    :cond_7
    :goto_5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object p1, v1

    goto :goto_9

    :catch_5
    move-exception p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    .line 964
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_8

    .line 969
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    nop

    :cond_8
    :goto_7
    if-eqz v2, :cond_7

    .line 973
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :cond_9
    :goto_8
    return v0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_9
    if-eqz p1, :cond_a

    .line 969
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_a

    :catch_7
    nop

    :cond_a
    :goto_a
    if-eqz v1, :cond_b

    .line 973
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 977
    :catch_8
    :cond_b
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw v0

    :cond_c
    :goto_b
    return v0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 896
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 897
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/storage/FileServices;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 906
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public doesAssetFileExist(Ljava/lang/String;)Z
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getAssetFileLocation(Ljava/lang/String;)Lcom/ansca/corona/storage/AssetFileLocationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public doesResourceFileExist(Ljava/lang/String;)Z
    .locals 2

    .line 115
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/storage/ZipResourceFile;->getEntry(Ljava/lang/String;)Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public extractAssetFile(Ljava/io/File;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/storage/FileServices;->extractAssetFile(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public extractAssetFile(Ljava/io/File;Z)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 748
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ansca/corona/storage/FileServices;->getCoronaResourcesFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    if-nez p2, :cond_3

    .line 754
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v1

    .line 759
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/ansca/corona/storage/FileServices;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    return-object v1
.end method

.method public extractAssetFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0}, Lcom/ansca/corona/storage/FileServices;->extractAssetFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public extractAssetFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/ansca/corona/storage/FileServices;->extractAssetFile(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 702
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getAssetFileLocation(Ljava/lang/String;)Lcom/ansca/corona/storage/AssetFileLocationInfo;
    .locals 6

    .line 168
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 173
    :cond_0
    sget-boolean v0, Lcom/ansca/corona/storage/FileServices;->sHasAccessedExpansionFileDirectory:Z

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->loadExpansionFiles()V

    .line 178
    :cond_1
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v0, p1}, Lcom/ansca/corona/storage/ZipResourceFile;->getEntry(Ljava/lang/String;)Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v0

    :goto_0
    if-nez v0, :cond_3

    .line 184
    sget-object v3, Lcom/ansca/corona/storage/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v3, :cond_3

    .line 186
    invoke-virtual {v3, p1}, Lcom/ansca/corona/storage/ZipResourceFile;->getEntry(Ljava/lang/String;)Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    move-object v2, p1

    :cond_3
    if-nez v0, :cond_4

    .line 190
    sget-object v3, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v3, :cond_4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {v0, v2}, Lcom/ansca/corona/storage/ZipResourceFile;->getEntry(Ljava/lang/String;)Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 197
    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getCoronaResourcesFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 198
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 199
    new-instance v0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-direct {v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;-><init>()V

    .line 200
    invoke-virtual {v0, v3}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setPackageFile(Ljava/io/File;)V

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setByteCountInPackage(J)V

    .line 202
    invoke-virtual {v0, p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setAssetFilePath(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setZipEntryName(Ljava/lang/String;)V

    .line 204
    new-instance p1, Lcom/ansca/corona/storage/AssetFileLocationInfo;

    invoke-direct {p1, v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo;-><init>(Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;)V

    return-object p1

    :cond_5
    if-nez v0, :cond_7

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res/raw/"

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getExtensionFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "."

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {v0, v2}, Lcom/ansca/corona/storage/ZipResourceFile;->getEntry(Ljava/lang/String;)Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res/drawable/"

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {v0, v2}, Lcom/ansca/corona/storage/ZipResourceFile;->getEntry(Ljava/lang/String;)Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    return-object v1

    .line 239
    :cond_9
    :try_start_0
    new-instance v3, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-direct {v3}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;-><init>()V

    .line 240
    iget-object v4, v0, Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setPackageFile(Ljava/io/File;)V

    .line 241
    invoke-virtual {v3, p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setAssetFilePath(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3, v2}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setZipEntryName(Ljava/lang/String;)V

    .line 243
    iget-wide v4, v0, Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;->mOffset:J

    invoke-virtual {v3, v4, v5}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setByteOffsetInPackage(J)V

    .line 244
    iget-wide v4, v0, Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    invoke-virtual {v3, v4, v5}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setByteCountInPackage(J)V

    .line 245
    invoke-virtual {v0}, Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3, p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->setIsCompressed(Z)V

    .line 246
    new-instance p1, Lcom/ansca/corona/storage/AssetFileLocationInfo;

    invoke-direct {p1, v3}, Lcom/ansca/corona/storage/AssetFileLocationInfo;-><init>(Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object p1, v1

    :goto_2
    return-object p1
.end method

.method public getBytesFromFile(Ljava/io/File;)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1142
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getBytesFromFile(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytesFromFile(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1093
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_4

    .line 1099
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 1101
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    .line 1103
    new-array v0, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    sub-int v3, v1, v2

    const/16 v4, 0x400

    if-le v3, v4, :cond_1

    const/16 v3, 0x400

    .line 1109
    :cond_1
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1120
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_3

    :catch_2
    move-exception v1

    move-object p1, v0

    .line 1116
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    .line 1120
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_4
    :goto_2
    return-object p1

    :goto_3
    if-eqz p1, :cond_5

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1121
    :catch_4
    :cond_5
    throw v0

    :cond_6
    :goto_4
    return-object v0
.end method

.method public getExpansionFileDirectory()Ljava/io/File;
    .locals 4

    .line 262
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 264
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/obb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ansca/corona/storage/FileServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getExtensionFrom(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 798
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getExtensionFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtensionFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 818
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x2e

    .line 824
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 825
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public getMainExpansionFile()Ljava/io/File;
    .locals 1

    .line 305
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sMainExpansionFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "main"

    .line 307
    invoke-direct {p0, v0}, Lcom/ansca/corona/storage/FileServices;->getExpansionFileOfType(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 308
    sput-object v0, Lcom/ansca/corona/storage/FileServices;->sMainExpansionFile:Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method public getMimeTypeFrom(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1158
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 1164
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1165
    invoke-virtual {v1, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPatchExpansionFile()Ljava/io/File;
    .locals 1

    .line 347
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "patch"

    .line 349
    invoke-direct {p0, v0}, Lcom/ansca/corona/storage/FileServices;->getExpansionFileOfType(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 350
    sput-object v0, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionFile:Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method public getResourceFileSize(Ljava/lang/String;)J
    .locals 2

    .line 134
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sApkZipEntryReader:Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/storage/ZipResourceFile;->getEntry(Ljava/lang/String;)Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-wide v0, p1, Lcom/ansca/corona/storage/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isAssetFile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public loadExpansionFiles()V
    .locals 2

    .line 395
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/ansca/corona/storage/ZipResourceFile;->close()V

    .line 397
    sput-object v1, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    .line 399
    :cond_0
    sget-object v0, Lcom/ansca/corona/storage/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/ansca/corona/storage/ZipResourceFile;->close()V

    .line 401
    sput-object v1, Lcom/ansca/corona/storage/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    :cond_1
    const/4 v0, 0x0

    .line 405
    sput-boolean v0, Lcom/ansca/corona/storage/FileServices;->sHasAccessedExpansionFileDirectory:Z

    .line 406
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getExpansionFileDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    :try_start_0
    new-instance v0, Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getPatchExpansionFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/storage/ZipResourceFile;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :catch_0
    :try_start_1
    new-instance v0, Lcom/ansca/corona/storage/ZipResourceFile;

    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getMainExpansionFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/storage/ZipResourceFile;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/ansca/corona/storage/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    const/4 v0, 0x1

    .line 415
    sput-boolean v0, Lcom/ansca/corona/storage/FileServices;->sHasAccessedExpansionFileDirectory:Z

    return-void
.end method

.method public moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1065
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1069
    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/storage/FileServices;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 1070
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public openAssetFileDescriptorFor(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 659
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->openAssetFileDescriptorFor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openAssetFileDescriptorFor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 570
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_6

    .line 576
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_5

    .line 578
    sget-boolean v1, Lcom/ansca/corona/storage/FileServices;->sHasAccessedExpansionFileDirectory:Z

    if-nez v1, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->loadExpansionFiles()V

    .line 583
    :cond_1
    sget-object v1, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v1, :cond_2

    .line 584
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/ansca/corona/storage/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    if-nez v0, :cond_6

    .line 589
    sget-object v1, Lcom/ansca/corona/storage/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/storage/ZipResourceFile;

    if-eqz v1, :cond_3

    .line 590
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/ansca/corona/storage/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    .line 595
    :try_start_2
    invoke-static {}, Lcom/ansca/corona/storage/FileServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :goto_2
    if-nez v0, :cond_6

    .line 600
    :try_start_3
    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getCoronaResourcesFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 601
    new-instance v9, Landroid/content/res/AssetFileDescriptor;

    .line 602
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v9

    goto :goto_3

    :catch_3
    nop

    :goto_3
    if-nez v0, :cond_4

    .line 608
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->extractAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 609
    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getCoronaResourcesFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 610
    new-instance v9, Landroid/content/res/AssetFileDescriptor;

    .line 611
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v9

    goto :goto_4

    :catch_4
    nop

    :cond_4
    :goto_4
    if-nez v0, :cond_6

    .line 619
    :try_start_5
    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 620
    new-instance v1, Lcom/ansca/corona/storage/ResourceServices;

    invoke-static {}, Lcom/ansca/corona/storage/FileServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    .line 621
    invoke-virtual {v1, p1}, Lcom/ansca/corona/storage/ResourceServices;->getRawResourceId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 623
    invoke-virtual {v1}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    goto :goto_5

    .line 635
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    new-instance p1, Landroid/content/res/AssetFileDescriptor;

    .line 637
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    move-object v0, p1

    :catch_5
    :cond_6
    :goto_6
    return-object v0
.end method

.method public openFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 494
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 427
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/storage/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getPatchExpansionFile()Ljava/io/File;

    move-result-object v0

    .line 436
    invoke-direct {p0, v0, p1}, Lcom/ansca/corona/storage/FileServices;->openZipFileEntry(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getMainExpansionFile()Ljava/io/File;

    move-result-object v0

    .line 440
    invoke-direct {p0, v0, p1}, Lcom/ansca/corona/storage/FileServices;->openZipFileEntry(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 444
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/storage/FileServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x3

    .line 445
    invoke-virtual {v1, p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_2

    .line 452
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->getCoronaResourcesFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-nez v0, :cond_2

    .line 457
    :try_start_2
    invoke-direct {p0, p1}, Lcom/ansca/corona/storage/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 458
    new-instance v1, Lcom/ansca/corona/storage/ResourceServices;

    invoke-static {}, Lcom/ansca/corona/storage/FileServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    .line 459
    invoke-virtual {v1, p1}, Lcom/ansca/corona/storage/ResourceServices;->getRawResourceId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 461
    invoke-virtual {v1}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    .line 473
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    :catch_2
    :cond_2
    :goto_2
    return-object v0
.end method

.method public setMainExpansionFileName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getExpansionFileDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    :cond_1
    :goto_0
    sput-object v0, Lcom/ansca/corona/storage/FileServices;->sMainExpansionFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 295
    sput-boolean p1, Lcom/ansca/corona/storage/FileServices;->sHasAccessedExpansionFileDirectory:Z

    return-void
.end method

.method public setPatchExpansionFileName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/ansca/corona/storage/FileServices;->getExpansionFileDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :cond_1
    :goto_0
    sput-object v0, Lcom/ansca/corona/storage/FileServices;->sPatchExpansionFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 337
    sput-boolean p1, Lcom/ansca/corona/storage/FileServices;->sHasAccessedExpansionFileDirectory:Z

    return-void
.end method

.method public writeToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_4

    .line 1003
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v1, 0x0

    .line 1007
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x400

    :try_start_1
    new-array v1, p2, [B

    .line 1013
    :cond_1
    :goto_0
    invoke-virtual {p1, v1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    .line 1015
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-gez v3, :cond_1

    const/4 v0, 0x1

    .line 1030
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 1025
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    .line 1030
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1031
    :catch_3
    :cond_4
    throw p1

    :cond_5
    :goto_4
    return v0
.end method
