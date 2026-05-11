.class Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaVideoView$ProxyServer;-><init>(Lcom/ansca/corona/CoronaVideoView;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, Ljava/net/ServerSocket;-><init>(II)V

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$502(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 575
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v2}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v2}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$600(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v2, v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$702(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 588
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 590
    :try_start_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 592
    :catch_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$502(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 599
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/ServerSocket;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 602
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1100(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1$1;

    invoke-direct {v3, p0, v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1$1;-><init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1202(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Z)Z

    return-void

    .line 631
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1200(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 634
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_4

    goto :goto_1

    .line 642
    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;

    iget-object v3, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-direct {v2, v3, v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;-><init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Ljava/net/Socket;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 643
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_2
    move-exception v0

    .line 646
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 655
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 659
    :catch_4
    :cond_5
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->close()V

    return-void
.end method
