.class public Lcom/ansca/corona/graphics/HorizontalAlignment;
.super Ljava/lang/Object;
.source "HorizontalAlignment.java"


# static fields
.field public static final CENTER:Lcom/ansca/corona/graphics/HorizontalAlignment;

.field public static final LEFT:Lcom/ansca/corona/graphics/HorizontalAlignment;

.field public static final RIGHT:Lcom/ansca/corona/graphics/HorizontalAlignment;


# instance fields
.field private fAndroidGravityBitField:I

.field private fAndroidPaintAlignment:Landroid/graphics/Paint$Align;

.field private fAndroidTextLayoutAlignment:Landroid/text/Layout$Alignment;

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lcom/ansca/corona/graphics/HorizontalAlignment;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    const-string v3, "left"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ansca/corona/graphics/HorizontalAlignment;-><init>(Ljava/lang/String;ILandroid/text/Layout$Alignment;Landroid/graphics/Paint$Align;)V

    sput-object v0, Lcom/ansca/corona/graphics/HorizontalAlignment;->LEFT:Lcom/ansca/corona/graphics/HorizontalAlignment;

    .line 63
    new-instance v0, Lcom/ansca/corona/graphics/HorizontalAlignment;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const-string v3, "center"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ansca/corona/graphics/HorizontalAlignment;-><init>(Ljava/lang/String;ILandroid/text/Layout$Alignment;Landroid/graphics/Paint$Align;)V

    sput-object v0, Lcom/ansca/corona/graphics/HorizontalAlignment;->CENTER:Lcom/ansca/corona/graphics/HorizontalAlignment;

    .line 69
    new-instance v0, Lcom/ansca/corona/graphics/HorizontalAlignment;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    const-string v3, "right"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ansca/corona/graphics/HorizontalAlignment;-><init>(Ljava/lang/String;ILandroid/text/Layout$Alignment;Landroid/graphics/Paint$Align;)V

    sput-object v0, Lcom/ansca/corona/graphics/HorizontalAlignment;->RIGHT:Lcom/ansca/corona/graphics/HorizontalAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/text/Layout$Alignment;Landroid/graphics/Paint$Align;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fCoronaStringId:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fAndroidGravityBitField:I

    .line 51
    iput-object p3, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fAndroidTextLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 52
    iput-object p4, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fAndroidPaintAlignment:Landroid/graphics/Paint$Align;

    return-void
.end method

.method public static fromCoronaStringId(Ljava/lang/String;)Lcom/ansca/corona/graphics/HorizontalAlignment;
    .locals 7

    .line 131
    const-class v0, Lcom/ansca/corona/graphics/HorizontalAlignment;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 132
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ansca/corona/graphics/HorizontalAlignment;

    .line 134
    iget-object v6, v5, Lcom/ansca/corona/graphics/HorizontalAlignment;->fCoronaStringId:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public toAndroidGravityBitField()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fAndroidGravityBitField:I

    return v0
.end method

.method public toAndroidPaintAlignment()Landroid/graphics/Paint$Align;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fAndroidPaintAlignment:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public toAndroidTextLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fAndroidTextLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ansca/corona/graphics/HorizontalAlignment;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
