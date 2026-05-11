.class public interface abstract Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaVideoView$HttpServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestHandler"
.end annotation


# virtual methods
.method public abstract onSendRequestUsing(Ljava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
