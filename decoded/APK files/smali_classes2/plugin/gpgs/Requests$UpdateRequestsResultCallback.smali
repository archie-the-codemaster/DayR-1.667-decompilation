.class Lplugin/gpgs/Requests$UpdateRequestsResultCallback;
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
    name = "UpdateRequestsResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
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

    .line 430
    iput-object p1, p0, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;->this$0:Lplugin/gpgs/Requests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;->name:Ljava/lang/String;

    .line 432
    iput-object p3, p0, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 426
    check-cast p1, Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;->onResult(Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;)V
    .locals 7

    .line 437
    iget-object v0, p0, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 438
    invoke-interface {p1}, Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 439
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isError"

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 441
    invoke-interface {p1}, Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-interface {p1}, Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 444
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 445
    invoke-interface {p1}, Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;->getRequestIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 446
    invoke-interface {p1, v5}, Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;->getRequestOutcome(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string p1, "request"

    .line 448
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :goto_3
    iget-object p1, p0, Lplugin/gpgs/Requests$UpdateRequestsResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v3}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
