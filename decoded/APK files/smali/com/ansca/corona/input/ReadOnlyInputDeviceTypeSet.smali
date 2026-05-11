.class public Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;
.super Ljava/lang/Object;
.source "ReadOnlyInputDeviceTypeSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ansca/corona/input/InputDeviceType;",
        ">;"
    }
.end annotation


# instance fields
.field private fCollection:Lcom/ansca/corona/input/InputDeviceTypeSet;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/input/InputDeviceTypeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-direct {p1}, Lcom/ansca/corona/input/InputDeviceTypeSet;-><init>()V

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->fCollection:Lcom/ansca/corona/input/InputDeviceTypeSet;

    return-void
.end method


# virtual methods
.method public contains(Lcom/ansca/corona/input/InputDeviceType;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->fCollection:Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/input/InputDeviceTypeSet;->contains(Lcom/ansca/corona/input/InputDeviceType;)Z

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

    .line 67
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->fCollection:Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->fCollection:Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;->size()I

    move-result v0

    return v0
.end method

.method public toAndroidSourcesBitField()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->fCollection:Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;->toAndroidSourcesBitField()I

    move-result v0

    return v0
.end method
