.class Lcom/ansca/corona/CoronaActivity$SelectImageActivityResultHandler;
.super Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;
.source "CoronaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectImageActivityResultHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    const-string v0, "jpg"

    const-string v1, "Picture"

    .line 2540
    invoke-direct {p0, p1, v0, v1}, Lcom/ansca/corona/CoronaActivity$SelectMediaActivityResultHandler;-><init>(Lcom/ansca/corona/CoronaRuntime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected generateEvent(Ljava/lang/String;IJ)Lcom/ansca/corona/events/MediaPickerTask;
    .locals 0

    .line 2545
    new-instance p2, Lcom/ansca/corona/events/ImagePickerTask;

    invoke-direct {p2, p1}, Lcom/ansca/corona/events/ImagePickerTask;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method protected getColumns()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected handleContentUri(Landroid/net/Uri;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 2559
    new-instance v1, Lcom/ansca/corona/storage/FileServices;

    invoke-direct {v1, p3}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 2564
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-nez p2, :cond_0

    .line 2567
    new-instance p1, Lcom/ansca/corona/storage/UniqueFileNameBuilder;

    invoke-direct {p1}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;-><init>()V

    .line 2568
    invoke-static {p3}, Lcom/ansca/corona/CoronaEnvironment;->getInternalTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setDirectory(Ljava/io/File;)V

    .line 2569
    iget-object p2, p0, Lcom/ansca/corona/CoronaActivity$SelectImageActivityResultHandler;->fGenericFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setFileNameFormat(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p1, p4}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->setFileExtension(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p1}, Lcom/ansca/corona/storage/UniqueFileNameBuilder;->build()Ljava/io/File;

    move-result-object p2

    .line 2573
    :cond_0
    invoke-virtual {v1, v2, p2}, Lcom/ansca/corona/storage/FileServices;->writeToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2575
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2580
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-object v0
.end method
