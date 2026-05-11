.class public Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;
.super Ljava/lang/Object;
.source "InputDeviceStatusEventInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceStatusEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private fHasConnectionStateChanged:Z

.field private fWasReconfigured:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->fHasConnectionStateChanged:Z

    .line 74
    iput-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->fWasReconfigured:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;
    .locals 1

    .line 85
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->clone()Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;

    move-result-object v0

    return-object v0
.end method

.method public hasConnectionStateChanged()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->fHasConnectionStateChanged:Z

    return v0
.end method

.method public setHasConnectionStateChanged(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->fHasConnectionStateChanged:Z

    return-void
.end method

.method public setWasReconfigured(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->fWasReconfigured:Z

    return-void
.end method

.method public wasReconfigured()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceStatusEventInfo$Settings;->fWasReconfigured:Z

    return v0
.end method
