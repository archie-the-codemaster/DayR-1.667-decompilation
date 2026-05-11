.class Lcom/ansca/corona/input/InputDeviceServices$ApiLevel9;
.super Ljava/lang/Object;
.source "InputDeviceServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel9"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchAndroidDeviceIds()[I
    .locals 1

    .line 673
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method
