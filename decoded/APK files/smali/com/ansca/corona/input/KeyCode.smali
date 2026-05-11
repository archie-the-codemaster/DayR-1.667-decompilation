.class public Lcom/ansca/corona/input/KeyCode;
.super Ljava/lang/Object;
.source "KeyCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/KeyCode$ApiLevel12;
    }
.end annotation


# instance fields
.field private fAndroidNumericId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/ansca/corona/input/KeyCode;->fAndroidNumericId:I

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/ansca/corona/input/KeyCode;->fCoronaStringId:Ljava/lang/String;

    return-void
.end method

.method public static from(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/KeyCode;
    .locals 0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Lcom/ansca/corona/input/KeyCode;->fromAndroidKeyCode(I)Lcom/ansca/corona/input/KeyCode;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static fromAndroidKeyCode(I)Lcom/ansca/corona/input/KeyCode;
    .locals 1

    .line 116
    new-instance v0, Lcom/ansca/corona/input/KeyCode;

    invoke-direct {v0, p0}, Lcom/ansca/corona/input/KeyCode;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public toAndroidKeyCode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/ansca/corona/input/KeyCode;->fAndroidNumericId:I

    return v0
.end method

.method public toAndroidSymbolicName()Ljava/lang/String;
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 61
    iget v0, p0, Lcom/ansca/corona/input/KeyCode;->fAndroidNumericId:I

    invoke-static {v0}, Lcom/ansca/corona/input/KeyCode$ApiLevel12;->getSymbolicNameFromKeyCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    iget v0, p0, Lcom/ansca/corona/input/KeyCode;->fAndroidNumericId:I

    if-lez v0, :cond_1

    .line 64
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 65
    iget v0, p0, Lcom/ansca/corona/input/KeyCode;->fAndroidNumericId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "KEYCODE_UNKNOWN"

    :goto_0
    return-object v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ansca/corona/input/KeyCode;->fCoronaStringId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    iget v0, p0, Lcom/ansca/corona/input/KeyCode;->fAndroidNumericId:I

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->getKeyNameFromKeyCode(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/input/KeyCode;->fCoronaStringId:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/ansca/corona/input/KeyCode;->fCoronaStringId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 81
    iput-object v0, p0, Lcom/ansca/corona/input/KeyCode;->fCoronaStringId:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/input/KeyCode;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/ansca/corona/input/KeyCode;->toCoronaStringId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
