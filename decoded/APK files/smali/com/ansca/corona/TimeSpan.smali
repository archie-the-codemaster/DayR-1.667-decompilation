.class public Lcom/ansca/corona/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private fMilliseconds:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p9, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    .line 34
    iget-wide p9, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/16 v0, 0x3e8

    mul-long p7, p7, v0

    add-long/2addr p9, p7

    iput-wide p9, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    .line 35
    iget-wide p7, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/32 p9, 0xea60

    mul-long p5, p5, p9

    add-long/2addr p7, p5

    iput-wide p7, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    .line 36
    iget-wide p5, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/32 p7, 0x36ee80

    mul-long p3, p3, p7

    add-long/2addr p5, p3

    iput-wide p5, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    .line 37
    iget-wide p3, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/32 p5, 0x5265c00

    mul-long p1, p1, p5

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    return-void
.end method

.method public static fromMilliseconds(J)Lcom/ansca/corona/TimeSpan;
    .locals 12

    .line 203
    new-instance v11, Lcom/ansca/corona/TimeSpan;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v11

    move-wide v9, p0

    invoke-direct/range {v0 .. v10}, Lcom/ansca/corona/TimeSpan;-><init>(JJJJJ)V

    return-object v11
.end method

.method public static fromMinutes(J)Lcom/ansca/corona/TimeSpan;
    .locals 12

    .line 221
    new-instance v11, Lcom/ansca/corona/TimeSpan;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, v11

    move-wide v5, p0

    invoke-direct/range {v0 .. v10}, Lcom/ansca/corona/TimeSpan;-><init>(JJJJJ)V

    return-object v11
.end method

.method public static fromSeconds(J)Lcom/ansca/corona/TimeSpan;
    .locals 12

    .line 212
    new-instance v11, Lcom/ansca/corona/TimeSpan;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object v0, v11

    move-wide v7, p0

    invoke-direct/range {v0 .. v10}, Lcom/ansca/corona/TimeSpan;-><init>(JJJJJ)V

    return-object v11
.end method


# virtual methods
.method public compareTo(Lcom/ansca/corona/TimeSpan;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    iget-wide v1, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    iget-wide v3, p1, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 180
    instance-of v0, p1, Lcom/ansca/corona/TimeSpan;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 185
    :cond_0
    check-cast p1, Lcom/ansca/corona/TimeSpan;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/TimeSpan;->compareTo(Lcom/ansca/corona/TimeSpan;)I

    move-result p1

    return p1
.end method

.method public equals(Lcom/ansca/corona/TimeSpan;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 129
    :cond_0
    iget-wide v1, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    iget-wide v3, p1, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 140
    instance-of v0, p1, Lcom/ansca/corona/TimeSpan;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    check-cast p1, Lcom/ansca/corona/TimeSpan;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/TimeSpan;->equals(Lcom/ansca/corona/TimeSpan;)Z

    move-result p1

    return p1
.end method

.method public getDays()I
    .locals 4

    .line 45
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getHours()I
    .locals 4

    .line 53
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v1, v0

    rem-int/lit8 v1, v1, 0x18

    return v1
.end method

.method public getMilliseconds()I
    .locals 4

    .line 77
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMinutes()I
    .locals 4

    .line 61
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v1, v0

    rem-int/lit8 v1, v1, 0x3c

    return v1
.end method

.method public getSeconds()I
    .locals 4

    .line 69
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    rem-int/lit8 v1, v1, 0x3c

    return v1
.end method

.method public getTotalDays()D
    .locals 4

    .line 85
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalHours()D
    .locals 4

    .line 93
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMilliseconds()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    return-wide v0
.end method

.method public getTotalMinutes()D
    .locals 4

    .line 101
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    long-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSeconds()D
    .locals 4

    .line 109
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 194
    iget-wide v0, p0, Lcom/ansca/corona/TimeSpan;->fMilliseconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
