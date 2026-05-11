.class public Lcom/ansca/corona/input/TouchPhase;
.super Ljava/lang/Object;
.source "TouchPhase.java"


# static fields
.field public static final BEGAN:Lcom/ansca/corona/input/TouchPhase;

.field public static final CANCELED:Lcom/ansca/corona/input/TouchPhase;

.field public static final ENDED:Lcom/ansca/corona/input/TouchPhase;

.field public static final MOVED:Lcom/ansca/corona/input/TouchPhase;


# instance fields
.field private fCoronaNumericId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/ansca/corona/input/TouchPhase;

    const/4 v1, 0x0

    const-string v2, "began"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/TouchPhase;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/TouchPhase;->BEGAN:Lcom/ansca/corona/input/TouchPhase;

    .line 45
    new-instance v0, Lcom/ansca/corona/input/TouchPhase;

    const/4 v1, 0x1

    const-string v2, "moved"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/TouchPhase;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/TouchPhase;->MOVED:Lcom/ansca/corona/input/TouchPhase;

    .line 52
    new-instance v0, Lcom/ansca/corona/input/TouchPhase;

    const/4 v1, 0x3

    const-string v2, "ended"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/TouchPhase;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/TouchPhase;->ENDED:Lcom/ansca/corona/input/TouchPhase;

    .line 55
    new-instance v0, Lcom/ansca/corona/input/TouchPhase;

    const/4 v1, 0x4

    const-string v2, "cancelled"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/input/TouchPhase;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/TouchPhase;->CANCELED:Lcom/ansca/corona/input/TouchPhase;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/ansca/corona/input/TouchPhase;->fCoronaNumericId:I

    .line 37
    iput-object p2, p0, Lcom/ansca/corona/input/TouchPhase;->fCoronaStringId:Ljava/lang/String;

    return-void
.end method

.method public static from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/TouchPhase;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_3

    return-object v0

    .line 113
    :cond_1
    sget-object p0, Lcom/ansca/corona/input/TouchPhase;->CANCELED:Lcom/ansca/corona/input/TouchPhase;

    return-object p0

    .line 106
    :cond_2
    sget-object p0, Lcom/ansca/corona/input/TouchPhase;->MOVED:Lcom/ansca/corona/input/TouchPhase;

    return-object p0

    .line 110
    :cond_3
    sget-object p0, Lcom/ansca/corona/input/TouchPhase;->ENDED:Lcom/ansca/corona/input/TouchPhase;

    return-object p0

    .line 103
    :cond_4
    sget-object p0, Lcom/ansca/corona/input/TouchPhase;->BEGAN:Lcom/ansca/corona/input/TouchPhase;

    return-object p0
.end method


# virtual methods
.method public toCoronaNumericId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/ansca/corona/input/TouchPhase;->fCoronaNumericId:I

    return v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ansca/corona/input/TouchPhase;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ansca/corona/input/TouchPhase;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
