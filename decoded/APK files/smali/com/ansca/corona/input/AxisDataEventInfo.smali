.class public Lcom/ansca/corona/input/AxisDataEventInfo;
.super Ljava/lang/Object;
.source "AxisDataEventInfo.java"


# instance fields
.field private fAxisIndex:I

.field private fDataPoint:Lcom/ansca/corona/input/AxisDataPoint;

.field private fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceInfo;ILcom/ansca/corona/input/AxisDataPoint;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 40
    iput-object p1, p0, Lcom/ansca/corona/input/AxisDataEventInfo;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    .line 41
    iput p2, p0, Lcom/ansca/corona/input/AxisDataEventInfo;->fAxisIndex:I

    .line 42
    iput-object p3, p0, Lcom/ansca/corona/input/AxisDataEventInfo;->fDataPoint:Lcom/ansca/corona/input/AxisDataPoint;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getAxisIndex()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/ansca/corona/input/AxisDataEventInfo;->fAxisIndex:I

    return v0
.end method

.method public getDataPoint()Lcom/ansca/corona/input/AxisDataPoint;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ansca/corona/input/AxisDataEventInfo;->fDataPoint:Lcom/ansca/corona/input/AxisDataPoint;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ansca/corona/input/AxisDataEventInfo;->fDeviceInfo:Lcom/ansca/corona/input/InputDeviceInfo;

    return-object v0
.end method
