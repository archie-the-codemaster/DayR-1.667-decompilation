.class public Lcom/ansca/corona/input/InputDeviceMonitor;
.super Ljava/lang/Object;
.source "InputDeviceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16;,
        Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9;,
        Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;,
        Lcom/ansca/corona/input/InputDeviceMonitor$Listener;
    }
.end annotation


# instance fields
.field private fContext:Landroid/content/Context;

.field private fEventHandler:Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

.field private fIsRunning:Z

.field private fListener:Lcom/ansca/corona/input/InputDeviceMonitor$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fListener:Lcom/ansca/corona/input/InputDeviceMonitor$Listener;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fIsRunning:Z

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 86
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16;->createEventHandlerWith(Lcom/ansca/corona/input/InputDeviceMonitor;)Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fEventHandler:Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    goto :goto_0

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 89
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel9;->createEventHandlerWith(Lcom/ansca/corona/input/InputDeviceMonitor;)Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fEventHandler:Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    goto :goto_0

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fEventHandler:Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    :goto_0
    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lcom/ansca/corona/input/InputDeviceMonitor;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->onInputDeviceConnected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/ansca/corona/input/InputDeviceMonitor;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->onInputDeviceDisconnected(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/ansca/corona/input/InputDeviceMonitor;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->onInputDeviceReconfigured(I)V

    return-void
.end method

.method private onInputDeviceConnected(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fListener:Lcom/ansca/corona/input/InputDeviceMonitor$Listener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor$Listener;->onInputDeviceConnected(I)V

    :cond_0
    return-void
.end method

.method private onInputDeviceDisconnected(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fListener:Lcom/ansca/corona/input/InputDeviceMonitor$Listener;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor$Listener;->onInputDeviceDisconnected(I)V

    :cond_0
    return-void
.end method

.method private onInputDeviceReconfigured(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fListener:Lcom/ansca/corona/input/InputDeviceMonitor$Listener;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor$Listener;->onInputDeviceReconfigured(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canMonitorDevices()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fEventHandler:Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fContext:Landroid/content/Context;

    return-object v0
.end method

.method public getListener()Lcom/ansca/corona/input/InputDeviceMonitor$Listener;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fListener:Lcom/ansca/corona/input/InputDeviceMonitor$Listener;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fIsRunning:Z

    return v0
.end method

.method public setListener(Lcom/ansca/corona/input/InputDeviceMonitor$Listener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fListener:Lcom/ansca/corona/input/InputDeviceMonitor$Listener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fIsRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fEventHandler:Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;->subscribe()V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fIsRunning:Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fEventHandler:Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;->unsubscribe()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor;->fIsRunning:Z

    :cond_1
    return-void
.end method
