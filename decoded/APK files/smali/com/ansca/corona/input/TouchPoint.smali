.class public Lcom/ansca/corona/input/TouchPoint;
.super Ljava/lang/Object;
.source "TouchPoint.java"


# instance fields
.field private fPointX:F

.field private fPointY:F

.field private fTimestamp:J


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ansca/corona/input/TouchPoint;-><init>(FFJ)V

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/ansca/corona/input/TouchPoint;->fPointX:F

    .line 48
    iput p2, p0, Lcom/ansca/corona/input/TouchPoint;->fPointY:F

    .line 49
    iput-wide p3, p0, Lcom/ansca/corona/input/TouchPoint;->fTimestamp:J

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/ansca/corona/input/TouchPoint;->fTimestamp:J

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/ansca/corona/input/TouchPoint;->fPointX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/ansca/corona/input/TouchPoint;->fPointY:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lcom/ansca/corona/input/TouchPoint;->fPointX:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v2, p0, Lcom/ansca/corona/input/TouchPoint;->fPointY:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v1, p0, Lcom/ansca/corona/input/TouchPoint;->fTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
