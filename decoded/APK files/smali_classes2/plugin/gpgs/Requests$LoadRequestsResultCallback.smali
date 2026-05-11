.class Lplugin/gpgs/Requests$LoadRequestsResultCallback;
.super Ljava/lang/Object;
.source "Requests.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Requests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRequestsResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Requests;


# direct methods
.method constructor <init>(Lplugin/gpgs/Requests;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lplugin/gpgs/Requests$LoadRequestsResultCallback;->this$0:Lplugin/gpgs/Requests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lplugin/gpgs/Requests$LoadRequestsResultCallback;->name:Ljava/lang/String;

    .line 393
    iput-object p3, p0, Lplugin/gpgs/Requests$LoadRequestsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 387
    check-cast p1, Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Requests$LoadRequestsResultCallback;->onResult(Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;)V
    .locals 8

    .line 398
    iget-object v0, p0, Lplugin/gpgs/Requests$LoadRequestsResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 399
    invoke-interface {p1}, Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 400
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 402
    invoke-interface {p1}, Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-interface {p1}, Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 405
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 408
    invoke-interface {p1, v2}, Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;->getRequests(I)Lcom/google/android/gms/games/request/GameRequestBuffer;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Lcom/google/android/gms/games/request/GameRequestBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/request/GameRequest;

    add-int/lit8 v7, v5, 0x1

    .line 410
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Lplugin/gpgs/Utils;->gameRequestToHashtable(Lcom/google/android/gms/games/request/GameRequest;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v7

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/games/request/GameRequestBuffer;->release()V

    const/4 v3, 0x2

    .line 414
    invoke-interface {p1, v3}, Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;->getRequests(I)Lcom/google/android/gms/games/request/GameRequestBuffer;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/request/GameRequest;

    add-int/lit8 v6, v5, 0x1

    .line 416
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Lplugin/gpgs/Utils;->gameRequestToHashtable(Lcom/google/android/gms/games/request/GameRequest;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    goto :goto_2

    .line 418
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->release()V

    const-string p1, "requests"

    .line 420
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :goto_3
    iget-object p1, p0, Lplugin/gpgs/Requests$LoadRequestsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
