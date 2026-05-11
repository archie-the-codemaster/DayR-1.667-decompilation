.class Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ansca/corona/CoronaData$Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Boolean;
    .locals 0

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/ansca/corona/CoronaData$Boolean;->from(Z)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$Boolean;
    .locals 0

    .line 472
    new-array p1, p1, [Lcom/ansca/corona/CoronaData$Boolean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object p1

    return-object p1
.end method
