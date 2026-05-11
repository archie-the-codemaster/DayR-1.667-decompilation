.class Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaVideoView$ProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientSocketRunnable"
.end annotation


# instance fields
.field private fClientSocket:Ljava/net/Socket;

.field private fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Ljava/net/Socket;)V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    .line 781
    iput-object p2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$1600(Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;)Lcom/ansca/corona/CoronaVideoView$ProxyServer;
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "\r\n"

    .line 792
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    if-nez v2, :cond_0

    goto/16 :goto_c

    .line 797
    :cond_0
    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1300(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 798
    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1400(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)V

    .line 804
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 808
    :try_start_0
    iget-object v3, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 809
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 813
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s+"

    .line 814
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 817
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 819
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 824
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const-string v8, ""

    const/16 v9, 0x3a

    .line 832
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_4

    .line 834
    invoke-virtual {v7, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    .line 835
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 836
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    move-object v10, v7

    .line 839
    :cond_5
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    goto :goto_0

    .line 844
    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const/4 v4, 0x0

    :goto_3
    if-lez v4, :cond_8

    .line 847
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 849
    :cond_7
    new-array v4, v4, [B

    .line 850
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 851
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    if-gtz v4, :cond_7

    .line 877
    :cond_8
    iget-object v3, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v3}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/URL;

    move-result-object v3

    new-instance v4, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;

    invoke-direct {v4, p0, v5, v1, v2}, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;-><init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lcom/ansca/corona/CoronaVideoView$HttpServices;->sendRequest(Ljava/net/URL;Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-nez v1, :cond_9

    .line 944
    :try_start_3
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    .line 954
    :cond_9
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 955
    iget-object v3, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v3}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1500(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 956
    iget-object v3, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-static {v3, v2}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1502(Lcom/ansca/corona/CoronaVideoView$ProxyServer;Ljava/net/URL;)Ljava/net/URL;

    .line 960
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP/1.1 "

    .line 961
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 965
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_4

    .line 968
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_6

    :cond_d
    const-string v8, ", "

    .line 978
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    :goto_6
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 982
    :cond_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 984
    :cond_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 989
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 990
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 992
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 995
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_12

    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 999
    :goto_7
    array-length v4, v3

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_10

    goto :goto_8

    :cond_10
    if-nez v4, :cond_11

    goto :goto_7

    .line 1006
    :cond_11
    invoke-virtual {v0, v3, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1007
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 1020
    :cond_12
    :goto_8
    :try_start_5
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1025
    :catch_2
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1027
    :goto_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1033
    :catch_3
    :cond_13
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    .line 1016
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1020
    :try_start_9
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1025
    :catch_5
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-eqz v0, :cond_13

    goto :goto_9

    .line 1020
    :goto_a
    :try_start_b
    iget-object v2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1025
    :catch_6
    :try_start_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1027
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1033
    :catch_7
    :cond_14
    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1034
    :catch_8
    throw v0

    .line 1020
    :catch_9
    :try_start_e
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 1025
    :catch_a
    :try_start_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    if-eqz v0, :cond_13

    goto :goto_9

    :catch_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    .line 860
    instance-of v1, v0, Ljava/net/SocketException;

    if-nez v1, :cond_15

    .line 861
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 865
    :cond_15
    :try_start_10
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->fClientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    :catch_d
    :cond_16
    :goto_c
    return-void
.end method
