.class public Lcom/ansca/corona/input/AxisInfo;
.super Ljava/lang/Object;
.source "AxisInfo.java"


# instance fields
.field private fSettings:Lcom/ansca/corona/input/AxisSettings;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/input/AxisSettings;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/ansca/corona/input/AxisSettings;->clone()Lcom/ansca/corona/input/AxisSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static from(Lcom/ansca/corona/input/AxisSettings;)Lcom/ansca/corona/input/AxisInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Lcom/ansca/corona/input/AxisInfo;

    invoke-direct {v0, p0}, Lcom/ansca/corona/input/AxisInfo;-><init>(Lcom/ansca/corona/input/AxisSettings;)V

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/ansca/corona/input/AxisInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    iget-object p1, p1, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/AxisSettings;->equals(Lcom/ansca/corona/input/AxisSettings;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 106
    instance-of v0, p1, Lcom/ansca/corona/input/AxisInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    check-cast p1, Lcom/ansca/corona/input/AxisInfo;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/AxisInfo;->equals(Lcom/ansca/corona/input/AxisInfo;)Z

    move-result p1

    return p1
.end method

.method public getAccuracy()F
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisSettings;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisSettings;->getMaxValue()F

    move-result v0

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisSettings;->getMinValue()F

    move-result v0

    return v0
.end method

.method public getType()Lcom/ansca/corona/input/AxisType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisSettings;->getType()Lcom/ansca/corona/input/AxisType;

    move-result-object v0

    return-object v0
.end method

.method public isProvidingAbsoluteValues()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfo;->fSettings:Lcom/ansca/corona/input/AxisSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisSettings;->isProvidingAbsoluteValues()Z

    move-result v0

    return v0
.end method
