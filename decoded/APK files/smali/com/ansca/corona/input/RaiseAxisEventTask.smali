.class public Lcom/ansca/corona/input/RaiseAxisEventTask;
.super Ljava/lang/Object;
.source "RaiseAxisEventTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fDataEventInfo:Lcom/ansca/corona/input/AxisDataEventInfo;

.field private fDevice:Lcom/ansca/corona/input/InputDeviceInterface;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/AxisDataEventInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    iput-object p1, p0, Lcom/ansca/corona/input/RaiseAxisEventTask;->fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

    .line 38
    iput-object p2, p0, Lcom/ansca/corona/input/RaiseAxisEventTask;->fDataEventInfo:Lcom/ansca/corona/input/AxisDataEventInfo;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/ansca/corona/input/RaiseAxisEventTask;->fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

    iget-object v1, p0, Lcom/ansca/corona/input/RaiseAxisEventTask;->fDataEventInfo:Lcom/ansca/corona/input/AxisDataEventInfo;

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->axisEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/AxisDataEventInfo;)V

    return-void
.end method
