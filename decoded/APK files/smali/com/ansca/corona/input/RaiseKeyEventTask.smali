.class public Lcom/ansca/corona/input/RaiseKeyEventTask;
.super Ljava/lang/Object;
.source "RaiseKeyEventTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/RaiseKeyEventTask$ApiLevel11;
    }
.end annotation


# instance fields
.field private fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

.field private fKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceInterface;Landroid/view/KeyEvent;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 39
    iput-object p1, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

    .line 40
    iput-object p2, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lcom/ansca/corona/input/RaiseKeyEventTask;)Landroid/view/KeyEvent;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 12

    .line 55
    iget-object v0, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v1}, Lcom/ansca/corona/input/RaiseKeyEventTask$ApiLevel11;->isMetaPressedFor(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 65
    iget-object v1, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v1}, Lcom/ansca/corona/input/RaiseKeyEventTask$ApiLevel11;->isCtrlPressedFor(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v2}, Lcom/ansca/corona/input/RaiseKeyEventTask$ApiLevel11;->isCapsLockOnFor(Landroid/view/KeyEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    move v8, v0

    move v10, v1

    move v11, v3

    goto :goto_0

    :cond_1
    move v8, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 68
    :goto_0
    iget-object v5, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fDevice:Lcom/ansca/corona/input/InputDeviceInterface;

    iget-object v0, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    .line 70
    invoke-static {v0}, Lcom/ansca/corona/input/KeyPhase;->from(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/KeyPhase;

    move-result-object v6

    iget-object v0, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    .line 71
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    iget-object v0, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    .line 73
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v9

    move-object v4, p1

    .line 68
    invoke-static/range {v4 .. v11}, Lcom/ansca/corona/JavaToNativeShim;->keyEvent(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/input/InputDeviceInterface;Lcom/ansca/corona/input/KeyPhase;IZZZZ)Z

    move-result p1

    .line 78
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/ansca/corona/input/RaiseKeyEventTask;->fKeyEvent:Landroid/view/KeyEvent;

    instance-of p1, p1, Lcom/ansca/corona/input/CoronaKeyEvent;

    if-nez p1, :cond_3

    .line 85
    new-instance p1, Lcom/ansca/corona/input/RaiseKeyEventTask$1;

    invoke-direct {p1, p0}, Lcom/ansca/corona/input/RaiseKeyEventTask$1;-><init>(Lcom/ansca/corona/input/RaiseKeyEventTask;)V

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
