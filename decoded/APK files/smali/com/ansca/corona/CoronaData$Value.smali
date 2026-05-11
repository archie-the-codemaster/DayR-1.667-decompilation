.class public abstract Lcom/ansca/corona/CoronaData$Value;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 311
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 330
    instance-of v0, p1, Lcom/ansca/corona/CoronaData$Value;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Value;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    .line 334
    check-cast p1, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaData$Value;->getValueAsObject()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez v0, :cond_2

    return v1

    .line 341
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract getValueAsObject()Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Value;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
