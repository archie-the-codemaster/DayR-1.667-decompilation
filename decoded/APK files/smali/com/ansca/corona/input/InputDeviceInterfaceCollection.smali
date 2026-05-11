.class public Lcom/ansca/corona/input/InputDeviceInterfaceCollection;
.super Ljava/lang/Object;
.source "InputDeviceInterfaceCollection.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ansca/corona/input/InputDeviceInterface;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/InputDeviceInterface;",
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

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/input/InputDeviceInterface;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ansca/corona/input/InputDeviceInterface;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 73
    invoke-virtual {p0, v0}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->add(Lcom/ansca/corona/input/InputDeviceInterface;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clone()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;
    .locals 1

    .line 34
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;
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
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->clone()Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/ansca/corona/input/InputDeviceInterface;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAndroidDeviceId(I)Z
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 287
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->hasAndroidDeviceId()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBy(Lcom/ansca/corona/input/ConnectionState;)Lcom/ansca/corona/input/InputDeviceInterfaceCollection;
    .locals 4

    if-eqz p1, :cond_2

    .line 258
    new-instance v0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 260
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getConnectionState()Lcom/ansca/corona/input/ConnectionState;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 261
    invoke-virtual {v0, v2}, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->add(Lcom/ansca/corona/input/InputDeviceInterface;)V

    goto :goto_0

    :cond_1
    return-object v0

    .line 254
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getByAndroidDeviceIdAndType(ILcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 4

    if-eqz p2, :cond_1

    .line 137
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 138
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->hasAndroidDeviceId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->getAndroidDeviceId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 141
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->getInputSources()Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->contains(Lcom/ansca/corona/input/InputDeviceType;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByCoronaDeviceId(I)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 120
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getCoronaDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByIndex(I)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 1

    if-ltz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/input/InputDeviceInterface;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByPermanentStringIdAndType(Ljava/lang/String;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 4

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    .line 163
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 164
    invoke-virtual {v1}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->hasPermanentStringId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->getPermanentStringId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInfo;->getInputSources()Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->contains(Lcom/ansca/corona/input/InputDeviceType;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByPermanentStringIdAndTypeAndDisplayName(Ljava/lang/String;Lcom/ansca/corona/input/InputDeviceType;Ljava/lang/String;)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    if-eqz p3, :cond_4

    .line 195
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 201
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->hasPermanentStringId()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->getPermanentStringId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->getInputSources()Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->contains(Lcom/ansca/corona/input/InputDeviceType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getByTypeAndDisplayName(Lcom/ansca/corona/input/InputDeviceType;Ljava/lang/String;)Lcom/ansca/corona/input/InputDeviceInterface;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_3

    .line 229
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceInterface;

    .line 235
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceInterface;->getDeviceInfo()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->getInputSources()Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->contains(Lcom/ansca/corona/input/InputDeviceType;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/ansca/corona/input/InputDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v0
.end method

.method public indexOf(Lcom/ansca/corona/input/InputDeviceInterface;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

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
            "Lcom/ansca/corona/input/InputDeviceInterface;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/ansca/corona/input/InputDeviceInterface;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInterfaceCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
