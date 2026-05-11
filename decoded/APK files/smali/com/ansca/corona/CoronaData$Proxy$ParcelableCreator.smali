.class Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ansca/corona/CoronaData$Proxy;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0

    .line 770
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Proxy;
    .locals 2

    .line 777
    new-instance v0, Lcom/ansca/corona/CoronaData$Proxy;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Proxy;-><init>()V

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaData$Proxy;->setData(Lcom/ansca/corona/CoronaData;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 770
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Proxy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$Proxy;
    .locals 0

    .line 790
    new-array p1, p1, [Lcom/ansca/corona/CoronaData$Proxy;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 770
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$Proxy;

    move-result-object p1

    return-object p1
.end method
