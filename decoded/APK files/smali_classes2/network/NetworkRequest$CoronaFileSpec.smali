.class Lnetwork/NetworkRequest$CoronaFileSpec;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaFileSpec"
.end annotation


# instance fields
.field public baseDirectory:Ljava/lang/Object;

.field public filename:Ljava/lang/String;

.field public fullPath:Ljava/lang/String;

.field public isResourceFile:Ljava/lang/Boolean;

.field final synthetic this$0:Lnetwork/NetworkRequest;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->baseDirectory:Ljava/lang/Object;

    .line 295
    iput-object p1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 296
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    .line 300
    iput-object p2, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->baseDirectory:Ljava/lang/Object;

    .line 302
    iput-object p4, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    .line 303
    iput-object p5, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getFileSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lnetwork/NetworkRequest$CoronaFileSpec;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    .line 340
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move-wide v0, v1

    :goto_0
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method
