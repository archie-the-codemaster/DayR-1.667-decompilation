.class public Lcom/ansca/corona/input/InputDeviceInfo;
.super Ljava/lang/Object;
.source "InputDeviceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel19;,
        Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel16;,
        Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel12;,
        Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;
    }
.end annotation


# instance fields
.field private fAndroidDeviceId:I

.field private fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

.field private fCanVibrate:Z

.field private fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

.field private fDisplayName:Ljava/lang/String;

.field private fInputSources:Lcom/ansca/corona/input/InputDeviceTypeSet;

.field private fPermanentStringId:Ljava/lang/String;

.field private fPlayerNumber:I

.field private fProductName:Ljava/lang/String;

.field private fReadOnlyAxisCollection:Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;

.field private fReadOnlyInputSources:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAndroidDeviceId:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fProductName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDisplayName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fCanVibrate:Z

    .line 63
    iput v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPlayerNumber:I

    .line 64
    new-instance v0, Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fInputSources:Lcom/ansca/corona/input/InputDeviceTypeSet;

    .line 65
    new-instance v0, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fInputSources:Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-direct {v0, v1}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;-><init>(Lcom/ansca/corona/input/InputDeviceTypeSet;)V

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fReadOnlyInputSources:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    .line 66
    new-instance v0, Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-direct {v0}, Lcom/ansca/corona/input/AxisInfoCollection;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    .line 67
    new-instance v0, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;

    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-direct {v0, v1}, Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;-><init>(Lcom/ansca/corona/input/AxisInfoCollection;)V

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fReadOnlyAxisCollection:Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/input/InputDeviceInfo$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ansca/corona/input/InputDeviceInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/InputDeviceTypeSet;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fInputSources:Lcom/ansca/corona/input/InputDeviceTypeSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/input/InputDeviceInfo;)Lcom/ansca/corona/input/AxisInfoCollection;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ansca/corona/input/InputDeviceInfo;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAndroidDeviceId:I

    return p1
.end method

.method static synthetic access$402(Lcom/ansca/corona/input/InputDeviceInfo;Lcom/ansca/corona/input/InputDeviceType;)Lcom/ansca/corona/input/InputDeviceType;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ansca/corona/input/InputDeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fProductName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/ansca/corona/input/InputDeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/ansca/corona/input/InputDeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ansca/corona/input/InputDeviceInfo;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fCanVibrate:Z

    return p1
.end method

.method static synthetic access$902(Lcom/ansca/corona/input/InputDeviceInfo;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPlayerNumber:I

    return p1
.end method

.method static collectionFromAllAndroidDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ansca/corona/input/InputDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 375
    invoke-static {}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;->fetchAndroidDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 376
    invoke-static {v4}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;->fetchDeviceInfoFromAndroidDeviceId(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static collectionFromAndroidDeviceId(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ansca/corona/input/InputDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 349
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceInfo$ApiLevel9;->fetchDeviceInfoFromAndroidDeviceId(I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 352
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static from(Lcom/ansca/corona/input/InputDeviceSettings;)Lcom/ansca/corona/input/InputDeviceInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 316
    :cond_0
    new-instance v0, Lcom/ansca/corona/input/InputDeviceInfo;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceInfo;-><init>()V

    .line 317
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceSettings;->getType()Lcom/ansca/corona/input/InputDeviceType;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    .line 318
    iget-object v1, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fInputSources:Lcom/ansca/corona/input/InputDeviceTypeSet;

    iget-object v2, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/input/InputDeviceTypeSet;->add(Lcom/ansca/corona/input/InputDeviceType;)V

    .line 319
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceSettings;->getPermanentStringId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceSettings;->getProductName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fProductName:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fDisplayName:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceSettings;->getAxes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/AxisSettings;

    .line 323
    iget-object v2, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-static {v1}, Lcom/ansca/corona/input/AxisInfo;->from(Lcom/ansca/corona/input/AxisSettings;)Lcom/ansca/corona/input/AxisInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ansca/corona/input/AxisInfoCollection;->add(Lcom/ansca/corona/input/AxisInfo;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public canVibrate()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fCanVibrate:Z

    return v0
.end method

.method public clone()Lcom/ansca/corona/input/InputDeviceInfo;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInfo;->clone()Lcom/ansca/corona/input/InputDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithoutPlayerNumber()Lcom/ansca/corona/input/InputDeviceInfo;
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceInfo;->hasPlayerNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/input/InputDeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 93
    :try_start_1
    iput v1, v0, Lcom/ansca/corona/input/InputDeviceInfo;->fPlayerNumber:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, p0

    :catch_1
    :goto_0
    return-object v0
.end method

.method public equals(Lcom/ansca/corona/input/InputDeviceInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    return v0

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 258
    :cond_4
    iget-object v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    if-ne v1, v2, :cond_9

    iget v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fAndroidDeviceId:I

    iget v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAndroidDeviceId:I

    if-ne v1, v2, :cond_9

    iget-object v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fProductName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fProductName:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fDisplayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDisplayName:Ljava/lang/String;

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fCanVibrate:Z

    iget-boolean v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fCanVibrate:Z

    if-ne v1, v2, :cond_9

    iget v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fPlayerNumber:I

    iget v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPlayerNumber:I

    if-ne v1, v2, :cond_9

    iget-object v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fInputSources:Lcom/ansca/corona/input/InputDeviceTypeSet;

    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fInputSources:Lcom/ansca/corona/input/InputDeviceTypeSet;

    .line 264
    invoke-virtual {v1, v2}, Lcom/ansca/corona/input/InputDeviceTypeSet;->equals(Lcom/ansca/corona/input/InputDeviceTypeSet;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 270
    :cond_5
    iget-object v1, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisInfoCollection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v2}, Lcom/ansca/corona/input/AxisInfoCollection;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v2}, Lcom/ansca/corona/input/AxisInfoCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 274
    iget-object v2, p1, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v2, v1}, Lcom/ansca/corona/input/AxisInfoCollection;->getByIndex(I)Lcom/ansca/corona/input/AxisInfo;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAxisCollection:Lcom/ansca/corona/input/AxisInfoCollection;

    invoke-virtual {v3, v1}, Lcom/ansca/corona/input/AxisInfoCollection;->getByIndex(I)Lcom/ansca/corona/input/AxisInfo;

    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Lcom/ansca/corona/input/AxisInfo;->equals(Lcom/ansca/corona/input/AxisInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 296
    instance-of v0, p1, Lcom/ansca/corona/input/InputDeviceInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 299
    :cond_0
    check-cast p1, Lcom/ansca/corona/input/InputDeviceInfo;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/input/InputDeviceInfo;->equals(Lcom/ansca/corona/input/InputDeviceInfo;)Z

    move-result p1

    return p1
.end method

.method public getAndroidDeviceId()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAndroidDeviceId:I

    return v0
.end method

.method public getAxes()Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fReadOnlyAxisCollection:Lcom/ansca/corona/input/ReadOnlyAxisInfoCollection;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getInputSources()Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fReadOnlyInputSources:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    return-object v0
.end method

.method public getPermanentStringId()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerNumber()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPlayerNumber:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/ansca/corona/input/InputDeviceType;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    return-object v0
.end method

.method public hasAndroidDeviceId()Z
    .locals 1

    .line 118
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fAndroidDeviceId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPermanentStringId()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPermanentStringId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlayerNumber()Z
    .locals 1

    .line 194
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceInfo;->fPlayerNumber:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
