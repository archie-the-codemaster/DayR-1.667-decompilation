.class public Lcom/ansca/corona/graphics/TextRenderer;
.super Ljava/lang/Object;
.source "TextRenderer.java"


# static fields
.field private static sTextPaintCollection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/graphics/Typeface;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fBaselineOffset:F

.field private fClipHeight:I

.field private fClipWidth:I

.field private fContext:Landroid/content/Context;

.field private fFontSettings:Lcom/ansca/corona/graphics/FontSettings;

.field private fHorizontalAlignment:Lcom/ansca/corona/graphics/HorizontalAlignment;

.field private fText:Ljava/lang/String;

.field private fWrapWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/graphics/TextRenderer;->sTextPaintCollection:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fContext:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/ansca/corona/graphics/FontSettings;

    invoke-direct {p1}, Lcom/ansca/corona/graphics/FontSettings;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fFontSettings:Lcom/ansca/corona/graphics/FontSettings;

    .line 56
    sget-object p1, Lcom/ansca/corona/graphics/HorizontalAlignment;->LEFT:Lcom/ansca/corona/graphics/HorizontalAlignment;

    iput-object p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fHorizontalAlignment:Lcom/ansca/corona/graphics/HorizontalAlignment;

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fWrapWidth:I

    .line 58
    iput p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipWidth:I

    .line 59
    iput p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipHeight:I

    const-string p1, ""

    .line 60
    iput-object p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fText:Ljava/lang/String;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .line 219
    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fFontSettings:Lcom/ansca/corona/graphics/FontSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/FontSettings;->getPointSize()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 224
    :cond_0
    new-instance v0, Lcom/ansca/corona/graphics/FontServices;

    iget-object v2, p0, Lcom/ansca/corona/graphics/TextRenderer;->fContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/ansca/corona/graphics/FontServices;-><init>(Landroid/content/Context;)V

    .line 228
    iget-object v2, p0, Lcom/ansca/corona/graphics/TextRenderer;->fFontSettings:Lcom/ansca/corona/graphics/FontSettings;

    invoke-virtual {v0, v2}, Lcom/ansca/corona/graphics/FontServices;->fetchTypefaceFor(Lcom/ansca/corona/graphics/TypefaceSettings;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 235
    :cond_1
    sget-object v2, Lcom/ansca/corona/graphics/TextRenderer;->sTextPaintCollection:Ljava/util/HashMap;

    monitor-enter v2

    .line 237
    :try_start_0
    sget-object v3, Lcom/ansca/corona/graphics/TextRenderer;->sTextPaintCollection:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    .line 238
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v3, :cond_2

    .line 241
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    const/16 v4, 0xff

    .line 242
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 243
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 244
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 245
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 246
    sget-object v4, Lcom/ansca/corona/graphics/TextRenderer;->sTextPaintCollection:Ljava/util/HashMap;

    monitor-enter v4

    .line 247
    :try_start_1
    sget-object v5, Lcom/ansca/corona/graphics/TextRenderer;->sTextPaintCollection:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 252
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fFontSettings:Lcom/ansca/corona/graphics/FontSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/graphics/FontSettings;->getPointSize()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 255
    iget v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fWrapWidth:I

    if-gtz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fText:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v0, v4

    float-to-int v0, v0

    if-ge v0, v2, :cond_3

    const/4 v0, 0x1

    .line 266
    :cond_3
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v6, p0, Lcom/ansca/corona/graphics/TextRenderer;->fText:Ljava/lang/String;

    iget-object v5, p0, Lcom/ansca/corona/graphics/TextRenderer;->fHorizontalAlignment:Lcom/ansca/corona/graphics/HorizontalAlignment;

    .line 267
    invoke-virtual {v5}, Lcom/ansca/corona/graphics/HorizontalAlignment;->toAndroidTextLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    move-object v5, v4

    move-object v7, v3

    move v8, v0

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 271
    iget v5, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipHeight:I

    if-gtz v5, :cond_4

    .line 273
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    if-ge v5, v2, :cond_4

    const/4 v5, 0x1

    .line 278
    :cond_4
    iget v2, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipWidth:I

    if-lez v2, :cond_5

    if-le v0, v2, :cond_5

    move v0, v2

    .line 281
    :cond_5
    iget v2, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipHeight:I

    if-lez v2, :cond_6

    if-le v5, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v5

    .line 287
    :goto_1
    rem-int/lit8 v5, v0, 0x4

    if-lez v5, :cond_7

    rsub-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    .line 290
    iget v5, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipWidth:I

    if-le v0, v5, :cond_7

    add-int/lit8 v0, v0, -0x4

    .line 298
    :cond_7
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 299
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 301
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fBaselineOffset:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1

    :catchall_1
    move-exception v0

    .line 238
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    :goto_3
    return-object v1
.end method

.method public getBaselineOffset()F
    .locals 1

    .line 209
    iget v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fBaselineOffset:F

    return v0
.end method

.method public getClipHeight()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipHeight:I

    return v0
.end method

.method public getClipWidth()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipWidth:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFontSettings()Lcom/ansca/corona/graphics/FontSettings;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fFontSettings:Lcom/ansca/corona/graphics/FontSettings;

    return-object v0
.end method

.method public getHorizontalAlignment()Lcom/ansca/corona/graphics/HorizontalAlignment;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fHorizontalAlignment:Lcom/ansca/corona/graphics/HorizontalAlignment;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fText:Ljava/lang/String;

    return-object v0
.end method

.method public getWrapWidth()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/ansca/corona/graphics/TextRenderer;->fWrapWidth:I

    return v0
.end method

.method public setClipHeight(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 186
    :cond_0
    iput p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipHeight:I

    return-void
.end method

.method public setClipWidth(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 154
    :cond_0
    iput p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fClipWidth:I

    return-void
.end method

.method public setHorizontalAlignment(Lcom/ansca/corona/graphics/HorizontalAlignment;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fHorizontalAlignment:Lcom/ansca/corona/graphics/HorizontalAlignment;

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fText:Ljava/lang/String;

    return-void
.end method

.method public setWrapWidth(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 122
    :cond_0
    iput p1, p0, Lcom/ansca/corona/graphics/TextRenderer;->fWrapWidth:I

    return-void
.end method
