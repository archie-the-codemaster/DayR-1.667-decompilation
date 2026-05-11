.class Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;
.super Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;
.source "InputDeviceMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private fHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceMonitor;)V
    .locals 1

    .line 438
    invoke-direct {p0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;-><init>(Lcom/ansca/corona/input/InputDeviceMonitor;)V

    .line 440
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->fHandler:Landroid/os/Handler;

    return-void
.end method

.method private getInputManager()Landroid/hardware/input/InputManager;
    .locals 2

    .line 475
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->getDeviceMonitor()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    check-cast v0, Landroid/hardware/input/InputManager;

    return-object v0
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->getDeviceMonitor()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->access$000(Lcom/ansca/corona/input/InputDeviceMonitor;I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->getDeviceMonitor()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->access$200(Lcom/ansca/corona/input/InputDeviceMonitor;I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->getDeviceMonitor()Lcom/ansca/corona/input/InputDeviceMonitor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ansca/corona/input/InputDeviceMonitor;->access$100(Lcom/ansca/corona/input/InputDeviceMonitor;I)V

    return-void
.end method

.method public subscribe()V
    .locals 2

    .line 450
    invoke-direct {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->getInputManager()Landroid/hardware/input/InputManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->fHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 463
    invoke-direct {p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;->getInputManager()Landroid/hardware/input/InputManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_0
    return-void
.end method
