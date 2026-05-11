.class public Lcom/ansca/corona/CoronaData$Proxy;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ansca/corona/CoronaData$Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fData:Lcom/ansca/corona/CoronaData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 688
    new-instance v0, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Proxy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 692
    invoke-direct {p0, v0}, Lcom/ansca/corona/CoronaData$Proxy;-><init>(Lcom/ansca/corona/CoronaData;)V

    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/CoronaData;)V
    .locals 0

    .line 699
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    .line 700
    iput-object p1, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/CoronaData$Proxy;
    .locals 1

    .line 729
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData$Proxy;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ansca/corona/CoronaData;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Proxy;->clone()Lcom/ansca/corona/CoronaData$Proxy;

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

    .line 683
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Proxy;->clone()Lcom/ansca/corona/CoronaData$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/ansca/corona/CoronaData;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 741
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    move-result p1

    return p1
.end method

.method public setData(Lcom/ansca/corona/CoronaData;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    return-void
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "proxy"

    const-string v1, ""

    .line 749
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    iget-object v2, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-eqz v2, :cond_0

    .line 751
    invoke-virtual {v2, p1}, Lcom/ansca/corona/CoronaData;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 753
    :cond_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 764
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1
    return-void
.end method
