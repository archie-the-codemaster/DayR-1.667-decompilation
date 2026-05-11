.class public Lcom/ansca/corona/CoronaData$List;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$List$ParcelableCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ansca/corona/CoronaData;",
        "Ljava/lang/Iterable<",
        "Lcom/ansca/corona/CoronaData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ansca/corona/CoronaData$List;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 801
    new-instance v0, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$List;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 804
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    return-void
.end method

.method public static from(Lorg/json/JSONArray;)Lcom/ansca/corona/CoronaData$List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 952
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    const/4 v1, 0x0

    .line 953
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 954
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public add(Lcom/ansca/corona/CoronaData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clone()Lcom/ansca/corona/CoronaData$List;
    .locals 3

    .line 814
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData$List;

    .line 815
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    .line 816
    iget-object v1, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/CoronaData;

    .line 817
    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ansca/corona/CoronaData;
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$List;->clone()Lcom/ansca/corona/CoronaData$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$List;->clone()Lcom/ansca/corona/CoronaData$List;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 887
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 892
    invoke-virtual {p1, v0, v2}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 893
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 895
    iget-object v4, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData;

    if-eqz v4, :cond_1

    .line 897
    invoke-virtual {v4, p1}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 899
    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public remove(Lcom/ansca/corona/CoronaData;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "list"

    const-string v1, ""

    .line 912
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    iget-object v2, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaData;

    if-eqz v3, :cond_0

    .line 915
    invoke-virtual {v3, p1}, Lcom/ansca/corona/CoronaData;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 918
    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaData;

    if-eqz v1, :cond_0

    .line 931
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
