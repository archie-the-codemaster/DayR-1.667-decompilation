.class public Lcom/ansca/corona/input/AxisSettings;
.super Ljava/lang/Object;
.source "AxisSettings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private fAccuracy:F

.field private fIsProvidingAbsoluteValues:Z

.field private fMaxValue:F

.field private fMinValue:F

.field private fType:Lcom/ansca/corona/input/AxisType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/ansca/corona/input/AxisType;->UNKNOWN:Lcom/ansca/corona/input/AxisType;

    iput-object v0, p0, Lcom/ansca/corona/input/AxisSettings;->fType:Lcom/ansca/corona/input/AxisType;

    const/high16 v0, -0x40800000    # -1.0f

    .line 39
    iput v0, p0, Lcom/ansca/corona/input/AxisSettings;->fMinValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/ansca/corona/input/AxisSettings;->fMaxValue:F

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/ansca/corona/input/AxisSettings;->fAccuracy:F

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/ansca/corona/input/AxisSettings;->fIsProvidingAbsoluteValues:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/input/AxisSettings;
    .locals 1

    .line 53
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/AxisSettings;
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

    .line 19
    invoke-virtual {p0}, Lcom/ansca/corona/input/AxisSettings;->clone()Lcom/ansca/corona/input/AxisSettings;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/ansca/corona/input/AxisSettings;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 174
    :cond_0
    iget-object v1, p1, Lcom/ansca/corona/input/AxisSettings;->fType:Lcom/ansca/corona/input/AxisType;

    iget-object v2, p0, Lcom/ansca/corona/input/AxisSettings;->fType:Lcom/ansca/corona/input/AxisType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/ansca/corona/input/AxisSettings;->fMinValue:F

    iget v2, p0, Lcom/ansca/corona/input/AxisSettings;->fMinValue:F

    sub-float/2addr v1, v2

    .line 175
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, p1, Lcom/ansca/corona/input/AxisSettings;->fMaxValue:F

    iget v3, p0, Lcom/ansca/corona/input/AxisSettings;->fMaxValue:F

    sub-float/2addr v1, v3

    .line 176
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, p1, Lcom/ansca/corona/input/AxisSettings;->fAccuracy:F

    iget v3, p0, Lcom/ansca/corona/input/AxisSettings;->fAccuracy:F

    sub-float/2addr v1, v3

    .line 177
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-boolean p1, p1, Lcom/ansca/corona/input/AxisSettings;->fIsProvidingAbsoluteValues:Z

    iget-boolean v1, p0, Lcom/ansca/corona/input/AxisSettings;->fIsProvidingAbsoluteValues:Z

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 198
    instance-of v0, p1, Lcom/ansca/corona/input/AxisSettings;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 201
    :cond_0
    check-cast p1, Lcom/ansca/corona/input/AxisSettings;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/AxisSettings;->equals(Lcom/ansca/corona/input/AxisSettings;)Z

    move-result p1

    return p1
.end method

.method public getAccuracy()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/ansca/corona/input/AxisSettings;->fAccuracy:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/ansca/corona/input/AxisSettings;->fMaxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/ansca/corona/input/AxisSettings;->fMinValue:F

    return v0
.end method

.method public getType()Lcom/ansca/corona/input/AxisType;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ansca/corona/input/AxisSettings;->fType:Lcom/ansca/corona/input/AxisType;

    return-object v0
.end method

.method public isProvidingAbsoluteValues()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/ansca/corona/input/AxisSettings;->fIsProvidingAbsoluteValues:Z

    return v0
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/ansca/corona/input/AxisSettings;->fAccuracy:F

    return-void
.end method

.method public setIsProvidingAbsoluteValues(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/ansca/corona/input/AxisSettings;->fIsProvidingAbsoluteValues:Z

    return-void
.end method

.method public setMaxValue(F)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/ansca/corona/input/AxisSettings;->fMaxValue:F

    return-void
.end method

.method public setMinValue(F)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/ansca/corona/input/AxisSettings;->fMinValue:F

    return-void
.end method

.method public setType(Lcom/ansca/corona/input/AxisType;)V
    .locals 0

    if-nez p1, :cond_0

    .line 75
    sget-object p1, Lcom/ansca/corona/input/AxisType;->UNKNOWN:Lcom/ansca/corona/input/AxisType;

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/AxisSettings;->fType:Lcom/ansca/corona/input/AxisType;

    return-void
.end method
