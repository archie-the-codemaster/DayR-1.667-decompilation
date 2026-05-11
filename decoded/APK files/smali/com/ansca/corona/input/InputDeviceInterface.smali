.class public Lcom/ansca/corona/input/InputDeviceInterface;
.super Ljava/lang/Object;
.source "InputDeviceInterface.java"


# instance fields
.field private fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;


# direct methods
.method constructor <init>(Lcom/ansca/corona/input/InputDeviceContext;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceInterface;->fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getConnectionState()Lcom/ansca/corona/input/ConnectionState;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterface;->fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceContext;->getConnectionState()Lcom/ansca/corona/input/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method getContext()Lcom/ansca/corona/input/InputDeviceContext;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterface;->fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;

    return-object v0
.end method

.method public getCoronaDeviceId()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterface;->fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceContext;->getCoronaDeviceId()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterface;->fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceContext;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterface;->fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceContext;->isConnected()Z

    move-result v0

    return v0
.end method

.method public vibrate()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterface;->fDeviceContext:Lcom/ansca/corona/input/InputDeviceContext;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceContext;->vibrate()V

    return-void
.end method
