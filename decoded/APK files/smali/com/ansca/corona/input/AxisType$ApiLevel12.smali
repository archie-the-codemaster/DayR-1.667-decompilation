.class Lcom/ansca/corona/input/AxisType$ApiLevel12;
.super Ljava/lang/Object;
.source "AxisType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/AxisType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel12"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSymbolicNameFromAndroidIntegerId(I)Ljava/lang/String;
    .locals 0

    .line 331
    invoke-static {p0}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
