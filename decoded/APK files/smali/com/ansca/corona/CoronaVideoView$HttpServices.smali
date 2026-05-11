.class Lcom/ansca/corona/CoronaVideoView$HttpServices;
.super Ljava/lang/Object;
.source "CoronaVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpServices"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRequest(Landroid/net/Uri;Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;)Ljava/net/HttpURLConnection;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1089
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ansca/corona/CoronaVideoView$HttpServices;->sendRequest(Ljava/net/URL;Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1092
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static sendRequest(Ljava/net/URL;Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;)Ljava/net/HttpURLConnection;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    move-object v5, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1122
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v6, :cond_1

    goto :goto_1

    .line 1130
    :cond_1
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v2, :cond_2

    .line 1133
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "; "

    .line 1134
    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Cookie"

    .line 1135
    invoke-virtual {v6, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    :cond_2
    const/16 v5, 0x7d0

    const/16 v7, 0x2710

    if-lez v3, :cond_3

    const/16 v5, 0x2710

    .line 1147
    :cond_3
    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1148
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1153
    :try_start_2
    invoke-interface {p1, v6}, Lcom/ansca/corona/CoronaVideoView$HttpServices$RequestHandler;->onSendRequestUsing(Ljava/net/HttpURLConnection;)V

    .line 1154
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_4

    .line 1171
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :cond_4
    const/16 v2, 0x12d

    if-eq p0, v2, :cond_5

    const/16 v2, 0x12e

    if-eq p0, v2, :cond_5

    const/16 v2, 0x12f

    if-eq p0, v2, :cond_5

    const/16 v2, 0x133

    if-ne p0, v2, :cond_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/16 p0, 0xa

    if-le v4, p0, :cond_7

    :cond_6
    :goto_1
    move-object v0, v6

    goto :goto_4

    .line 1186
    :cond_7
    :try_start_4
    new-instance p0, Ljava/net/URL;

    const-string v2, "Location"

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Set-Cookie"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1190
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v6

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x2

    if-ge v3, v7, :cond_8

    move-object v5, v6

    goto :goto_0

    .line 1161
    :cond_8
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_9

    .line 1201
    :try_start_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    nop

    goto :goto_3

    :cond_9
    move-object v0, v6

    .line 1205
    :goto_3
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-nez p1, :cond_a

    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_a

    .line 1208
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_4
    :cond_a
    :goto_4
    return-object v0
.end method
