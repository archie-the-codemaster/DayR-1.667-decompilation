.class Lcom/ansca/corona/CoronaData$List$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ansca/corona/CoronaData$List;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0

    .line 960
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$List;
    .locals 5

    .line 967
    new-instance v0, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 971
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v0, v4}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 960
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$List;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$List;
    .locals 0

    .line 982
    new-array p1, p1, [Lcom/ansca/corona/CoronaData$List;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 960
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$List;

    move-result-object p1

    return-object p1
.end method
