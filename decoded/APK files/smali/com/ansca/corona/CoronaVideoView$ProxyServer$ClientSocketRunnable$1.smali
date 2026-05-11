.class Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;

.field final synthetic val$finalRequestBodyByteArrays:Ljava/util/ArrayList;

.field final synthetic val$finalRequestHeaders:Ljava/util/HashMap;

.field final synthetic val$finalRequestMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;

    iput-object p2, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->val$finalRequestMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->val$finalRequestHeaders:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->val$finalRequestBodyByteArrays:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendRequestUsing(Ljava/net/HttpURLConnection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->val$finalRequestMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->val$finalRequestHeaders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 888
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 889
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 892
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "host"

    .line 893
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 896
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 897
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    if-ltz v3, :cond_2

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v4, "range"

    .line 901
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 906
    iget-object v3, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;

    invoke-static {v3}, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->access$1600(Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;)Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    move-result-object v3

    invoke-static {v3}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1300(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;->access$1600(Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable;)Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    move-result-object v1

    invoke-static {v1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->access$1300(Lcom/ansca/corona/CoronaVideoView$ProxyServer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v4, "content-length"

    .line 910
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 917
    :cond_2
    :goto_1
    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    .line 922
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->val$finalRequestBodyByteArrays:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 928
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 929
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$ClientSocketRunnable$1;->val$finalRequestBodyByteArrays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 930
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 931
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 936
    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :cond_5
    return-void
.end method
