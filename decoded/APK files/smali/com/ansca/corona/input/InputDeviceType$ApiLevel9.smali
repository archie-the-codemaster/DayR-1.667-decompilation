.class Lcom/ansca/corona/input/InputDeviceType$ApiLevel9;
.super Ljava/lang/Object;
.source "InputDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel9"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSourceIdFrom(Landroid/view/InputEvent;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSource()I

    move-result p0

    return p0

    .line 293
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
