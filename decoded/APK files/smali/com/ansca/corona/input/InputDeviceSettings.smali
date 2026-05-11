.class public Lcom/ansca/corona/input/InputDeviceSettings;
.super Ljava/lang/Object;
.source "InputDeviceSettings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private fAxisCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/AxisSettings;",
            ">;"
        }
    .end annotation
.end field

.field private fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

.field private fDisplayName:Ljava/lang/String;

.field private fPermanentStringId:Ljava/lang/String;

.field private fProductName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fPermanentStringId:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fProductName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fDisplayName:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fAxisCollection:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/input/InputDeviceSettings;
    .locals 5

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/InputDeviceSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    iget-object v2, v1, Lcom/ansca/corona/input/InputDeviceSettings;->fAxisCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v2, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fAxisCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/input/AxisSettings;

    if-eqz v3, :cond_0

    .line 57
    iget-object v4, v1, Lcom/ansca/corona/input/InputDeviceSettings;->fAxisCollection:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/ansca/corona/input/AxisSettings;->clone()Lcom/ansca/corona/input/AxisSettings;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object v3, v1, Lcom/ansca/corona/input/InputDeviceSettings;->fAxisCollection:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :cond_1
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/ansca/corona/input/InputDeviceSettings;->clone()Lcom/ansca/corona/input/InputDeviceSettings;

    move-result-object v0

    return-object v0
.end method

.method public getAxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ansca/corona/input/AxisSettings;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fAxisCollection:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentStringId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fPermanentStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/ansca/corona/input/InputDeviceType;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    return-object v0
.end method

.method public hasPermanentStringId()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fPermanentStringId:Ljava/lang/String;

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

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setPermanentStringId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fPermanentStringId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fProductName:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/ansca/corona/input/InputDeviceType;)V
    .locals 0

    if-nez p1, :cond_0

    .line 83
    sget-object p1, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/input/InputDeviceSettings;->fDeviceType:Lcom/ansca/corona/input/InputDeviceType;

    return-void
.end method
