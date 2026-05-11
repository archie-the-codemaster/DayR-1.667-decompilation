.class public Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;
.super Ljava/lang/Object;
.source "AssetFileLocationInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/storage/AssetFileLocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private fAssetFilePath:Ljava/lang/String;

.field private fByteCountInPackage:J

.field private fByteOffsetInPackage:J

.field private fIsCompressed:Z

.field private fPackageFile:Ljava/io/File;

.field private fZipEntryName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fPackageFile:Ljava/io/File;

    .line 144
    iput-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fAssetFilePath:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fZipEntryName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 146
    iput-wide v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fByteOffsetInPackage:J

    .line 147
    iput-wide v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fByteCountInPackage:J

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fIsCompressed:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;
    .locals 1

    .line 159
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->clone()Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;

    move-result-object v0

    return-object v0
.end method

.method public getAssetFilePath()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fAssetFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getByteCountInPackage()J
    .locals 2

    .line 282
    iget-wide v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fByteCountInPackage:J

    return-wide v0
.end method

.method public getByteOffsetInPackage()J
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fByteOffsetInPackage:J

    return-wide v0
.end method

.method public getPackageFile()Ljava/io/File;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fPackageFile:Ljava/io/File;

    return-object v0
.end method

.method public getZipEntryName()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fZipEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fIsCompressed:Z

    return v0
.end method

.method public setAssetFilePath(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fAssetFilePath:Ljava/lang/String;

    return-void
.end method

.method public setByteCountInPackage(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 270
    iput-wide p1, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fByteCountInPackage:J

    return-void

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setByteOffsetInPackage(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 245
    iput-wide p1, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fByteOffsetInPackage:J

    return-void

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setIsCompressed(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fIsCompressed:Z

    return-void
.end method

.method public setPackageFile(Ljava/io/File;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fPackageFile:Ljava/io/File;

    return-void
.end method

.method public setZipEntryName(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/ansca/corona/storage/AssetFileLocationInfo$Settings;->fZipEntryName:Ljava/lang/String;

    return-void
.end method
