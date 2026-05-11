.class Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;
.super Ljava/lang/Object;
.source "InputDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel9"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDeviceInfoFor(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInfo;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    new-instance v1, Lcom/ansca/corona/input/InputDeviceInfo;

    invoke-direct {v1, v0}, Lcom/ansca/corona/input/InputDeviceInfo;-><init>(Lcom/ansca/corona/input/InputDeviceInfo$1;)V

    .line 538
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ansca/corona/input/InputDeviceInfo;->access$302(Lcom/ansca/corona/input/InputDeviceInfo;I)I

    .line 539
    invoke-static {v1, p1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$402(Lcom/ansca/corona/input/InputDeviceInfo;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceType;

    .line 540
    invoke-static {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$000(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/InputDeviceTypeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/InputDeviceTypeSet;->add(Lcom/ansca/corona/input/InputDeviceType;)V

    .line 541
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$502(Lcom/ansca/corona/input/InputDeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$602(Lcom/ansca/corona/input/InputDeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 544
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel16;->getPermanentStringIdFrom(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$702(Lcom/ansca/corona/input/InputDeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel16;->isVibrationSupportedFor(Landroid/view/InputDevice;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$802(Lcom/ansca/corona/input/InputDeviceInfo;Z)Z

    .line 547
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_2

    .line 548
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel19;->getControllerNumberFrom(Landroid/view/InputDevice;)I

    move-result p0

    invoke-static {v1, p0}, Lcom/ansca/corona/input/InputDeviceInfo;->access$902(Lcom/ansca/corona/input/InputDeviceInfo;I)I

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static fetchAndroidDeviceIds()[I
    .locals 1

    .line 403
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method public static fetchDeviceInfoFromAndroidDeviceId(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ansca/corona/input/InputDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p0, :cond_0

    return-object v0

    .line 430
    :cond_0
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 438
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    if-eqz v1, :cond_9

    .line 442
    invoke-static {v1}, Lcom/ansca/corona/input/InputDeviceType;->collectionFromAndroidSourcesBitField(I)Lcom/ansca/corona/input/InputDeviceTypeSet;

    move-result-object v2

    .line 448
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_2

    .line 449
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel12;->getAxisSourcesFrom(Landroid/view/InputDevice;)Lcom/ansca/corona/input/InputDeviceTypeSet;

    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->addAll(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 453
    :cond_2
    new-instance v3, Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-direct {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;-><init>()V

    :goto_0
    const/4 v5, 0x0

    .line 460
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 462
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->toAndroidSourcesBitField()I

    move-result v5

    .line 463
    invoke-static {v5}, Lcom/ansca/corona/input/InputDeviceType;->fromAndroidSourceId(I)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v5

    .line 464
    invoke-virtual {v3, v5}, Lcom/ansca/corona/input/InputDeviceTypeSet;->remove(Lcom/ansca/corona/input/InputDeviceType;)Z

    goto :goto_1

    .line 466
    :cond_3
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->size()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 468
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ansca/corona/input/InputDeviceType;

    .line 469
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->clear()V

    :cond_4
    :goto_1
    if-nez v5, :cond_5

    .line 474
    invoke-static {v1}, Lcom/ansca/corona/input/InputDeviceType;->fromAndroidSourceId(I)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v5

    .line 476
    :cond_5
    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->removeAll(Ljava/lang/Iterable;)Z

    .line 481
    sget-object v1, Lcom/ansca/corona/input/InputDeviceType;->KEYBOARD:Lcom/ansca/corona/input/InputDeviceType;

    invoke-virtual {v2, v1}, Lcom/ansca/corona/input/InputDeviceTypeSet;->contains(Lcom/ansca/corona/input/InputDeviceType;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 482
    invoke-virtual {p0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    .line 484
    sget-object v1, Lcom/ansca/corona/input/InputDeviceType;->KEYBOARD:Lcom/ansca/corona/input/InputDeviceType;

    invoke-virtual {v2, v1}, Lcom/ansca/corona/input/InputDeviceTypeSet;->remove(Lcom/ansca/corona/input/InputDeviceType;)Z

    .line 485
    sget-object v1, Lcom/ansca/corona/input/InputDeviceType;->KEYBOARD:Lcom/ansca/corona/input/InputDeviceType;

    invoke-static {p0, v1}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;->createDeviceInfoFor(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_6
    invoke-static {p0, v5}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;->createDeviceInfoFor(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v1

    .line 490
    invoke-static {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$000(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/InputDeviceTypeSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ansca/corona/input/InputDeviceTypeSet;->addAll(Ljava/lang/Iterable;)V

    .line 491
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_7

    .line 492
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceTypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ansca/corona/input/InputDeviceType;

    .line 493
    invoke-static {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->access$100(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/AxisInfoCollection;

    move-result-object v6

    .line 494
    invoke-static {p0, v5}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel12;->getAxisInfoFrom(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/AxisInfoCollection;

    move-result-object v5

    .line 493
    invoke-virtual {v6, v5}, Lcom/ansca/corona/input/AxisInfoCollection;->addAll(Ljava/lang/Iterable;)V

    goto :goto_2

    .line 497
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceType;

    .line 501
    invoke-static {p0, v2}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;->createDeviceInfoFor(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v3

    .line 502
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_8

    .line 503
    invoke-static {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->access$100(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/AxisInfoCollection;

    move-result-object v5

    .line 504
    invoke-static {p0, v2}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel12;->getAxisInfoFrom(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/AxisInfoCollection;

    move-result-object v2

    .line 503
    invoke-virtual {v5, v2}, Lcom/ansca/corona/input/AxisInfoCollection;->addAll(Ljava/lang/Iterable;)V

    .line 506
    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 512
    :cond_9
    sget-object v1, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    invoke-static {p0, v1}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;->createDeviceInfoFor(Landroid/view/InputDevice;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object p0

    .line 513
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method
