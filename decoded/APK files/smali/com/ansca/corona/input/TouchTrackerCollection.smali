.class public Lcom/ansca/corona/input/TouchTrackerCollection;
.super Ljava/lang/Object;
.source "TouchTrackerCollection.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ansca/corona/input/TouchTracker;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/TouchTracker;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/input/TouchTracker;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clone()Lcom/ansca/corona/input/TouchTrackerCollection;
    .locals 4

    .line 30
    new-instance v0, Lcom/ansca/corona/input/TouchTrackerCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/TouchTrackerCollection;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/TouchTracker;

    .line 32
    iget-object v3, v0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/ansca/corona/input/TouchTracker;->clone()Lcom/ansca/corona/input/TouchTracker;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
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
    invoke-virtual {p0}, Lcom/ansca/corona/input/TouchTrackerCollection;->clone()Lcom/ansca/corona/input/TouchTrackerCollection;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/ansca/corona/input/TouchTracker;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsDeviceAndPointerId(II)Z
    .locals 0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/input/TouchTrackerCollection;->getByDeviceAndPointerId(II)Lcom/ansca/corona/input/TouchTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsTouchId(I)Z
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/TouchTrackerCollection;->getByTouchId(I)Lcom/ansca/corona/input/TouchTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getByDeviceAndPointerId(II)Lcom/ansca/corona/input/TouchTracker;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/TouchTracker;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/ansca/corona/input/TouchTracker;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/ansca/corona/input/TouchTracker;->getPointerId()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByIndex(I)Lcom/ansca/corona/input/TouchTracker;
    .locals 1

    if-ltz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/input/TouchTracker;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByTouchId(I)Lcom/ansca/corona/input/TouchTracker;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/TouchTracker;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/ansca/corona/input/TouchTracker;->getTouchId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOf(Lcom/ansca/corona/input/TouchTracker;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ansca/corona/input/TouchTracker;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/ansca/corona/input/TouchTracker;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeByDeviceAndPointerId(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 223
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/input/TouchTrackerCollection;->getByDeviceAndPointerId(II)Lcom/ansca/corona/input/TouchTracker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/input/TouchTrackerCollection;->remove(Lcom/ansca/corona/input/TouchTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeByDeviceId(I)Z
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 202
    iget-object v3, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/input/TouchTracker;

    .line 203
    invoke-virtual {v3}, Lcom/ansca/corona/input/TouchTracker;->getDeviceId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public removeByTouchId(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/TouchTrackerCollection;->getByTouchId(I)Lcom/ansca/corona/input/TouchTracker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/input/TouchTrackerCollection;->remove(Lcom/ansca/corona/input/TouchTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ansca/corona/input/TouchTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
