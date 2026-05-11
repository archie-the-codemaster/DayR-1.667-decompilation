.class public Lcom/ansca/corona/storage/UniqueFileNameBuilder;
.super Ljava/lang/Object;
.source "UniqueFileNameBuilder.java"


# instance fields
.field private fDirectory:Ljava/io/File;

.field private fFileExtension:Ljava/lang/String;

.field private fFileNameFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    const-string v0, "File %d"

    .line 44
    iput-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Ljava/io/File;
    .locals 9

    .line 133
    iget-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 144
    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    :goto_1
    const/16 v6, 0x2710

    if-gt v5, v6, :cond_5

    if-eqz v0, :cond_2

    .line 147
    iget-object v6, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 150
    :cond_2
    iget-object v6, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :goto_2
    iget-object v6, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const/16 v6, 0x2e

    .line 154
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    iget-object v6, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_3
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v1, v6

    goto :goto_3

    .line 162
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-object v1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameFormat()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    return-object v0
.end method

.method public setDirectory(Ljava/io/File;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    return-void
.end method

.method public setFileExtension(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "."

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    return-void
.end method

.method public setFileNameFormat(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    return-void
.end method
