.class public final Lcom/ansca/corona/WindowOrientation;
.super Ljava/lang/Object;
.source "WindowOrientation.java"


# static fields
.field public static final LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

.field public static final LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

.field public static final PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

.field public static final PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

.field public static final UNKNOWN:Lcom/ansca/corona/WindowOrientation;


# instance fields
.field private fCoronaIntegerId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x0

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    .line 50
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x1

    const-string v2, "portrait"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 53
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x2

    const-string v2, "landscapeRight"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 56
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x3

    const-string v2, "portraitUpsideDown"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

    .line 59
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x4

    const-string v2, "landscapeLeft"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 41
    iput p1, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaIntegerId:I

    .line 42
    iput-object p2, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaStringId:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;
    .locals 2

    if-eqz p0, :cond_3

    const-string v0, "window"

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 161
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    .line 177
    :goto_0
    invoke-static {p0, v0}, Lcom/ansca/corona/WindowOrientation;->fromDegrees(Landroid/content/Context;I)Lcom/ansca/corona/WindowOrientation;

    move-result-object p0

    return-object p0

    .line 154
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static fromDegrees(Landroid/content/Context;I)Lcom/ansca/corona/WindowOrientation;
    .locals 4

    if-eqz p0, :cond_7

    const-string v0, "window"

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 202
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    if-le v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    if-ge v0, p0, :cond_1

    :goto_0
    if-nez v2, :cond_3

    add-int/lit8 p1, p1, 0x5a

    .line 216
    rem-int/lit16 p1, p1, 0x168

    :cond_3
    const/16 p0, 0x2d

    const/16 v0, 0x87

    if-lt p1, p0, :cond_4

    if-ge p1, v0, :cond_4

    .line 222
    sget-object p0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    goto :goto_1

    :cond_4
    const/16 p0, 0xe1

    if-lt p1, v0, :cond_5

    if-ge p1, p0, :cond_5

    .line 225
    sget-object p0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

    goto :goto_1

    :cond_5
    if-lt p1, p0, :cond_6

    const/16 p0, 0x13b

    if-ge p1, p0, :cond_6

    .line 228
    sget-object p0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    goto :goto_1

    .line 231
    :cond_6
    sget-object p0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    :goto_1
    return-object p0

    .line 193
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public isLandscape()Z
    .locals 1

    .line 79
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupportedBy(Landroid/app/Activity;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    .line 107
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result v1

    goto :goto_0

    .line 112
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/ansca/corona/WindowOrientation;->isLandscape()Z

    move-result v1

    :cond_2
    :goto_0
    :pswitch_2
    return v1

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toCoronaIntegerId()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaIntegerId:I

    return v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
