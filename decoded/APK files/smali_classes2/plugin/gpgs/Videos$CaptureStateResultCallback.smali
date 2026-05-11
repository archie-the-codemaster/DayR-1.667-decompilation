.class Lplugin/gpgs/Videos$CaptureStateResultCallback;
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
    name = "CaptureStateResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
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

    .line 269
    iput-object p1, p0, Lplugin/gpgs/Videos$CaptureStateResultCallback;->this$0:Lplugin/gpgs/Videos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lplugin/gpgs/Videos$CaptureStateResultCallback;->name:Ljava/lang/String;

    .line 271
    iput-object p3, p0, Lplugin/gpgs/Videos$CaptureStateResultCallback;->luaListener:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 265
    check-cast p1, Lcom/google/android/gms/games/video/Videos$CaptureStateResult;

    invoke-virtual {p0, p1}, Lplugin/gpgs/Videos$CaptureStateResultCallback;->onResult(Lcom/google/android/gms/games/video/Videos$CaptureStateResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/video/Videos$CaptureStateResult;)V
    .locals 5

    .line 276
    iget-object v0, p0, Lplugin/gpgs/Videos$CaptureStateResultCallback;->name:Ljava/lang/String;

    invoke-static {v0}, Lplugin/gpgs/Utils;->newEvent(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 277
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureStateResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 278
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isError"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 280
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureStateResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureStateResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 283
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureStateResult;->getCaptureState()Lcom/google/android/gms/games/video/CaptureState;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lcom/google/android/gms/games/video/CaptureState;->getCaptureMode()I

    move-result v1

    const-string v3, "unknown"

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    const-string v1, "stream"

    goto :goto_1

    :cond_3
    const-string v1, "file"

    :goto_1
    const-string v4, "mode"

    .line 295
    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p1}, Lcom/google/android/gms/games/video/CaptureState;->getCaptureQuality()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "fullhd"

    goto :goto_2

    :cond_5
    const-string v3, "xhd"

    goto :goto_2

    :cond_6
    const-string v3, "hd"

    goto :goto_2

    :cond_7
    const-string v3, "sd"

    :goto_2
    const-string v1, "quality"

    .line 313
    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p1}, Lcom/google/android/gms/games/video/CaptureState;->isCapturing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isCapturing"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p1}, Lcom/google/android/gms/games/video/CaptureState;->isOverlayVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isOverlayVisible"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {p1}, Lcom/google/android/gms/games/video/CaptureState;->isPaused()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isPaused"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_3
    iget-object p1, p0, Lplugin/gpgs/Videos$CaptureStateResultCallback;->luaListener:Ljava/lang/Integer;

    invoke-static {p1, v0, v2}, Lplugin/gpgs/Utils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V

    return-void
.end method
