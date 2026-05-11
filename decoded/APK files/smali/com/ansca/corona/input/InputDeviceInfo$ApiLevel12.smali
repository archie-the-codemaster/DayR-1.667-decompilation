.class Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel12;
.super Ljava/lang/Object;
.source "InputDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel12"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAxisInfoFrom(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/AxisInfoCollection;
    .locals 7

    .line 601
    new-instance v0, Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/AxisInfoCollection;-><init>()V

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 604
    new-instance v1, Lcom/ansca/corona/input/AxisSettings;

    invoke-direct {v1}, Lcom/ansca/corona/input/AxisSettings;-><init>()V

    .line 605
    invoke-virtual {p0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 606
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v3

    invoke-virtual {p1}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 608
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v3

    invoke-static {v3}, Lcom/ansca/corona/input/AxisType;->fromAndroidIntegerId(I)Lcom/ansca/corona/input/AxisType;

    move-result-object v3

    const/4 v4, 0x1

    .line 612
    sget-object v5, Lcom/ansca/corona/input/AxisType;->VERTICAL_SCROLL:Lcom/ansca/corona/input/AxisType;

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    sget-object v5, Lcom/ansca/corona/input/AxisType;->HORIZONTAL_SCROLL:Lcom/ansca/corona/input/AxisType;

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 615
    :cond_1
    sget-object v5, Lcom/ansca/corona/input/InputDeviceType;->TRACKBALL:Lcom/ansca/corona/input/InputDeviceType;

    if-ne p1, v5, :cond_2

    .line 616
    sget-object v5, Lcom/ansca/corona/input/AxisType;->X:Lcom/ansca/corona/input/AxisType;

    if-eq v3, v5, :cond_3

    sget-object v5, Lcom/ansca/corona/input/AxisType;->Y:Lcom/ansca/corona/input/AxisType;

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    .line 622
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v3

    invoke-static {v3}, Lcom/ansca/corona/input/AxisType;->fromAndroidIntegerId(I)Lcom/ansca/corona/input/AxisType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ansca/corona/input/AxisSettings;->setType(Lcom/ansca/corona/input/AxisType;)V

    .line 623
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ansca/corona/input/AxisSettings;->setMinValue(F)V

    .line 624
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ansca/corona/input/AxisSettings;->setMaxValue(F)V

    .line 625
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getFuzz()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/input/AxisSettings;->setAccuracy(F)V

    .line 626
    invoke-virtual {v1, v6}, Lcom/ansca/corona/input/AxisSettings;->setIsProvidingAbsoluteValues(Z)V

    .line 627
    invoke-static {v1}, Lcom/ansca/corona/input/AxisInfo;->from(Lcom/ansca/corona/input/AxisSettings;)Lcom/ansca/corona/input/AxisInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ansca/corona/input/AxisInfoCollection;->add(Lcom/ansca/corona/input/AxisInfo;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getAxisSourcesFrom(Landroid/view/InputDevice;)Lcom/ansca/corona/input/InputDeviceTypeSet;
    .locals 2

    .line 579
    new-instance v0, Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;-><init>()V

    if-eqz p0, :cond_0

    .line 582
    invoke-virtual {p0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice$MotionRange;

    .line 583
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v1

    invoke-static {v1}, Lcom/ansca/corona/input/InputDeviceType;->fromAndroidSourceId(I)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/input/InputDeviceTypeSet;->add(Lcom/ansca/corona/input/InputDeviceType;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
