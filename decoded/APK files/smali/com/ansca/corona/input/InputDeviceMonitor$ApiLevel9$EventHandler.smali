.class Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;
.super Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;
.source "InputDeviceMonitor.java"

# interfaces
.implements Lcom/ansca/corona/MessageBasedTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private fLastAndroidDeviceIdArray:[I

.field private fTimer:Lcom/ansca/corona/MessageBasedTimer;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceMonitor;)V
    .locals 2

    .line 307
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;-><init>(Lcom/ansca/corona/input/InputDeviceMonitor;)V

    .line 310
    new-instance p1, Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {p1}, Lcom/ansca/corona/MessageBasedTimer;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    .line 311
    iget-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/MessageBasedTimer;->setHandler(Landroid/os/Handler;)V

    .line 312
    iget-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/TimeSpan;->fromSeconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/MessageBasedTimer;->setInterval(Lcom/ansca/corona/TimeSpan;)V

    .line 313
    iget-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {p1, p0}, Lcom/ansca/corona/MessageBasedTimer;->setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 314
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fLastAndroidDeviceIdArray:[I

    return-void
.end method


# virtual methods
.method public onTimerElapsed()V
    .locals 10

    .line 354
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 360
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    aget v5, v0, v3

    .line 362
    iget-object v6, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fLastAndroidDeviceIdArray:[I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, v6, v8

    if-ne v5, v9, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->getDeviceMonitor()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/ansca/corona/input/InputDeviceMonitor;->access$000(Lcom/ansca/corona/input/InputDeviceMonitor;I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 376
    :cond_4
    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fLastAndroidDeviceIdArray:[I

    array-length v3, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_8

    aget v6, v2, v5

    .line 378
    array-length v7, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_6

    aget v9, v0, v8

    if-ne v9, v6, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_7

    .line 387
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->getDeviceMonitor()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/ansca/corona/input/InputDeviceMonitor;->access$100(Lcom/ansca/corona/input/InputDeviceMonitor;I)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 392
    :cond_8
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fLastAndroidDeviceIdArray:[I

    return-void
.end method

.method public subscribe()V
    .locals 1

    .line 326
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fLastAndroidDeviceIdArray:[I

    .line 327
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fLastAndroidDeviceIdArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 328
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fLastAndroidDeviceIdArray:[I

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->start()V

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9$EventHandler;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    return-void
.end method
