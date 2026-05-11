.class public Lcom/ansca/corona/storage/AssetFileLocationInfo;
.super Ljava/lang/Object;
.source "AssetFileLocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;
    }
.end annotation


# instance fields
.field private fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getPackageFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getZipEntryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getZipEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->clone()Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo;->fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getAssetFilePath()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo;->fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteCountInPackage()J
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo;->fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getByteCountInPackage()J

    move-result-wide v0

    return-wide v0
.end method

.method public getByteOffsetInPackage()J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo;->fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getByteOffsetInPackage()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageFile()Ljava/io/File;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo;->fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getPackageFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getZipEntryName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo;->fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->getZipEntryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo;->fSettings:Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->isCompressed()Z

    move-result v0

    return v0
.end method
