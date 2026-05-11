.class Lcom/ansca/corona/input/InputHandler$ApiLevel14;
.super Ljava/lang/Object;
.source "InputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel14"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMiddleMouseButtonPressedFor(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 624
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isPrimaryMouseButtonPressedFor(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 592
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSecondaryMouseButtonPressedFor(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 609
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
