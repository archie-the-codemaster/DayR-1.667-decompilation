.class public Lcom/ansca/corona/input/AxisInfoCollection;
.super Ljava/lang/Object;
.source "AxisInfoCollection.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ansca/corona/input/AxisInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/AxisInfo;",
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

    iput-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/input/AxisInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ansca/corona/input/AxisInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/AxisInfo;

    .line 57
    invoke-virtual {p0, v0}, Lcom/ansca/corona/input/AxisInfoCollection;->add(Lcom/ansca/corona/input/AxisInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public contains(Lcom/ansca/corona/input/AxisInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getByIndex(I)Lcom/ansca/corona/input/AxisInfo;
    .locals 1

    if-ltz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/input/AxisInfo;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOf(Lcom/ansca/corona/input/AxisInfo;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

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
            "Lcom/ansca/corona/input/AxisInfo;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/ansca/corona/input/AxisInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ansca/corona/input/AxisInfoCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
