.class Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ansca/corona/CoronaData$Table;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0

    .line 1318
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Table;
    .locals 7

    .line 1325
    new-instance v0, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 1326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1329
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData$Value;

    const/4 v5, 0x0

    .line 1331
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    .line 1332
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/ansca/corona/CoronaData;

    .line 1334
    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1318
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$Table;
    .locals 0

    .line 1345
    new-array p1, p1, [Lcom/ansca/corona/CoronaData$Table;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1318
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$Table;

    move-result-object p1

    return-object p1
.end method
