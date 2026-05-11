.class public Lcom/ansca/corona/input/TapTrackerCollection;
.super Ljava/lang/Object;
.source "TapTrackerCollection.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ansca/corona/input/TapTracker;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/TapTracker;",
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

    iput-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/input/TapTracker;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clone()Lcom/ansca/corona/input/TapTrackerCollection;
    .locals 4

    .line 30
    new-instance v0, Lcom/ansca/corona/input/TapTrackerCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/TapTrackerCollection;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/TapTracker;

    .line 32
    iget-object v3, v0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/ansca/corona/input/TapTracker;->clone()Lcom/ansca/corona/input/TapTracker;

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
    invoke-virtual {p0}, Lcom/ansca/corona/input/TapTrackerCollection;->clone()Lcom/ansca/corona/input/TapTrackerCollection;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/ansca/corona/input/TapTracker;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsDeviceId(I)Z
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/TapTrackerCollection;->getByDeviceId(I)Lcom/ansca/corona/input/TapTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getByDeviceId(I)Lcom/ansca/corona/input/TapTracker;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/TapTracker;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/ansca/corona/input/TapTracker;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByIndex(I)Lcom/ansca/corona/input/TapTracker;
    .locals 1

    if-ltz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/input/TapTracker;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOf(Lcom/ansca/corona/input/TapTracker;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

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
            "Lcom/ansca/corona/input/TapTracker;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/ansca/corona/input/TapTracker;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeByDeviceId(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/TapTrackerCollection;->getByDeviceId(I)Lcom/ansca/corona/input/TapTracker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/input/TapTrackerCollection;->remove(Lcom/ansca/corona/input/TapTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ansca/corona/input/TapTrackerCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
