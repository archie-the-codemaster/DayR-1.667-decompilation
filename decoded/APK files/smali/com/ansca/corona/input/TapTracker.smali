.class public Lcom/ansca/corona/input/TapTracker;
.super Ljava/lang/Object;
.source "TapTracker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/TapTracker$ApiLevel14;
    }
.end annotation


# instance fields
.field private fDeviceId:I

.field private fFirstTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

.field private fLastTapTimestamp:J

.field private fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

.field private fTapCount:I

.field private fTapPoint:Lcom/ansca/corona/input/TouchPoint;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/ansca/corona/input/TapTracker;->fDeviceId:I

    .line 44
    invoke-virtual {p0}, Lcom/ansca/corona/input/TapTracker;->reset()V

    return-void
.end method

.method private areCoordinatesWithinTapBounds(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPoint;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p2}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 245
    invoke-virtual {p2}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchPoint;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42200000    # 40.0f

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/input/TapTracker;
    .locals 1

    .line 55
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/TapTracker;
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
    invoke-virtual {p0}, Lcom/ansca/corona/input/TapTracker;->clone()Lcom/ansca/corona/input/TapTracker;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/ansca/corona/input/TapTracker;->fDeviceId:I

    return v0
.end method

.method public getTapCount()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    iget v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapCount:I

    return v0
.end method

.method public getTapPoint()Lcom/ansca/corona/input/TouchPoint;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    return-object v0
.end method

.method public hasTapOccurred()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fFirstTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 64
    iput-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, p0, Lcom/ansca/corona/input/TapTracker;->fLastTapTimestamp:J

    .line 66
    iput-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapCount:I

    return-void
.end method

.method public updateWith(Landroid/view/MotionEvent;)V
    .locals 6

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iget v1, p0, Lcom/ansca/corona/input/TapTracker;->fDeviceId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/ansca/corona/input/TapTracker;->reset()V

    return-void

    .line 209
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Lcom/ansca/corona/input/InputDeviceType;->from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v0

    sget-object v1, Lcom/ansca/corona/input/InputDeviceType;->MOUSE:Lcom/ansca/corona/input/InputDeviceType;

    if-ne v0, v1, :cond_2

    .line 210
    invoke-static {p1}, Lcom/ansca/corona/input/TapTracker$ApiLevel14;->isNonPrimaryMouseButtonDownFor(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/ansca/corona/input/TapTracker;->reset()V

    return-void

    .line 219
    :cond_2
    invoke-static {p1}, Lcom/ansca/corona/input/TouchPhase;->from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/TouchPhase;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 225
    :cond_3
    new-instance v1, Lcom/ansca/corona/input/TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ansca/corona/input/TouchPoint;-><init>(FFJ)V

    .line 226
    invoke-virtual {p0, v1, v0}, Lcom/ansca/corona/input/TapTracker;->updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;)V

    return-void

    .line 188
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public updateWith(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPhase;)V
    .locals 6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 137
    sget-object v1, Lcom/ansca/corona/input/TouchPhase;->BEGAN:Lcom/ansca/corona/input/TouchPhase;

    if-ne p2, v1, :cond_1

    .line 140
    iget-object p2, p0, Lcom/ansca/corona/input/TapTracker;->fFirstTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    if-nez p2, :cond_0

    .line 141
    iput-object p1, p0, Lcom/ansca/corona/input/TapTracker;->fFirstTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/TapTracker;->fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 146
    iget-object p1, p0, Lcom/ansca/corona/input/TapTracker;->fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    iget-object p2, p0, Lcom/ansca/corona/input/TapTracker;->fFirstTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/input/TapTracker;->areCoordinatesWithinTapBounds(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPoint;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/ansca/corona/input/TapTracker;->fTapCount:I

    .line 148
    iget-object p1, p0, Lcom/ansca/corona/input/TapTracker;->fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    iput-object p1, p0, Lcom/ansca/corona/input/TapTracker;->fFirstTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    goto :goto_1

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/input/TapTracker;->fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ansca/corona/input/TouchPhase;->ENDED:Lcom/ansca/corona/input/TouchPhase;

    if-ne p2, v1, :cond_4

    .line 153
    iget-object p2, p0, Lcom/ansca/corona/input/TapTracker;->fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/input/TapTracker;->areCoordinatesWithinTapBounds(Lcom/ansca/corona/input/TouchPoint;Lcom/ansca/corona/input/TouchPoint;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 155
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchPoint;->getTimestamp()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ansca/corona/input/TapTracker;->fLastTapTimestamp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    const/4 p2, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 156
    iput p2, p0, Lcom/ansca/corona/input/TapTracker;->fTapCount:I

    goto :goto_0

    .line 158
    :cond_2
    iget v1, p0, Lcom/ansca/corona/input/TapTracker;->fTapCount:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_3

    add-int/2addr v1, p2

    .line 159
    iput v1, p0, Lcom/ansca/corona/input/TapTracker;->fTapCount:I

    .line 163
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/ansca/corona/input/TouchPoint;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ansca/corona/input/TapTracker;->fLastTapTimestamp:J

    .line 164
    iput-object p1, p0, Lcom/ansca/corona/input/TapTracker;->fTapPoint:Lcom/ansca/corona/input/TouchPoint;

    .line 167
    iput-object v0, p0, Lcom/ansca/corona/input/TapTracker;->fLastTouchBeganPoint:Lcom/ansca/corona/input/TouchPoint;

    :cond_4
    :goto_1
    return-void

    .line 130
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
