.class Lcom/ansca/corona/input/InputHandler$ApiLevel12;
.super Ljava/lang/Object;
.source "InputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/InputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel12"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAxisValueFrom(Landroid/view/MotionEvent;I)F
    .locals 0

    if-eqz p0, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    return p0

    .line 560
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
