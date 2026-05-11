.class public Lcom/ansca/corona/CoronaStatusBarSettings;
.super Ljava/lang/Object;
.source "CoronaStatusBarSettings.java"


# static fields
.field public static final DARK:Lcom/ansca/corona/CoronaStatusBarSettings;

.field public static final DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

.field public static final DEFAULT:Lcom/ansca/corona/CoronaStatusBarSettings;

.field public static final HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

.field public static final LIGHT_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

.field public static final TRANSLUCENT:Lcom/ansca/corona/CoronaStatusBarSettings;


# instance fields
.field private fValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/ansca/corona/CoronaStatusBarSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaStatusBarSettings;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    .line 14
    new-instance v0, Lcom/ansca/corona/CoronaStatusBarSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaStatusBarSettings;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->DEFAULT:Lcom/ansca/corona/CoronaStatusBarSettings;

    .line 15
    new-instance v0, Lcom/ansca/corona/CoronaStatusBarSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaStatusBarSettings;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->TRANSLUCENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    .line 16
    new-instance v0, Lcom/ansca/corona/CoronaStatusBarSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaStatusBarSettings;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK:Lcom/ansca/corona/CoronaStatusBarSettings;

    .line 17
    new-instance v0, Lcom/ansca/corona/CoronaStatusBarSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaStatusBarSettings;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->LIGHT_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    .line 18
    new-instance v0, Lcom/ansca/corona/CoronaStatusBarSettings;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaStatusBarSettings;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/ansca/corona/CoronaStatusBarSettings;->fValue:I

    return-void
.end method

.method public static fromCoronaIntId(I)Lcom/ansca/corona/CoronaStatusBarSettings;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    sget-object p0, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object p0

    .line 42
    :cond_1
    sget-object p0, Lcom/ansca/corona/CoronaStatusBarSettings;->LIGHT_TRANSPARENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object p0

    .line 40
    :cond_2
    sget-object p0, Lcom/ansca/corona/CoronaStatusBarSettings;->DARK:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object p0

    .line 38
    :cond_3
    sget-object p0, Lcom/ansca/corona/CoronaStatusBarSettings;->TRANSLUCENT:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object p0

    .line 36
    :cond_4
    sget-object p0, Lcom/ansca/corona/CoronaStatusBarSettings;->DEFAULT:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object p0

    .line 34
    :cond_5
    sget-object p0, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object p0
.end method

.method private toIntegerValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/ansca/corona/CoronaStatusBarSettings;->fValue:I

    return v0
.end method


# virtual methods
.method public toCoronaIntId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/ansca/corona/CoronaStatusBarSettings;->fValue:I

    return v0
.end method
