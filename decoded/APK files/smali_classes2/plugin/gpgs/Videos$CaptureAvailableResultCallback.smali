.class Lplugin/gpgs/Videos$CaptureAvailableResultCallback;
.super Ljava/lang/Object;
.source "Videos.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAvailableResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
        ">;"
    }
.end annotation


# instance fields
.field private luaListener:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lplugin/gpgs/Videos;


# direct methods
.method constructor <init>(Lplugin/gpgs/Videos;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;->this$0:Lplugin/gpgs/Videos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;->name:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 216
    check-cast p1, Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;->onResult(Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;)V
    .locals 5

    .line 227
    iget-object v0, p0, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 228
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 229
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 234
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;->isAvailable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isAvailable"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_1
    iget-object p1, p0, Lplugin/gpgs/Videos$CaptureAvailableResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
