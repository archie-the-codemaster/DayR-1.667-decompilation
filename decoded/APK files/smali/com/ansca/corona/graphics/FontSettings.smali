.class public Lcom/ansca/corona/graphics/FontSettings;
.super Lcom/ansca/corona/graphics/TypefaceSettings;
.source "FontSettings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private fPointSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/ansca/corona/graphics/TypefaceSettings;-><init>()V

    const/high16 v0, 0x41000000    # 8.0f

    .line 22
    iput v0, p0, Lcom/ansca/corona/graphics/FontSettings;->fPointSize:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/graphics/FontSettings;
    .locals 1

    .line 33
    :try_start_0
    invoke-super {p0}, Lcom/ansca/corona/graphics/TypefaceSettings;->clone()Lcom/ansca/corona/graphics/TypefaceSettings;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/graphics/FontSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ansca/corona/graphics/TypefaceSettings;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/FontSettings;->clone()Lcom/ansca/corona/graphics/FontSettings;

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

    .line 14
    invoke-virtual {p0}, Lcom/ansca/corona/graphics/FontSettings;->clone()Lcom/ansca/corona/graphics/FontSettings;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/ansca/corona/graphics/FontSettings;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 80
    :cond_1
    iget v1, p0, Lcom/ansca/corona/graphics/FontSettings;->fPointSize:F

    iget v2, p1, Lcom/ansca/corona/graphics/FontSettings;->fPointSize:F

    sub-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v3, v1, v2

    if-gez v3, :cond_3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    invoke-super {p0, p1}, Lcom/ansca/corona/graphics/TypefaceSettings;->equals(Lcom/ansca/corona/graphics/TypefaceSettings;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 100
    instance-of v0, p1, Lcom/ansca/corona/graphics/FontSettings;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_0
    check-cast p1, Lcom/ansca/corona/graphics/FontSettings;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/graphics/FontSettings;->equals(Lcom/ansca/corona/graphics/FontSettings;)Z

    move-result p1

    return p1
.end method

.method public getPointSize()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/ansca/corona/graphics/FontSettings;->fPointSize:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/ansca/corona/graphics/TypefaceSettings;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/ansca/corona/graphics/FontSettings;->fPointSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setPointSize(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    :cond_0
    iput p1, p0, Lcom/ansca/corona/graphics/FontSettings;->fPointSize:F

    return-void
.end method
