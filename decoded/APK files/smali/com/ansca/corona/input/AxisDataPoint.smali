.class public Lcom/ansca/corona/input/AxisDataPoint;
.super Ljava/lang/Object;
.source "AxisDataPoint.java"


# instance fields
.field private fTimestamp:J

.field private fValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ansca/corona/input/AxisDataPoint;-><init>(FJ)V

    return-void
.end method

.method public constructor <init>(FJ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/ansca/corona/input/AxisDataPoint;->fValue:F

    .line 43
    iput-wide p2, p0, Lcom/ansca/corona/input/AxisDataPoint;->fTimestamp:J

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/ansca/corona/input/AxisDataPoint;->fTimestamp:J

    return-wide v0
.end method

.method public getValue()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/ansca/corona/input/AxisDataPoint;->fValue:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/ansca/corona/input/AxisDataPoint;->fValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-wide v1, p0, Lcom/ansca/corona/input/AxisDataPoint;->fTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
