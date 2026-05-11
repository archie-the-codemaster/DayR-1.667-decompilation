.class Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16;
.super Ljava/lang/Object;
.source "InputDeviceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel16"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEventHandlerWith(Lcom/ansca/corona/input/InputDeviceMonitor;)Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;
    .locals 1

    .line 415
    new-instance v0, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;

    invoke-direct {v0, p0}, Lcom/ansca/corona/input/InputDeviceMonitor$ApiLevel16$EventHandler;-><init>(Lcom/ansca/corona/input/InputDeviceMonitor;)V

    return-object v0
.end method
