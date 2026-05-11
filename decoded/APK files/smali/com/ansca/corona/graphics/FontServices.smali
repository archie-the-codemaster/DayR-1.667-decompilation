.class public Lcom/ansca/corona/graphics/FontServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "FontServices.java"


# static fields
.field private static sTypefaceCollection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ansca/corona/graphics/TypefaceInfo;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/graphics/FontServices;->sTypefaceCollection:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fetchAllSystemFontNames()[Ljava/lang/String;
    .locals 7

    .line 144
    new-instance v0, Lcom/ansca/corona/graphics/FontServices$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/graphics/FontServices$1;-><init>(Lcom/ansca/corona/graphics/FontServices;)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/fonts/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ttf"

    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public fetchTypefaceFor(Lcom/ansca/corona/graphics/TypefaceInfo;)Landroid/graphics/Typeface;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 62
    :cond_0
    sget-object v1, Lcom/ansca/corona/graphics/FontServices;->sTypefaceCollection:Ljava/util/HashMap;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v2, Lcom/ansca/corona/graphics/FontServices;->sTypefaceCollection:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    return-object v2

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 75
    :try_start_1
    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v3, Lcom/ansca/corona/storage/FileServices;

    invoke-static {}, Lcom/ansca/corona/graphics/FontServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ansca/corona/storage/FileServices;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v3, v1}, Lcom/ansca/corona/storage/FileServices;->doesAssetFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ttf"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v3, v1}, Lcom/ansca/corona/storage/FileServices;->doesAssetFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".otf"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v3, v1}, Lcom/ansca/corona/storage/FileServices;->doesAssetFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v3, v1}, Lcom/ansca/corona/storage/FileServices;->extractAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 90
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 99
    :try_start_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 110
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: Could not load font "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Using default."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    if-nez v2, :cond_7

    .line 116
    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->isBold()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_6
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_2
    move-object v2, v1

    if-nez v2, :cond_7

    .line 118
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ansca/corona/graphics/TypefaceInfo;->getAndroidTypefaceStyle()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    .line 124
    sget-object v0, Lcom/ansca/corona/graphics/FontServices;->sTypefaceCollection:Ljava/util/HashMap;

    monitor-enter v0

    .line 125
    :try_start_3
    sget-object v1, Lcom/ansca/corona/graphics/FontServices;->sTypefaceCollection:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_8
    :goto_3
    return-object v2

    :catchall_1
    move-exception p1

    .line 64
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public fetchTypefaceFor(Lcom/ansca/corona/graphics/TypefaceSettings;)Landroid/graphics/Typeface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    new-instance v0, Lcom/ansca/corona/graphics/TypefaceInfo;

    invoke-direct {v0, p1}, Lcom/ansca/corona/graphics/TypefaceInfo;-><init>(Lcom/ansca/corona/graphics/TypefaceSettings;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/graphics/FontServices;->fetchTypefaceFor(Lcom/ansca/corona/graphics/TypefaceInfo;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public getFontMetrics(Ljava/lang/String;FZ)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/ansca/corona/graphics/FontSettings;

    invoke-direct {v0}, Lcom/ansca/corona/graphics/FontSettings;-><init>()V

    .line 167
    invoke-virtual {v0, p1}, Lcom/ansca/corona/graphics/FontSettings;->setName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p2}, Lcom/ansca/corona/graphics/FontSettings;->setPointSize(F)V

    .line 169
    invoke-virtual {v0, p3}, Lcom/ansca/corona/graphics/FontSettings;->setIsBold(Z)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/ansca/corona/graphics/FontServices;->fetchTypefaceFor(Lcom/ansca/corona/graphics/TypefaceSettings;)Landroid/graphics/Typeface;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    const/16 p3, 0xff

    .line 177
    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/text/TextPaint;->setARGB(IIII)V

    const/4 p3, 0x1

    .line 178
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 179
    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/FontSettings;->getPointSize()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 183
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 184
    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 185
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p3, p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v0, "ascent"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    neg-float p3, p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v0, "descent"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v0, "leading"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p3, v0

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
