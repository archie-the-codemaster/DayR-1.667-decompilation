.class public Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;
.super Ljava/lang/Object;
.source "ReadOnlyAxisInfoCollection.java"

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
.field private fCollection:Lcom/ansca/corona/input/AxisInfoCollection;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/AxisInfoCollection;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-direct {p1}, Lcom/ansca/corona/input/AxisInfoCollection;-><init>()V

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->fCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    return-void
.end method


# virtual methods
.method public contains(Lcom/ansca/corona/input/AxisInfo;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->fCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/AxisInfoCollection;->contains(Lcom/ansca/corona/input/AxisInfo;)Z

    move-result p1

    return p1
.end method

.method public getByIndex(I)Lcom/ansca/corona/input/AxisInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->fCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/AxisInfoCollection;->getByIndex(I)Lcom/ansca/corona/input/AxisInfo;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Lcom/ansca/corona/input/AxisInfo;)I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->fCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/AxisInfoCollection;->indexOf(Lcom/ansca/corona/input/AxisInfo;)I

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

    .line 82
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->fCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisInfoCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;->fCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v0}, Lcom/ansca/corona/input/AxisInfoCollection;->size()I

    move-result v0

    return v0
.end method
