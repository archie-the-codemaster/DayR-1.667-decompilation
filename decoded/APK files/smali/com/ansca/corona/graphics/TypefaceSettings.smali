.class public Lcom/ansca/corona/graphics/TypefaceSettings;
.super Ljava/lang/Object;
.source "TypefaceSettings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private fIsBold:Z

.field private fIsItalic:Z

.field private fName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsBold:Z

    .line 32
    iput-boolean v0, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsItalic:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/graphics/TypefaceSettings;
    .locals 1

    .line 43
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/TypefaceSettings;
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

    .line 17
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/TypefaceSettings;->clone()Lcom/ansca/corona/graphics/TypefaceSettings;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/ansca/corona/graphics/TypefaceSettings;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_3
    return v1

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 145
    :cond_5
    iget-boolean v2, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsBold:Z

    iget-boolean v3, p1, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsBold:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsItalic:Z

    iget-boolean p1, p1, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsItalic:Z

    if-eq v2, p1, :cond_6

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 164
    instance-of v0, p1, Lcom/ansca/corona/graphics/TypefaceSettings;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 167
    :cond_0
    check-cast p1, Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/TypefaceSettings;->equals(Lcom/ansca/corona/graphics/TypefaceSettings;)Z

    move-result p1

    return p1
.end method

.method public getAndroidTypefaceStyle()I
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsBold:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsItalic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/TypefaceSettings;->getAndroidTypefaceStyle()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isBold()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsBold:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsItalic:Z

    return v0
.end method

.method public setIsBold(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsBold:Z

    return-void
.end method

.method public setIsItalic(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fIsItalic:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ansca/corona/graphics/TypefaceSettings;->fName:Ljava/lang/String;

    return-void
.end method
