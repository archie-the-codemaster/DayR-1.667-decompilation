.class Lnetwork/NetworkRequest$NetworkRequestState;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestState"
.end annotation


# instance fields
.field public bytesEstimated:J

.field public bytesTransferred:J

.field public debugValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isError:Ljava/lang/Boolean;

.field public isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public name:Ljava/lang/String;

.field public phase:Ljava/lang/String;

.field public response:Ljava/lang/Object;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public responseType:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lnetwork/NetworkRequest;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .line 363
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 349
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    const-string v0, "networkRequest"

    .line 350
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    const-string v0, "began"

    .line 351
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    const/4 v0, -0x1

    .line 352
    iput v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 354
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    const-string v1, "text"

    .line 355
    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 356
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 357
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, 0x0

    .line 358
    iput-wide v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 359
    iput-wide v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 360
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    .line 364
    iput-object p2, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 365
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 367
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    .line 370
    iget-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    const-string p2, "isDebug"

    const-string p3, "true"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestState;)V
    .locals 2

    .line 375
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 349
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    const-string p1, "networkRequest"

    .line 350
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    const-string p1, "began"

    .line 351
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    const/4 p1, -0x1

    .line 352
    iput p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    const-string v0, "text"

    .line 355
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 356
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 357
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 358
    iput-wide v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 359
    iput-wide v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 360
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    .line 376
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    .line 377
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    .line 378
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 379
    iget p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    iput p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    .line 380
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    .line 381
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    .line 382
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 383
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 384
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 385
    iget-wide v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    iput-wide v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 386
    iget-wide v0, p2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    iput-wide v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 387
    iget-object p1, p2, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public push(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    .line 400
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    .line 402
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v1, "isError"

    .line 403
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 405
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "name"

    .line 406
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 408
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "phase"

    .line 409
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 411
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    const-string v1, "requestId"

    .line 412
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 414
    iget v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    int-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v1, "status"

    .line 415
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 417
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "url"

    .line 418
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 420
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 422
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 423
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    .line 427
    iget-object v4, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, "HTTP-STATUS-LINE"

    :cond_0
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const-string v8, "Processing header: %s"

    .line 435
    invoke-static {v8, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lnetwork/NetworkRequest;->access$000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 438
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1, v1, v6}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "responseHeaders"

    .line 442
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 445
    :cond_2
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 447
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "responseType"

    .line 448
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 452
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 454
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 456
    :cond_3
    instance-of v4, v1, [B

    if-eqz v4, :cond_4

    .line 458
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString([B)V

    goto :goto_1

    .line 460
    :cond_4
    instance-of v4, v1, Lnetwork/NetworkRequest$CoronaFileSpec;

    if-eqz v4, :cond_5

    .line 462
    check-cast v1, Lnetwork/NetworkRequest$CoronaFileSpec;

    const/4 v4, 0x3

    .line 464
    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 465
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v4

    .line 467
    iget-object v5, v1, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v5, "filename"

    .line 468
    invoke-virtual {p1, v4, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 470
    iget-object v5, v1, Lnetwork/NetworkRequest$CoronaFileSpec;->baseDirectory:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v5, "baseDirectory"

    .line 471
    invoke-virtual {p1, v4, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 473
    iget-object v1, v1, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "fullPath"

    .line 474
    invoke-virtual {p1, v4, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_5
    :goto_1
    const-string v1, "response"

    .line 477
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 480
    :cond_6
    iget-wide v4, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    long-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v1, "bytesTransferred"

    .line 481
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 483
    iget-wide v4, p0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    long-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v1, "bytesEstimated"

    .line 484
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 486
    iget-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 488
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 489
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    .line 493
    iget-object v4, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 495
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 496
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v3

    aput-object v5, v7, v2

    const-string v8, "Writing debug value - %s: %s"

    .line 498
    invoke-static {v8, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1, v1, v6}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v1, "debug"

    .line 504
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_8
    return v2
.end method

.method public setDebugValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestState;->debugValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
