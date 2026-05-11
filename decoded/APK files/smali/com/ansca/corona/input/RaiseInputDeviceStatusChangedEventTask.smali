.class public Lcom/ansca/corona/input/RaiseInputDeviceStatusChangedEventTask;
.super Ljava/lang/Object;
.source "RaiseInputDeviceStatusChangedEventTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

.field private fEventInfo:Lcom/ansca/corona/input/InputDeviceStatusEventInfo;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/InputDeviceStatusEventInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 39
    iput-object p1, p0, Lcom/ansca/corona/input/RaiseInputDeviceStatusChangedEventTask;->fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

    .line 40
    iput-object p2, p0, Lcom/ansca/corona/input/RaiseInputDeviceStatusChangedEventTask;->fEventInfo:Lcom/ansca/corona/input/InputDeviceStatusEventInfo;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/ansca/corona/input/RaiseInputDeviceStatusChangedEventTask;->fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

    iget-object v1, p0, Lcom/ansca/corona/input/RaiseInputDeviceStatusChangedEventTask;->fEventInfo:Lcom/ansca/corona/input/InputDeviceStatusEventInfo;

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->inputDeviceStatusEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/InputDeviceStatusEventInfo;)V

    return-void
.end method
