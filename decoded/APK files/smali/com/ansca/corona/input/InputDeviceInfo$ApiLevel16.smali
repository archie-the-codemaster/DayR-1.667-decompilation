.class Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel16;
.super Ljava/lang/Object;
.source "InputDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel16"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermanentStringIdFrom(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 660
    invoke-virtual {p0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static isVibrationSupportedFor(Landroid/view/InputDevice;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 683
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
