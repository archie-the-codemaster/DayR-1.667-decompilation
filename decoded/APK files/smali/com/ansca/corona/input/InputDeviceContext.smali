.class public Lcom/ansca/corona/input/InputDeviceContext;
.super Ljava/lang/Object;
.source "InputDeviceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;,
        Lcom/ansca/corona/input/InputDeviceContext$OnAxisDataReceivedListener;,
        Lcom/ansca/corona/input/InputDeviceContext$OnStatusChangedListener;,
        Lcom/ansca/corona/input/InputDeviceContext$Listener;
    }
.end annotation


# instance fields
.field private fAxisData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/input/AxisDataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private fAxisEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/AxisDataEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fConnectionState:Lcom/ansca/corona/input/ConnectionState;

.field private fCoronaDeviceId:I

.field private fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

.field private fIsConnected:Z

.field private fListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/InputDeviceContext$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

.field private fVibrateRequestHandler:Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;


# direct methods
.method constructor <init>(ILcom/ansca/corona/input/InputDeviceInfo;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 136
    iput p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fCoronaDeviceId:I

    .line 137
    iput-object p2, p0, Lcom/ansca/corona/input/InputDeviceContext;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fIsConnected:Z

    .line 139
    sget-object p1, Lcom/ansca/corona/input/ConnectionState;->DISCONNECTED:Lcom/ansca/corona/input/ConnectionState;

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fConnectionState:Lcom/ansca/corona/input/ConnectionState;

    .line 140
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisData:Ljava/util/HashMap;

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisEvents:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fVibrateRequestHandler:Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;

    .line 143
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ansca/corona/input/InputDeviceContext;->fListeners:Ljava/util/ArrayList;

    .line 144
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    return-void

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/ansca/corona/input/InputDeviceContext$Listener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 498
    monitor-exit p0

    return-void

    .line 502
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 503
    monitor-exit p0

    return-void

    .line 507
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beginUpdate()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    return-void
.end method

.method public endUpdate()V
    .locals 9

    .line 229
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 236
    iput-object v1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    .line 239
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 240
    :goto_0
    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->hasConnectionStateChanged()Z

    move-result v2

    .line 241
    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->wasReconfigured()Z

    move-result v3

    or-int/2addr v2, v3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    return-void

    .line 249
    :cond_2
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 253
    iget-object v4, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v4, p0, Lcom/ansca/corona/input/InputDeviceContext;->fListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 258
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 262
    new-instance v5, Lcom/ansca/corona/input/InputDeviceStatusEventInfo;

    invoke-direct {v5, v0}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo;-><init>(Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;)V

    .line 263
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/input/InputDeviceContext$Listener;

    if-eqz v2, :cond_4

    .line 265
    instance-of v6, v4, Lcom/ansca/corona/input/InputDeviceContext$OnStatusChangedListener;

    if-eqz v6, :cond_4

    .line 266
    move-object v6, v4

    check-cast v6, Lcom/ansca/corona/input/InputDeviceContext$OnStatusChangedListener;

    invoke-interface {v6, p0, v5}, Lcom/ansca/corona/input/InputDeviceContext$OnStatusChangedListener;->onStatusChanged(Lcom/ansca/corona/input/InputDeviceContext;Lcom/ansca/corona/input/InputDeviceStatusEventInfo;)V

    :cond_4
    if-eqz v1, :cond_3

    .line 270
    instance-of v6, v4, Lcom/ansca/corona/input/InputDeviceContext$OnAxisDataReceivedListener;

    if-eqz v6, :cond_3

    .line 271
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ansca/corona/input/AxisDataEventInfo;

    .line 272
    move-object v8, v4

    check-cast v8, Lcom/ansca/corona/input/InputDeviceContext$OnAxisDataReceivedListener;

    invoke-interface {v8, p0, v7}, Lcom/ansca/corona/input/InputDeviceContext$OnAxisDataReceivedListener;->onAxisDataReceived(Lcom/ansca/corona/input/InputDeviceContext;Lcom/ansca/corona/input/AxisDataEventInfo;)V

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 258
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized getAxisDataByIndex(I)Lcom/ansca/corona/input/AxisDataPoint;
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/input/AxisDataPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConnectionState()Lcom/ansca/corona/input/ConnectionState;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fConnectionState:Lcom/ansca/corona/input/ConnectionState;

    return-object v0
.end method

.method public getCoronaDeviceId()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fCoronaDeviceId:I

    return v0
.end method

.method public getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    return-object v0
.end method

.method public getVibrateRequestHandler()Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fVibrateRequestHandler:Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fConnectionState:Lcom/ansca/corona/input/ConnectionState;

    invoke-virtual {v0}, Lcom/ansca/corona/input/ConnectionState;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isUpdating()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized removeListener(Lcom/ansca/corona/input/InputDeviceContext$Listener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 521
    monitor-exit p0

    return-void

    .line 525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVibrateRequestHandler(Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fVibrateRequestHandler:Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;

    return-void
.end method

.method public update(ILcom/ansca/corona/input/AxisDataPoint;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->getAxes()Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->getByIndex(I)Lcom/ansca/corona/input/AxisInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 403
    :cond_1
    invoke-virtual {p2}, Lcom/ansca/corona/input/AxisDataPoint;->getValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisInfo;->getMaxValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 404
    new-instance v1, Lcom/ansca/corona/input/AxisDataPoint;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisInfo;->getMaxValue()F

    move-result v2

    invoke-virtual {p2}, Lcom/ansca/corona/input/AxisDataPoint;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/ansca/corona/input/AxisDataPoint;-><init>(FJ)V

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p2}, Lcom/ansca/corona/input/AxisDataPoint;->getValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisInfo;->getMinValue()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 407
    new-instance v1, Lcom/ansca/corona/input/AxisDataPoint;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisInfo;->getMinValue()F

    move-result v2

    invoke-virtual {p2}, Lcom/ansca/corona/input/AxisDataPoint;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/ansca/corona/input/AxisDataPoint;-><init>(FJ)V

    goto :goto_0

    :cond_3
    move-object v1, p2

    .line 411
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisData:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/AxisDataPoint;

    .line 415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_5

    .line 417
    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisInfo;->getAccuracy()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_4

    const v0, 0x3c23d70a    # 0.01f

    .line 421
    :cond_4
    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisDataPoint;->getValue()F

    move-result v3

    invoke-virtual {v2}, Lcom/ansca/corona/input/AxisDataPoint;->getValue()F

    move-result v4

    add-float/2addr v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 422
    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisDataPoint;->getValue()F

    move-result v3

    invoke-virtual {v2}, Lcom/ansca/corona/input/AxisDataPoint;->getValue()F

    move-result v2

    sub-float/2addr v2, v0

    cmpl-float v0, v3, v2

    if-lez v0, :cond_5

    return-void

    .line 429
    :cond_5
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_6

    .line 431
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->beginUpdate()V

    .line 435
    :cond_6
    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisData:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object p2, p0, Lcom/ansca/corona/input/InputDeviceContext;->fAxisEvents:Ljava/util/ArrayList;

    new-instance v2, Lcom/ansca/corona/input/AxisDataEventInfo;

    iget-object v3, p0, Lcom/ansca/corona/input/InputDeviceContext;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    invoke-direct {v2, v3, p1, v1}, Lcom/ansca/corona/input/AxisDataEventInfo;-><init>(Lcom/ansca/corona/input/InputDeviceInfo;ILcom/ansca/corona/input/AxisDataPoint;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    .line 442
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->endUpdate()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 438
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 415
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public update(Lcom/ansca/corona/input/ConnectionState;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 299
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fConnectionState:Lcom/ansca/corona/input/ConnectionState;

    if-ne p1, v0, :cond_0

    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fConnectionState:Lcom/ansca/corona/input/ConnectionState;

    .line 307
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->isUpdating()Z

    move-result p1

    if-nez p1, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->beginUpdate()V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->setHasConnectionStateChanged(Z)V

    if-nez p1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->endUpdate()V

    :cond_2
    return-void

    .line 295
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method update(Lcom/ansca/corona/input/InputDeviceInfo;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 358
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/InputDeviceInfo;->equals(Lcom/ansca/corona/input/InputDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceContext;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    .line 366
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->isUpdating()Z

    move-result p1

    if-nez p1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->beginUpdate()V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fStatusEventSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->setWasReconfigured(Z)V

    if-nez p1, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceContext;->endUpdate()V

    :cond_2
    return-void

    .line 354
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public update(Lcom/ansca/corona/input/InputDeviceSettings;)V
    .locals 0

    .line 335
    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceInfo;->from(Lcom/ansca/corona/input/InputDeviceSettings;)Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/InputDeviceContext;->update(Lcom/ansca/corona/input/InputDeviceInfo;)V

    return-void
.end method

.method public vibrate()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceInfo;->canVibrate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceContext;->fVibrateRequestHandler:Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 484
    invoke-interface {v0, p0, v1}, Lcom/ansca/corona/input/InputDeviceContext$VibrateRequestHandler;->onHandleVibrateRequest(Lcom/ansca/corona/input/InputDeviceContext;Lcom/ansca/corona/input/VibrationSettings;)V

    :cond_1
    return-void
.end method
