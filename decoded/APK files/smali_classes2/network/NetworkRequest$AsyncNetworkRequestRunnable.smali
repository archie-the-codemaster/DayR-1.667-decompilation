.class Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncNetworkRequestRunnable"
.end annotation


# instance fields
.field private connectionList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

.field public requestState:Lnetwork/NetworkRequest$NetworkRequestState;

.field final synthetic this$0:Lnetwork/NetworkRequest;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestParameters;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnetwork/NetworkRequest$NetworkRequestParameters;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;",
            ">;)V"
        }
    .end annotation

    .line 1212
    iput-object p1, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    iput-object p2, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    .line 1214
    iput-object p3, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->connectionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1217
    iget-object p2, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object p2, p2, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    if-eqz p2, :cond_0

    .line 1218
    iget-object p2, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object p2, p2, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 1220
    :goto_0
    new-instance p3, Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    invoke-direct {p3, p1, p2, v0}, Lnetwork/NetworkRequest$NetworkRequestState;-><init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p3, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    return-void
.end method


# virtual methods
.method public abort(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 2

    .line 1229
    iget-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1230
    iget-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    invoke-virtual {v0, p1}, Lnetwork/NetworkRequest$LuaCallback;->unregister(Lcom/ansca/corona/CoronaRuntime;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "text"

    const-string v3, ""

    .line 1240
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->connectionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1253
    :try_start_0
    iget-object v11, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v11, v11, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_18

    .line 1254
    :try_start_1
    iget-object v12, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget v12, v12, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1255
    iget-object v12, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget v12, v12, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1258
    iget-object v12, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v12, v12, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const-string v13, "PATCH"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_17

    if-eqz v12, :cond_0

    :try_start_2
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-gt v12, v13, :cond_0

    const-string v12, "X-HTTP-Method-Override"

    const-string v13, "PATCH"

    .line 1260
    invoke-virtual {v11, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "POST"

    .line 1261
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v12, "Network request: PATCH replaced on POST"

    new-array v13, v9, [Ljava/lang/Object;

    .line 1262
    iget-object v14, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v14, v14, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v8, v11

    const-wide/16 v9, 0x0

    const-wide/16 v19, 0x0

    goto/16 :goto_2c

    .line 1266
    :cond_0
    :try_start_3
    iget-object v12, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v12, v12, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v12, "Network request: "

    new-array v13, v9, [Ljava/lang/Object;

    .line 1267
    iget-object v14, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v14, v14, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    :goto_0
    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1274
    iget-object v12, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v12, v12, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_17

    if-eqz v12, :cond_1

    :try_start_4
    const-string v12, "Adding basic auth header"

    new-array v13, v10, [Ljava/lang/Object;

    .line 1276
    invoke-static {v12, v13}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1277
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Basic "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/String;

    iget-object v14, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v14, v14, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Authorization"

    .line 1278
    invoke-virtual {v11, v13, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :try_start_5
    const-string v12, "Opening connection to: %s"

    new-array v13, v9, [Ljava/lang/Object;

    .line 1281
    iget-object v14, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v14, v14, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1287
    iget-object v13, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v13, v13, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_17

    const-string v14, "UTF-8"

    if-eqz v13, :cond_4

    .line 1289
    :try_start_6
    iget-object v13, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v13, v13, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v15, v14

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 1291
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/String;

    .line 1292
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    const-string v5, "Content-Type"

    .line 1294
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Content-Type header value for POST/PUT is: %s"

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v4, v12, v10

    .line 1296
    invoke-static {v5, v12}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1298
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1300
    iget-object v5, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v5, v5, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1307
    invoke-static {v4}, Lnetwork/NetworkRequest;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_2

    .line 1312
    :try_start_7
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v15, v5

    goto :goto_2

    .line 1319
    :catch_0
    :try_start_8
    new-instance v4, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Caller specified an unsupported character encoding in Content-Type charset, was: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1324
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; charset="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Adding default charset to Content-Type header: %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v10

    .line 1325
    invoke-static {v5, v6}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1330
    :cond_3
    :goto_2
    invoke-virtual {v11, v8, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :cond_4
    move-object v15, v14

    .line 1336
    :cond_5
    :try_start_9
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_17

    const-string v5, "began"

    const/16 v6, 0x400

    if-nez v4, :cond_8

    :try_start_a
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const-string v7, "PUT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 1458
    :cond_6
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v7, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    if-ne v4, v7, :cond_7

    .line 1460
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-object v5, v4, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1461
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v4, :cond_7

    .line 1463
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v4, v7}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_7
    const-wide/16 v19, 0x0

    goto/16 :goto_a

    .line 1338
    :cond_8
    :goto_3
    :try_start_b
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_17

    if-eqz v4, :cond_9

    :try_start_c
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "No Content-Type request header was provided for the POST/PUT"

    new-array v7, v10, [Ljava/lang/Object;

    .line 1343
    invoke-static {v4, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1351
    :cond_9
    :try_start_d
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_15

    if-eqz v4, :cond_a

    :try_start_e
    const-string v4, "Request body is text from Lua string (requestBodyCharset: %s)"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v15, v7, v10

    .line 1353
    invoke-static {v4, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1354
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1355
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1357
    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_4
    int-to-long v12, v4

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v18, v8

    const/4 v8, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v0

    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_5
    const-wide/16 v19, 0x0

    goto/16 :goto_28

    .line 1359
    :cond_a
    :try_start_10
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    instance-of v4, v4, [B
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_15

    if-eqz v4, :cond_b

    :try_start_11
    const-string v4, "Request body is binary from Lua string"

    new-array v7, v10, [Ljava/lang/Object;

    .line 1361
    invoke-static {v4, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1362
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    .line 1363
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1364
    :try_start_12
    array-length v4, v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_4

    .line 1366
    :cond_b
    :try_start_13
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    instance-of v4, v4, Lnetwork/NetworkRequest$CoronaFileSpec;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_15

    if-eqz v4, :cond_c

    :try_start_14
    const-string v4, "Request body is from a file"

    new-array v7, v10, [Ljava/lang/Object;

    .line 1368
    invoke-static {v4, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1369
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    check-cast v4, Lnetwork/NetworkRequest$CoronaFileSpec;

    .line 1370
    invoke-virtual {v4}, Lnetwork/NetworkRequest$CoronaFileSpec;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1371
    :try_start_15
    invoke-virtual {v4}, Lnetwork/NetworkRequest$CoronaFileSpec;->getFileSize()J

    move-result-wide v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    :goto_6
    :try_start_16
    const-string v4, "Request body size: %d"

    new-array v7, v9, [Ljava/lang/Object;

    .line 1374
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v7, v10

    invoke-static {v4, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v7, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    if-ne v4, v7, :cond_d

    .line 1378
    :try_start_17
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-object v5, v4, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1379
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-wide v12, v4, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 1380
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v4, :cond_d

    .line 1382
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v4, v7}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1386
    :cond_d
    :try_start_18
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const-string v7, "progress"

    iput-object v7, v4, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    if-eqz v8, :cond_10

    .line 1390
    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    const-wide/16 v19, 0x0

    cmp-long v4, v12, v19

    if-lez v4, :cond_e

    const-wide/32 v21, 0x7fffffff

    cmp-long v4, v12, v21

    if-gez v4, :cond_e

    long-to-int v4, v12

    .line 1398
    :try_start_19
    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_7

    .line 1406
    :cond_e
    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1409
    :goto_7
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    .line 1410
    :try_start_1a
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :try_start_1b
    new-array v7, v6, [B

    move-wide/from16 v12, v19

    .line 1419
    :goto_8
    iget-object v15, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v15, v15, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    if-nez v15, :cond_11

    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_11

    .line 1421
    invoke-virtual {v8, v7, v10, v15}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v22, v7

    int-to-long v6, v15

    add-long/2addr v12, v6

    .line 1426
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v6, v6, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v7, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    if-ne v6, v7, :cond_f

    .line 1428
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-wide v12, v6, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 1429
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v6, v6, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v6, :cond_f

    .line 1431
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v6, v6, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v6, v7}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :cond_f
    move-object/from16 v7, v22

    const/16 v6, 0x400

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    const/4 v8, 0x0

    :goto_9
    move-object v4, v0

    goto/16 :goto_28

    :cond_10
    const-wide/16 v19, 0x0

    :try_start_1c
    const-string v4, "No request body supplied"

    new-array v6, v10, [Ljava/lang/Object;

    .line 1438
    invoke-static {v4, v6}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    move-object v4, v8

    const/4 v8, 0x0

    :cond_11
    if-eqz v4, :cond_12

    .line 1445
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_12
    if-eqz v8, :cond_13

    .line 1449
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_13
    :goto_a
    const-string v4, "Waiting for response code (%s)"

    new-array v6, v9, [Ljava/lang/Object;

    .line 1471
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v6}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1472
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v6, "Got response code %d (%s)"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 1473
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v6, v8}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    move-object v8, v11

    const/4 v6, 0x0

    .line 1486
    :goto_b
    :try_start_1e
    iget-object v11, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v11, v11, Lnetwork/NetworkRequest$NetworkRequestParameters;->bHandleRedirects:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1b

    const/16 v11, 0x12d

    if-eq v4, v11, :cond_14

    const/16 v11, 0x12e

    if-eq v4, v11, :cond_14

    const/16 v11, 0x12f

    if-eq v4, v11, :cond_14

    const/16 v11, 0x133

    if-ne v4, v11, :cond_1b

    :cond_14
    const-string v11, "Location"

    .line 1489
    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1490
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1491
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    const-string v15, "Set-Cookie"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-eqz v11, :cond_1a

    .line 1493
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a

    add-int/2addr v6, v9

    const/16 v15, 0xa

    if-eq v6, v15, :cond_19

    const/4 v15, 0x5

    .line 1505
    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v9, "https"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x5

    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "http:"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1507
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "redirecting from HTTPS to HTTP (%s -> %s)"

    move/from16 v24, v6

    new-array v6, v7, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v12, v6, v23

    const/4 v12, 0x1

    aput-object v11, v6, v12

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    move/from16 v24, v6

    .line 1510
    :goto_c
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v9, "Handling %d redirect to: %s"

    new-array v10, v7, [Ljava/lang/Object;

    .line 1512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v10, v12

    const/4 v4, 0x1

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1516
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    .line 1517
    :try_start_1f
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget v6, v6, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1518
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget v6, v6, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v6, 0x0

    .line 1519
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v13, :cond_18

    .line 1527
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v3

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "=== set cookie: %s (\'%s\')"

    new-array v11, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const-string v13, ";"

    .line 1529
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v12

    const/4 v12, 0x1

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1532
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_16

    .line 1534
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1536
    :cond_16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_17
    const-string v6, "=== set Cookie: %s"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v10, v9

    .line 1538
    invoke-static {v6, v10}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "Cookie"

    .line 1539
    invoke-virtual {v4, v6, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string v6, "Waiting for response code (%s)"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 1546
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-static {v6, v9}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1547
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const-string v8, "Got response code %d (%s)"

    new-array v9, v7, [Ljava/lang/Object;

    .line 1548
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-object v8, v4

    move v4, v6

    move/from16 v6, v24

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_b

    :catchall_5
    move-exception v0

    move-object v8, v4

    move-wide/from16 v9, v19

    goto/16 :goto_26

    .line 1502
    :cond_19
    :try_start_20
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "more than maximum number of redirects attempted (%d) (%s -> %s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x1

    aput-object v12, v6, v9

    aput-object v11, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1495
    :cond_1a
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "no Location: header in %d redirect response from %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v7, v9

    const/4 v4, 0x1

    aput-object v12, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1b
    const/4 v6, 0x0

    .line 1551
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_1d

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_1d

    .line 1556
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 1562
    new-instance v9, Ljava/io/PushbackInputStream;

    invoke-direct {v9, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1563
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v10, -0x1

    if-eq v10, v6, :cond_1c

    .line 1567
    move-object v10, v9

    check-cast v10, Ljava/io/PushbackInputStream;

    invoke-virtual {v10, v6}, Ljava/io/PushbackInputStream;->unread(I)V

    move-object v6, v9

    goto :goto_e

    .line 1571
    :cond_1c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    const/4 v6, 0x0

    goto :goto_e

    .line 1578
    :cond_1d
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_1e

    const/4 v9, 0x1

    .line 1581
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1585
    :cond_1e
    :goto_e
    iget-object v9, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput v4, v9, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    .line 1586
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    iput-object v9, v4, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    if-eqz v6, :cond_1f

    .line 1590
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    int-to-long v9, v4

    goto :goto_f

    :cond_1f
    move-wide/from16 v9, v19

    .line 1593
    :goto_f
    :try_start_21
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v11, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    if-ne v4, v11, :cond_20

    .line 1598
    :try_start_22
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-object v5, v4, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1599
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-wide v9, v4, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 1600
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v4, :cond_20

    .line 1602
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    iget-object v5, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v4, v5}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    goto :goto_10

    :catchall_6
    move-exception v0

    goto/16 :goto_26

    :cond_20
    :goto_10
    if-eqz v6, :cond_3f

    .line 1610
    :try_start_23
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const-string v5, "progress"

    iput-object v5, v4, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1617
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    move-object v4, v3

    .line 1622
    :cond_21
    invoke-static {v4}, Lnetwork/NetworkRequest;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    const-string v11, "charsetSource"

    const-string v12, "charset"

    if-eqz v5, :cond_22

    :try_start_24
    const-string v13, "Writing protocol charset debug"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    move-wide/from16 v24, v9

    const/4 v15, 0x0

    :try_start_25
    new-array v9, v15, [Ljava/lang/Object;

    .line 1625
    invoke-static {v13, v9}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1626
    iget-object v9, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v9, v12, v5}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v9, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const-string v10, "protocol"

    invoke-virtual {v9, v11, v10}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 1633
    :try_start_26
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    goto :goto_11

    .line 1637
    :catch_1
    :try_start_27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The character encoding found in the Content-Type header was not supported, was: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v10}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_11

    :cond_22
    move-wide/from16 v24, v9

    :goto_11
    if-nez v5, :cond_27

    .line 1644
    invoke-static {v4}, Lnetwork/NetworkRequest;->access$400(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    const/16 v9, 0x400

    new-array v10, v9, [B

    .line 1652
    new-instance v9, Ljava/io/PushbackInputStream;

    array-length v13, v10

    invoke-direct {v9, v6, v13}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1654
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_24

    .line 1657
    new-instance v13, Ljava/lang/String;

    const-string v15, "usascii"

    move-object/from16 v26, v5

    const/4 v5, 0x0

    invoke-direct {v13, v10, v5, v6, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1659
    invoke-static {v4, v13}, Lnetwork/NetworkRequest;->access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    const-string v13, "Writing content charset debug"

    new-array v15, v5, [Ljava/lang/Object;

    .line 1664
    invoke-static {v13, v15}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    iget-object v5, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v5, v12, v4}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iget-object v5, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const-string v13, "content"

    invoke-virtual {v5, v11, v13}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 1672
    :try_start_28
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    move-object v5, v4

    goto :goto_12

    .line 1678
    :catch_2
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The character encoding found in the content itself was not supported, was: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", content will be decoded using UTF-8"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v4, v13}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v14

    goto :goto_12

    :cond_23
    move-object/from16 v5, v26

    .line 1681
    :goto_12
    move-object v4, v9

    check-cast v4, Ljava/io/PushbackInputStream;

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v13, v6}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_13

    :cond_24
    move-object/from16 v26, v5

    :goto_13
    if-nez v5, :cond_25

    const-string v4, "Writing implicit charset debug"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 1693
    invoke-static {v4, v6}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1694
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v4, v12, v14}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const-string v5, "implicit"

    invoke-virtual {v4, v11, v5}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    move-object v5, v14

    goto :goto_14

    :cond_25
    move-object v6, v9

    goto :goto_14

    :cond_26
    move-object/from16 v26, v5

    .line 1699
    :goto_14
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_28

    if-nez v5, :cond_28

    move-object v5, v14

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v4, v0

    :goto_15
    move-wide/from16 v9, v24

    goto/16 :goto_2c

    :cond_27
    move-object/from16 v26, v5

    :cond_28
    :goto_16
    if-eqz v5, :cond_2f

    .line 1716
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    if-eqz v4, :cond_29

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_29
    const-string v4, "Response content was text, to be decoded with: %s"

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v9, v7

    .line 1720
    invoke-static {v4, v9}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1721
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-object v2, v4, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    .line 1728
    :try_start_2a
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 1729
    :try_start_2b
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    const/16 v6, 0x400

    :try_start_2c
    new-array v6, v6, [C

    .line 1736
    :goto_17
    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v7, v7, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-virtual {v4, v6}, Ljava/io/Reader;->read([C)I

    move-result v7

    if-lez v7, :cond_2b

    const/4 v9, 0x0

    .line 1738
    invoke-virtual {v5, v6, v9, v7}, Ljava/io/Writer;->write([CII)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    int-to-long v9, v7

    add-long v9, v19, v9

    .line 1741
    :try_start_2d
    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v7, v7, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v11, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    if-ne v7, v11, :cond_2a

    .line 1743
    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-wide v9, v7, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 1744
    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v7, v7, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v7, :cond_2a

    .line 1746
    iget-object v7, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v7, v7, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    iget-object v11, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v7, v11}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_8

    :cond_2a
    move-wide/from16 v19, v9

    goto :goto_17

    :catchall_8
    move-exception v0

    move-object/from16 v18, v4

    move-wide v6, v9

    goto :goto_18

    .line 1751
    :cond_2b
    :try_start_2e
    instance-of v6, v5, Ljava/io/StringWriter;

    if-eqz v6, :cond_2c

    .line 1753
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object v7, v5

    check-cast v7, Ljava/io/StringWriter;

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    .line 1760
    :cond_2c
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 1764
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    goto/16 :goto_24

    :catchall_9
    move-exception v0

    move-object/from16 v18, v4

    move-wide/from16 v6, v19

    goto :goto_18

    :catchall_a
    move-exception v0

    move-object/from16 v18, v4

    move-wide/from16 v6, v19

    const/4 v5, 0x0

    :goto_18
    move-object v4, v0

    goto :goto_19

    :catchall_b
    move-exception v0

    move-object v4, v0

    move-wide/from16 v6, v19

    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_19
    if-eqz v18, :cond_2d

    .line 1760
    :try_start_30
    invoke-virtual/range {v18 .. v18}, Ljava/io/Reader;->close()V

    goto :goto_1a

    :catchall_c
    move-exception v0

    move-object v4, v0

    move-wide/from16 v19, v6

    goto/16 :goto_15

    :cond_2d
    :goto_1a
    if-eqz v5, :cond_2e

    .line 1764
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    :cond_2e
    throw v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    :cond_2f
    :try_start_31
    const-string v4, "Response content was binary"

    const/4 v5, 0x0

    new-array v9, v5, [Ljava/lang/Object;

    .line 1770
    invoke-static {v4, v9}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1771
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const-string v5, "binary"

    iput-object v5, v4, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 1778
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    if-eqz v4, :cond_32

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_1c

    .line 1784
    :cond_30
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    .line 1796
    iget-object v5, v4, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    if-eqz v5, :cond_31

    .line 1799
    iget-object v5, v4, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_31

    .line 1802
    iget-object v4, v4, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 1805
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_1b

    :cond_31
    const/4 v5, 0x0

    :goto_1b
    const-string v4, "download"

    const-string v7, ".tmp"

    .line 1811
    invoke-static {v4, v7, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    const-string v5, "Temp file path: %s"

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    .line 1812
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v5, v9}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v27, v5

    move-object v5, v4

    move-object/from16 v4, v27

    goto :goto_1d

    .line 1780
    :cond_32
    :goto_1c
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_7

    const/4 v5, 0x0

    .line 1819
    :goto_1d
    :try_start_32
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_10

    const/16 v6, 0x400

    :try_start_33
    new-array v6, v6, [B

    .line 1831
    :goto_1e
    iget-object v9, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v9, v9, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_34

    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_34

    const/4 v10, 0x0

    .line 1833
    invoke-virtual {v4, v6, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    int-to-long v9, v9

    add-long v9, v19, v9

    .line 1836
    :try_start_34
    iget-object v11, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v11, v11, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v12, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    if-ne v11, v12, :cond_33

    .line 1838
    iget-object v11, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-wide v9, v11, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 1839
    iget-object v11, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v11, v11, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v11, :cond_33

    .line 1841
    iget-object v11, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v11, v11, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    iget-object v12, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v11, v12}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_d

    :cond_33
    move-wide/from16 v19, v9

    goto :goto_1e

    :catchall_d
    move-exception v0

    move-object/from16 v18, v4

    move-wide/from16 v19, v9

    goto/16 :goto_22

    .line 1846
    :cond_34
    :try_start_35
    instance-of v6, v4, Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_35

    .line 1848
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1849
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object v9, v4

    check-cast v9, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v6, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    :goto_1f
    const/16 v18, 0x0

    goto/16 :goto_21

    .line 1852
    :cond_35
    instance-of v6, v4, Ljava/io/FileOutputStream;

    if-eqz v6, :cond_3a

    .line 1854
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_f

    .line 1857
    :try_start_36
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1862
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v4, v4, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    if-eqz v5, :cond_39

    .line 1866
    new-instance v6, Ljava/io/File;

    iget-object v9, v4, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 1869
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1871
    :cond_36
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_37

    const-string v6, "Temp file successfully renamed"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    .line 1874
    invoke-static {v6, v10}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1883
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-object v4, v6, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    goto :goto_20

    .line 1880
    :cond_37
    new-instance v4, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to renamed temporary download file at path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to final file at path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_38
    if-eqz v5, :cond_39

    .line 1892
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_e

    :cond_39
    :goto_20
    const/4 v5, 0x0

    goto :goto_1f

    :catchall_e
    move-exception v0

    move-object v4, v0

    const/16 v18, 0x0

    goto :goto_23

    :cond_3a
    move-object/from16 v18, v4

    .line 1903
    :goto_21
    :try_start_37
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    if-eqz v18, :cond_3b

    .line 1907
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    :cond_3b
    if-eqz v5, :cond_40

    .line 1911
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_24

    :catchall_f
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_22

    :catchall_10
    move-exception v0

    move-object/from16 v18, v4

    const/4 v7, 0x0

    :goto_22
    move-object v4, v0

    :goto_23
    if-eqz v7, :cond_3c

    .line 1903
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_3c
    if-eqz v18, :cond_3d

    .line 1907
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    :cond_3d
    if-eqz v5, :cond_3e

    .line 1911
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3e
    throw v4
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_7

    :cond_3f
    move-wide/from16 v24, v9

    :cond_40
    :goto_24
    if-eqz v8, :cond_41

    .line 1921
    :try_start_38
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_3

    goto :goto_25

    :catch_3
    move-exception v0

    move-object v4, v0

    move-wide/from16 v9, v24

    goto :goto_2d

    :cond_41
    :goto_25
    move-wide/from16 v4, v19

    move-wide/from16 v9, v24

    goto/16 :goto_33

    :catchall_11
    move-exception v0

    move-wide/from16 v24, v9

    :goto_26
    move-object v4, v0

    goto :goto_2c

    :catchall_12
    move-exception v0

    move-object v4, v0

    goto :goto_2b

    :catchall_13
    move-exception v0

    goto :goto_27

    :catchall_14
    move-exception v0

    const-wide/16 v19, 0x0

    :goto_27
    move-object v4, v0

    move-object/from16 v18, v8

    const/4 v8, 0x0

    goto :goto_28

    :catchall_15
    move-exception v0

    const-wide/16 v19, 0x0

    move-object v4, v0

    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_28
    if-eqz v18, :cond_42

    .line 1445
    :try_start_39
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    goto :goto_29

    :catchall_16
    move-exception v0

    goto :goto_2a

    :cond_42
    :goto_29
    if-eqz v8, :cond_43

    .line 1449
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_43
    throw v4
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_16

    :catchall_17
    move-exception v0

    const-wide/16 v19, 0x0

    :goto_2a
    move-object v4, v0

    move-object v8, v11

    :goto_2b
    move-wide/from16 v9, v19

    goto :goto_2c

    :catchall_18
    move-exception v0

    const-wide/16 v19, 0x0

    move-object v4, v0

    move-wide/from16 v9, v19

    const/4 v8, 0x0

    :goto_2c
    if-eqz v8, :cond_44

    .line 1921
    :try_start_3a
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_44
    throw v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_4

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 1927
    :goto_2d
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_47

    .line 1930
    instance-of v5, v4, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_45

    const-string v5, "Request timed out"

    goto :goto_2e

    .line 1934
    :cond_45
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 1936
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2e

    :cond_46
    move-object v5, v3

    .line 1944
    :cond_47
    :goto_2e
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    if-eqz v6, :cond_4b

    .line 1946
    iget-object v6, v6, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    if-eqz v6, :cond_4b

    .line 1948
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v6, v6, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://stats.coronalabs.com"

    .line 1949
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4a

    const-string v7, "https://monetize-api.coronalabs.com"

    .line 1950
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4a

    const-string v7, "https://api.intercom.io"

    .line 1951
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    goto :goto_2f

    .line 1956
    :cond_48
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1959
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_30

    .line 1963
    :cond_49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_30

    :cond_4a
    :goto_2f
    move-object v6, v5

    const/4 v5, 0x0

    goto :goto_31

    :cond_4b
    :goto_30
    move-object v6, v5

    const/4 v5, 0x1

    :goto_31
    if-eqz v5, :cond_4c

    .line 1969
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lnetwork/NetworkRequest;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32

    :cond_4c
    const/4 v5, 0x0

    :goto_32
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v5

    const-string v5, "Exception during request: %s"

    .line 1972
    invoke-static {v5, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1973
    iget-object v5, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    .line 1974
    iget-object v4, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-object v6, v4, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    const-string v5, "errorMessage"

    .line 1975
    invoke-virtual {v4, v5, v6}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, v19

    .line 1981
    :goto_33
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v6, v6, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4d

    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v6, v6, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    if-nez v6, :cond_4d

    .line 1983
    iget-object v6, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-object v3, v6, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 1984
    iput-object v2, v6, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 1988
    :cond_4d
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget v2, v2, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_4e

    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget v2, v2, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_4e

    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1990
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1993
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestParameters;->successNotificationSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v2, :cond_4e

    .line 1996
    new-instance v2, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 1997
    iget-object v3, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v3, v3, Lnetwork/NetworkRequest$NetworkRequestParameters;->successNotificationSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 1998
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 1999
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTimestamp(Ljava/util/Date;)V

    .line 2000
    invoke-virtual {v2, v3}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 2004
    :cond_4e
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const-string v3, "ended"

    iput-object v3, v2, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 2005
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v3, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    if-ne v2, v3, :cond_4f

    .line 2010
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-wide v4, v2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 2011
    iput-wide v9, v2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 2013
    :cond_4f
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v2, :cond_50

    .line 2015
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    iget-object v3, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z

    .line 2018
    :cond_50
    iget-object v2, v1, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->connectionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
