.class public Lcom/ansca/corona/input/KeyPhase;
.super Ljava/lang/Object;
.source "KeyPhase.java"


# static fields
.field public static final DOWN:Lcom/ansca/corona/input/KeyPhase;

.field public static final UP:Lcom/ansca/corona/input/KeyPhase;


# instance fields
.field private fAndroidNumericId:I

.field private fCoronaNumericId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/ansca/corona/input/KeyPhase;

    const/4 v1, 0x0

    const-string v2, "down"

    invoke-direct {v0, v1, v1, v2}, Lcom/ansca/corona/input/KeyPhase;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/KeyPhase;->DOWN:Lcom/ansca/corona/input/KeyPhase;

    .line 50
    new-instance v0, Lcom/ansca/corona/input/KeyPhase;

    const/4 v1, 0x1

    const-string v2, "up"

    invoke-direct {v0, v1, v1, v2}, Lcom/ansca/corona/input/KeyPhase;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/KeyPhase;->UP:Lcom/ansca/corona/input/KeyPhase;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/ansca/corona/input/KeyPhase;->fAndroidNumericId:I

    .line 41
    iput p2, p0, Lcom/ansca/corona/input/KeyPhase;->fCoronaNumericId:I

    .line 42
    iput-object p3, p0, Lcom/ansca/corona/input/KeyPhase;->fCoronaStringId:Ljava/lang/String;

    return-void
.end method

.method public static from(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/KeyPhase;
    .locals 0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    invoke-static {p0}, Lcom/ansca/corona/input/KeyPhase;->fromKeyEventAction(I)Lcom/ansca/corona/input/KeyPhase;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static fromKeyEventAction(I)Lcom/ansca/corona/input/KeyPhase;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 111
    sget-object p0, Lcom/ansca/corona/input/KeyPhase;->UP:Lcom/ansca/corona/input/KeyPhase;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ansca/corona/input/KeyPhase;->DOWN:Lcom/ansca/corona/input/KeyPhase;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public toCoronaNumericId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/ansca/corona/input/KeyPhase;->fCoronaNumericId:I

    return v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ansca/corona/input/KeyPhase;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toKeyEventAction()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/ansca/corona/input/KeyPhase;->fAndroidNumericId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ansca/corona/input/KeyPhase;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
