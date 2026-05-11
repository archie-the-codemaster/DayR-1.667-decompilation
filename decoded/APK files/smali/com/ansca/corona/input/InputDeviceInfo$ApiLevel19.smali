.class Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel19;
.super Ljava/lang/Object;
.source "InputDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getControllerNumberFrom(Landroid/view/InputDevice;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 713
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result p0

    return p0
.end method
