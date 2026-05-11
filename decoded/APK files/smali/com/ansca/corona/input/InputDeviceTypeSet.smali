.class public Lcom/ansca/corona/input/InputDeviceTypeSet;
.super Ljava/lang/Object;
.source "InputDeviceTypeSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ansca/corona/input/InputDeviceType;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private fCollection:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/ansca/corona/input/InputDeviceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/input/InputDeviceType;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ansca/corona/input/InputDeviceType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/InputDeviceType;

    .line 70
    invoke-virtual {p0, v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;->add(Lcom/ansca/corona/input/InputDeviceType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public clone()Lcom/ansca/corona/input/InputDeviceTypeSet;
    .locals 1

    .line 34
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/InputDeviceTypeSet;
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
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceTypeSet;->clone()Lcom/ansca/corona/input/InputDeviceTypeSet;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/ansca/corona/input/InputDeviceType;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Lcom/ansca/corona/input/InputDeviceTypeSet;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    iget-object p1, p1, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 178
    instance-of v0, p1, Lcom/ansca/corona/input/InputDeviceTypeSet;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 181
    :cond_0
    check-cast p1, Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/InputDeviceTypeSet;->equals(Lcom/ansca/corona/input/InputDeviceTypeSet;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ansca/corona/input/InputDeviceType;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/ansca/corona/input/InputDeviceType;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ansca/corona/input/InputDeviceType;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceType;

    .line 120
    invoke-virtual {p0, v1}, Lcom/ansca/corona/input/InputDeviceTypeSet;->remove(Lcom/ansca/corona/input/InputDeviceType;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    return v0
.end method

.method public toAndroidSourcesBitField()I
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceTypeSet;->fCollection:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceType;

    .line 197
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
