.class public Lcom/ansca/corona/Ticks;
.super Ljava/lang/Object;
.source "Ticks.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private fMilliseconds:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/Ticks;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    iget-wide v0, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    iput-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    :cond_0
    return-void
.end method

.method public static fromCurrentTime()Lcom/ansca/corona/Ticks;
    .locals 3

    .line 226
    new-instance v0, Lcom/ansca/corona/Ticks;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/ansca/corona/Ticks;
    .locals 1

    .line 218
    new-instance v0, Lcom/ansca/corona/Ticks;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/Ticks;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/ansca/corona/TimeSpan;)Lcom/ansca/corona/Ticks;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/ansca/corona/Ticks;

    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    invoke-virtual {p1}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    return-object v0
.end method

.method public addMilliseconds(J)Lcom/ansca/corona/Ticks;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lcom/ansca/corona/Ticks;

    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    return-object v0
.end method

.method public addSeconds(J)Lcom/ansca/corona/Ticks;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Lcom/ansca/corona/Ticks;

    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    const-wide/16 v3, 0x3e8

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Ticks;-><init>(J)V

    return-object v0
.end method

.method public compareTo(Lcom/ansca/corona/Ticks;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 150
    :cond_0
    iget-wide v1, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 158
    :cond_1
    iget-wide v3, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long p1, v3, v1

    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    cmp-long p1, v3, v1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 178
    instance-of v0, p1, Lcom/ansca/corona/Ticks;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 183
    :cond_0
    check-cast p1, Lcom/ansca/corona/Ticks;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Ticks;->compareTo(Lcom/ansca/corona/Ticks;)I

    move-result p1

    return p1
.end method

.method public equals(Lcom/ansca/corona/Ticks;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 119
    :cond_0
    iget-wide v1, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    iget-wide v3, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 130
    instance-of v0, p1, Lcom/ansca/corona/Ticks;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    check-cast p1, Lcom/ansca/corona/Ticks;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/Ticks;->equals(Lcom/ansca/corona/Ticks;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 192
    iget-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public subtract(Lcom/ansca/corona/Ticks;)Lcom/ansca/corona/TimeSpan;
    .locals 4

    if-eqz p1, :cond_0

    .line 98
    iget-wide v0, p1, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 107
    :cond_1
    iget-wide v2, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/ansca/corona/TimeSpan;->fromMilliseconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object p1

    return-object p1
.end method

.method public toLong()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    iget-wide v0, p0, Lcom/ansca/corona/Ticks;->fMilliseconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
