.class public interface abstract Lcom/ansca/corona/input/InputDeviceMonitor$Listener;
.super Ljava/lang/Object;
.source "InputDeviceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onInputDeviceConnected(I)V
.end method

.method public abstract onInputDeviceDisconnected(I)V
.end method

.method public abstract onInputDeviceReconfigured(I)V
.end method
