.class Lcom/ansca/corona/CoronaVideoView$ProxyServer$2;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"

# interfaces
.implements Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaVideoView$ProxyServer;->requestVideoFileSize()V
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

    .line 721
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView$ProxyServer$2;->this$0:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendRequestUsing(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HEAD"

    .line 726
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    .line 727
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method
