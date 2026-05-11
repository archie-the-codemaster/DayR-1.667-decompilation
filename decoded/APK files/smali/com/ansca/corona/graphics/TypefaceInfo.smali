.class public Lcom/ansca/corona/graphics/TypefaceInfo;
.super Ljava/lang/Object;
.source "TypefaceInfo.java"


# instance fields
.field private fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/graphics/TypefaceSettings;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceSettings;->clone()Lcom/ansca/corona/graphics/TypefaceSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Lcom/ansca/corona/graphics/TypefaceInfo;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    iget-object p1, p1, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->equals(Lcom/ansca/corona/graphics/TypefaceSettings;)Z

    move-result p1

    return p1
.end method

.method public equals(Lcom/ansca/corona/graphics/TypefaceSettings;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/graphics/TypefaceSettings;->equals(Lcom/ansca/corona/graphics/TypefaceSettings;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 112
    instance-of v0, p1, Lcom/ansca/corona/graphics/TypefaceInfo;

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lcom/ansca/corona/graphics/TypefaceInfo;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->equals(Lcom/ansca/corona/graphics/TypefaceInfo;)Z

    move-result p1

    return p1

    .line 115
    :cond_0
    instance-of v0, p1, Lcom/ansca/corona/graphics/TypefaceSettings;

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->equals(Lcom/ansca/corona/graphics/TypefaceSettings;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAndroidTypefaceStyle()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/TypefaceSettings;->getAndroidTypefaceStyle()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/TypefaceSettings;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/TypefaceSettings;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBold()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/TypefaceSettings;->isBold()Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ansca/corona/graphics/TypefaceInfo;->fSettings:Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/TypefaceSettings;->isItalic()Z

    move-result v0

    return v0
.end method
