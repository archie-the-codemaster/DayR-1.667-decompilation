.class Lcom/ansca/corona/CoronaVideoView$ProxyServer;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyServer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;
    }
.end annotation


# instance fields
.field private fHandler:Landroid/os/Handler;

.field private fOriginalVideoUri:Landroid/net/Uri;

.field private fProxyUri:Landroid/net/Uri;

.field private fRedirectedVideoUrl:Ljava/net/URL;

.field private fServerSocket:Ljava/net/ServerSocket;

.field private fVideoFileSizeInBytes:J

.field private fVideoView:Lcom/ansca/corona/CoronaVideoView;

.field private fWasCloseRequested:Z


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaVideoView;Landroid/net/Uri;)V
    .locals 2

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 553
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fHandler:Landroid/os/Handler;

    .line 554
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    const/4 p1, 0x0

    .line 555
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fProxyUri:Landroid/net/Uri;

    .line 556
    iput-object p2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fOriginalVideoUri:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    .line 557
    iput-wide v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fVideoFileSizeInBytes:J

    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fWasCloseRequested:Z

    .line 560
    :try_start_0
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fRedirectedVideoUrl:Ljava/net/URL;

    .line 561
    new-instance p1, Ljava/net/URL;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fRedirectedVideoUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 564
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;

    invoke-direct {p2, p0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;-><init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 662
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 549
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic access$1100(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Landroid/os/Handler;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Z
    .locals 0

    .line 501
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fWasCloseRequested:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Z)Z
    .locals 0

    .line 501
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fWasCloseRequested:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)J
    .locals 2

    .line 501
    iget-wide v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fVideoFileSizeInBytes:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->requestVideoFileSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/URL;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fRedirectedVideoUrl:Ljava/net/URL;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fRedirectedVideoUrl:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/ServerSocket;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fServerSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fServerSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Landroid/net/Uri;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fOriginalVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fProxyUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Lcom/ansca/corona/CoronaVideoView;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    return-object p0
.end method

.method private requestVideoFileSize()V
    .locals 6

    .line 721
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fRedirectedVideoUrl:Ljava/net/URL;

    new-instance v1, Lcom/ansca/corona/CoronaVideoView$ProxyServer$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer$2;-><init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)V

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaVideoView$HttpServices;->sendRequest(Ljava/net/URL;Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 735
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    const-string v1, "Content-Length"

    .line 738
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 740
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 742
    iput-wide v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fVideoFileSizeInBytes:J

    .line 748
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 749
    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fRedirectedVideoUrl:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 750
    iput-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fRedirectedVideoUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 759
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 698
    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fWasCloseRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 699
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 703
    :try_start_1
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fWasCloseRequested:Z

    .line 707
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fServerSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 708
    :try_start_2
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyUri()Landroid/net/Uri;
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fWasCloseRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fProxyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fOriginalVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public wasClosed()Z
    .locals 1

    .line 692
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->fWasCloseRequested:Z

    return v0
.end method
