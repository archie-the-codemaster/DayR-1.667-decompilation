.class Lcom/ansca/corona/input/RaiseKeyEventTask$ApiLevel11;
.super Ljava/lang/Object;
.source "RaiseKeyEventTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/input/RaiseKeyEventTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel11"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCapsLockOnFor(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCapsLockOn()Z

    move-result p0

    return p0
.end method

.method public static isCtrlPressedFor(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 139
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    return p0
.end method

.method public static isMetaPressedFor(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 148
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p0

    return p0
.end method
