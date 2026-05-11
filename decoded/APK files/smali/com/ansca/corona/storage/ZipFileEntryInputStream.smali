.class public Lcom/ansca/corona/storage/ZipFileEntryInputStream;
.super Ljava/io/InputStream;
.source "ZipFileEntryInputStream.java"


# instance fields
.field private fInputStream:Ljava/io/InputStream;

.field private fZipEntry:Ljava/util/zip/ZipEntry;

.field private fZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_5

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 61
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    .line 65
    iput-object p1, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    .line 67
    :try_start_0
    iget-object p1, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->open(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object p1, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_0

    .line 71
    :try_start_1
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 70
    iget-object p2, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_1

    .line 71
    :try_start_2
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    :catch_1
    :cond_1
    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'entryName\' cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "entryName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_4
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 48
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/ansca/corona/storage/ZipFileEntryInputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    .line 89
    iput-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    .line 90
    iput-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->open(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-void
.end method

.method private open(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    .line 118
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find zip file entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'entryName\' cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "entryName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "zipFile"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static tryOpen(Ljava/io/File;Ljava/lang/String;)Lcom/ansca/corona/storage/ZipFileEntryInputStream;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 247
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    :try_start_0
    new-instance v1, Lcom/ansca/corona/storage/ZipFileEntryInputStream;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/storage/ZipFileEntryInputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static tryOpen(Ljava/lang/String;Ljava/lang/String;)Lcom/ansca/corona/storage/ZipFileEntryInputStream;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->tryOpen(Ljava/io/File;Ljava/lang/String;)Lcom/ansca/corona/storage/ZipFileEntryInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static tryOpen(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lcom/ansca/corona/storage/ZipFileEntryInputStream;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    :try_start_0
    new-instance v1, Lcom/ansca/corona/storage/ZipFileEntryInputStream;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/storage/ZipFileEntryInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 128
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/ansca/corona/storage/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
