.class Lcom/ansca/corona/input/InputDeviceServices$ApiLevel16;
.super Ljava/lang/Object;
.source "InputDeviceServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel16"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrateInputDeviceUsing(ILcom/ansca/corona/input/VibrationSettings;)V
    .locals 2

    .line 700
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 707
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    .line 708
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method
