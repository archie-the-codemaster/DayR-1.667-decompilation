.class abstract Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;
.super Ljava/lang/Object;
.source "InputDeviceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EventHandler"
.end annotation


# instance fields
.field private fDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceMonitor;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 232
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;->fDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

    return-void

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getDeviceMonitor()Lcom/ansca/corona/input/InputDeviceMonitor;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceMonitor$EventHandler;->fDeviceMonitor:Lcom/ansca/corona/input/InputDeviceMonitor;

    return-object v0
.end method

.method public abstract subscribe()V
.end method

.method public abstract unsubscribe()V
.end method
