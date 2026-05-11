.class public Lcom/ansca/corona/input/RaiseMouseEventTask;
.super Ljava/lang/Object;
.source "RaiseMouseEventTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fIsMiddleButtonDown:Z

.field private fIsPrimaryButtonDown:Z

.field private fIsSecondaryButtonDown:Z

.field private fPointX:F

.field private fPointY:F

.field private fScrollX:F

.field private fScrollY:F

.field private fTimestamp:J


# direct methods
.method public constructor <init>(FFFFJZZZ)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fPointX:F

    .line 64
    iput p2, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fPointY:F

    .line 65
    iput p3, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fScrollX:F

    .line 66
    iput p4, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fScrollY:F

    .line 67
    iput-wide p5, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fTimestamp:J

    .line 68
    iput-boolean p7, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fIsPrimaryButtonDown:Z

    .line 69
    iput-boolean p8, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fIsSecondaryButtonDown:Z

    .line 70
    iput-boolean p9, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fIsMiddleButtonDown:Z

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 11

    .line 84
    iget v0, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fPointX:F

    float-to-int v2, v0

    iget v0, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fPointY:F

    float-to-int v3, v0

    iget v0, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fScrollX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fScrollY:F

    float-to-int v5, v0

    iget-wide v6, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fTimestamp:J

    iget-boolean v8, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fIsPrimaryButtonDown:Z

    iget-boolean v9, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fIsSecondaryButtonDown:Z

    iget-boolean v10, p0, Lcom/ansca/corona/input/RaiseMouseEventTask;->fIsMiddleButtonDown:Z

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/ansca/corona/JavaToNativeShim;->mouseEvent(Lcom/ansca/corona/CoronaRuntime;IIIIJZZZ)V

    return-void
.end method
