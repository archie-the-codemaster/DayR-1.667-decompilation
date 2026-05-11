.class public Lcom/ansca/corona/input/InputDeviceStatusEventInfo;
.super Ljava/lang/Object;
.source "InputDeviceStatusEventInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;
    }
.end annotation


# instance fields
.field private fSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->clone()Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo;->fSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public hasConnectionStateChanged()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo;->fSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->hasConnectionStateChanged()Z

    move-result v0

    return v0
.end method

.method public wasReconfigured()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo;->fSettings:Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->wasReconfigured()Z

    move-result v0

    return v0
.end method
