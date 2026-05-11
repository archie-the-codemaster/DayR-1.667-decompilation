.class public Lcom/ansca/corona/input/TouchTracker;
.super Ljava/lang/Object;
.source "TouchTracker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextTouchId:I


# instance fields
.field private fDeviceId:I

.field private fLastPoint:Lcom/ansca/corona/input/TouchPoint;

.field private fPhase:Lcom/ansca/corona/input/TouchPhase;

.field private fPointerId:I

.field private fPressure:F

.field private fStartPoint:Lcom/ansca/corona/input/TouchPoint;

.field private fSupportsPressure:Z

.field private fTouchId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Lcom/ansca/corona/input/TouchTracker;->sNextTouchId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ansca/corona/input/TouchTracker;->sNextTouchId:I

    .line 53
    sget v0, Lcom/ansca/corona/input/TouchTracker;->sNextTouchId:I

    iput v0, p0, Lcom/ansca/corona/input/TouchTracker;->fTouchId:I

    .line 54
    iput p1, p0, Lcom/ansca/corona/input/TouchTracker;->fDeviceId:I

    .line 55
    iput p2, p0, Lcom/ansca/corona/input/TouchTracker;->fPointerId:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/ansca/corona/input/TouchTracker;->fSupportsPressure:Z

    .line 57
    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchTracker;->reset()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/input/TouchTracker;
    .locals 1

    .line 68
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/TouchTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchTracker;->clone()Lcom/ansca/corona/input/TouchTracker;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/ansca/corona/input/TouchTracker;->fDeviceId:I

    return v0
.end method

.method public getLastPoint()Lcom/ansca/corona/input/TouchPoint;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTracker;->fLastPoint:Lcom/ansca/corona/input/TouchPoint;

    return-object v0
.end method

.method public getPhase()Lcom/ansca/corona/input/TouchPhase;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTracker;->fPhase:Lcom/ansca/corona/input/TouchPhase;

    return-object v0
.end method

.method public getPointerId()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/ansca/corona/input/TouchTracker;->fPointerId:I

    return v0
.end method

.method public getPressure()F
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/ansca/corona/input/TouchTracker;->fSupportsPressure:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ansca/corona/input/TouchTracker;->fPressure:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getStartPoint()Lcom/ansca/corona/input/TouchPoint;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTracker;->fStartPoint:Lcom/ansca/corona/input/TouchPoint;

    return-object v0
.end method

.method public getTouchId()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/ansca/corona/input/TouchTracker;->fTouchId:I

    return v0
.end method

.method public hasNotStarted()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchTracker;->hasStarted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTracker;->fStartPoint:Lcom/ansca/corona/input/TouchPoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/ansca/corona/input/TouchTracker;->fStartPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 82
    iput-object v0, p0, Lcom/ansca/corona/input/TouchTracker;->fLastPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 83
    iput-object v0, p0, Lcom/ansca/corona/input/TouchTracker;->fPhase:Lcom/ansca/corona/input/TouchPhase;

    const/high16 v0, -0x40800000    # -1.0f

    .line 84
    iput v0, p0, Lcom/ansca/corona/input/TouchTracker;->fPressure:F

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/ansca/corona/input/TouchTracker;->fSupportsPressure:Z

    return-void
.end method

.method public updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 202
    invoke-virtual {p0, p1, p2, v0}, Lcom/ansca/corona/input/TouchTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;F)V

    return-void
.end method

.method public updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;F)V
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 212
    iget-object p3, p0, Lcom/ansca/corona/input/TouchTracker;->fStartPoint:Lcom/ansca/corona/input/TouchPoint;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/ansca/corona/input/TouchPhase;->BEGAN:Lcom/ansca/corona/input/TouchPhase;

    if-ne p2, p3, :cond_1

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/TouchTracker;->fStartPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 217
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/input/TouchTracker;->fLastPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 218
    iput-object p2, p0, Lcom/ansca/corona/input/TouchTracker;->fPhase:Lcom/ansca/corona/input/TouchPhase;

    const/high16 p1, -0x40800000    # -1.0f

    .line 230
    iget-boolean p2, p0, Lcom/ansca/corona/input/TouchTracker;->fSupportsPressure:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/ansca/corona/input/TouchTracker;->fPressure:F

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 231
    iput-boolean p2, p0, Lcom/ansca/corona/input/TouchTracker;->fSupportsPressure:Z

    .line 233
    :cond_2
    iput p1, p0, Lcom/ansca/corona/input/TouchTracker;->fPressure:F

    return-void

    .line 208
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
