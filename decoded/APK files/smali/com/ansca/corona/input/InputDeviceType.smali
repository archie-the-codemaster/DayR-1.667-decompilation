.class public Lcom/ansca/corona/input/InputDeviceType;
.super Ljava/lang/Object;
.source "InputDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/InputDeviceType$ApiLevel9;
    }
.end annotation


# static fields
.field public static final DPAD:Lcom/ansca/corona/input/InputDeviceType;

.field public static final GAMEPAD:Lcom/ansca/corona/input/InputDeviceType;

.field public static final JOYSTICK:Lcom/ansca/corona/input/InputDeviceType;

.field public static final KEYBOARD:Lcom/ansca/corona/input/InputDeviceType;

.field public static final MOUSE:Lcom/ansca/corona/input/InputDeviceType;

.field public static final STYLUS:Lcom/ansca/corona/input/InputDeviceType;

.field public static final TOUCHPAD:Lcom/ansca/corona/input/InputDeviceType;

.field public static final TOUCHSCREEN:Lcom/ansca/corona/input/InputDeviceType;

.field public static final TRACKBALL:Lcom/ansca/corona/input/InputDeviceType;

.field public static final UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

.field private static sTypeCollection:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;


# instance fields
.field private fAndroidSourceId:I

.field private fCoronaIntegerId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    const-class v0, Lcom/ansca/corona/input/InputDeviceType;

    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const/4 v2, 0x0

    const-string v3, "unknown"

    invoke-direct {v1, v2, v2, v3}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    .line 35
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const/4 v3, 0x1

    const/16 v4, 0x101

    const-string v5, "keyboard"

    invoke-direct {v1, v4, v3, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->KEYBOARD:Lcom/ansca/corona/input/InputDeviceType;

    .line 38
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const/16 v3, 0x2002

    const/4 v4, 0x2

    const-string v5, "mouse"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->MOUSE:Lcom/ansca/corona/input/InputDeviceType;

    .line 41
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const/16 v3, 0x4002

    const/4 v4, 0x3

    const-string v5, "stylus"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->STYLUS:Lcom/ansca/corona/input/InputDeviceType;

    .line 44
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const v3, 0x10004

    const/4 v4, 0x4

    const-string v5, "trackball"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->TRACKBALL:Lcom/ansca/corona/input/InputDeviceType;

    .line 52
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const v3, 0x100008

    const/4 v4, 0x5

    const-string v5, "touchpad"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->TOUCHPAD:Lcom/ansca/corona/input/InputDeviceType;

    .line 55
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const/16 v3, 0x1002

    const/4 v4, 0x6

    const-string v5, "touchscreen"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->TOUCHSCREEN:Lcom/ansca/corona/input/InputDeviceType;

    .line 58
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const v3, 0x1000010

    const/4 v4, 0x7

    const-string v5, "joystick"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->JOYSTICK:Lcom/ansca/corona/input/InputDeviceType;

    .line 61
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const/16 v3, 0x401

    const/16 v4, 0x8

    const-string v5, "gamepad"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->GAMEPAD:Lcom/ansca/corona/input/InputDeviceType;

    .line 64
    new-instance v1, Lcom/ansca/corona/input/InputDeviceType;

    const/16 v3, 0x201

    const/16 v4, 0x9

    const-string v5, "directionalPad"

    invoke-direct {v1, v3, v4, v5}, Lcom/ansca/corona/input/InputDeviceType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->DPAD:Lcom/ansca/corona/input/InputDeviceType;

    const/4 v1, 0x0

    .line 67
    sput-object v1, Lcom/ansca/corona/input/InputDeviceType;->sTypeCollection:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    .line 73
    new-instance v3, Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-direct {v3}, Lcom/ansca/corona/input/InputDeviceTypeSet;-><init>()V

    .line 75
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 76
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ansca/corona/input/InputDeviceType;

    if-eqz v6, :cond_0

    .line 79
    invoke-virtual {v3, v6}, Lcom/ansca/corona/input/InputDeviceTypeSet;->add(Lcom/ansca/corona/input/InputDeviceType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :catch_0
    :cond_1
    new-instance v0, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    invoke-direct {v0, v3}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;-><init>(Lcom/ansca/corona/input/InputDeviceTypeSet;)V

    sput-object v0, Lcom/ansca/corona/input/InputDeviceType;->sTypeCollection:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/ansca/corona/input/InputDeviceType;->fAndroidSourceId:I

    .line 96
    iput p2, p0, Lcom/ansca/corona/input/InputDeviceType;->fCoronaIntegerId:I

    .line 97
    iput-object p3, p0, Lcom/ansca/corona/input/InputDeviceType;->fCoronaStringId:Ljava/lang/String;

    return-void
.end method

.method public static collectionFromAndroidSourcesBitField(I)Lcom/ansca/corona/input/InputDeviceTypeSet;
    .locals 5

    .line 254
    new-instance v0, Lcom/ansca/corona/input/InputDeviceTypeSet;

    invoke-direct {v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;-><init>()V

    .line 255
    sget-object v1, Lcom/ansca/corona/input/InputDeviceType;->sTypeCollection:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    invoke-virtual {v1}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceType;

    .line 256
    sget-object v3, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v2, v3, :cond_0

    .line 257
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v3

    and-int/2addr v3, p0

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 259
    invoke-virtual {v0, v2}, Lcom/ansca/corona/input/InputDeviceTypeSet;->add(Lcom/ansca/corona/input/InputDeviceType;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceTypeSet;->size()I

    move-result p0

    if-gtz p0, :cond_2

    .line 265
    sget-object p0, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    invoke-virtual {v0, p0}, Lcom/ansca/corona/input/InputDeviceTypeSet;->add(Lcom/ansca/corona/input/InputDeviceType;)V

    :cond_2
    return-object v0
.end method

.method public static from(Landroid/view/KeyEvent;)Lcom/ansca/corona/input/InputDeviceType;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 201
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceType$ApiLevel9;->getSourceIdFrom(Landroid/view/InputEvent;)I

    move-result p0

    .line 202
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceType;->fromAndroidSourceId(I)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object p0

    goto :goto_0

    .line 206
    :cond_1
    sget-object p0, Lcom/ansca/corona/input/InputDeviceType;->KEYBOARD:Lcom/ansca/corona/input/InputDeviceType;

    :goto_0
    return-object p0
.end method

.method public static from(Landroid/view/MotionEvent;)Lcom/ansca/corona/input/InputDeviceType;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 170
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceType$ApiLevel9;->getSourceIdFrom(Landroid/view/InputEvent;)I

    move-result p0

    .line 171
    invoke-static {p0}, Lcom/ansca/corona/input/InputDeviceType;->fromAndroidSourceId(I)Lcom/ansca/corona/input/InputDeviceType;

    move-result-object p0

    goto :goto_0

    .line 175
    :cond_1
    sget-object p0, Lcom/ansca/corona/input/InputDeviceType;->TOUCHSCREEN:Lcom/ansca/corona/input/InputDeviceType;

    :goto_0
    return-object p0
.end method

.method public static fromAndroidSourceId(I)Lcom/ansca/corona/input/InputDeviceType;
    .locals 5

    .line 227
    sget-object v0, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    .line 228
    sget-object v1, Lcom/ansca/corona/input/InputDeviceType;->sTypeCollection:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    invoke-virtual {v1}, Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/input/InputDeviceType;

    .line 229
    sget-object v3, Lcom/ansca/corona/input/InputDeviceType;->UNKNOWN:Lcom/ansca/corona/input/InputDeviceType;

    if-eq v2, v3, :cond_0

    .line 230
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v3

    and-int/2addr v3, p0

    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 231
    invoke-virtual {v2}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v3

    invoke-virtual {v0}, Lcom/ansca/corona/input/InputDeviceType;->toAndroidSourceId()I

    move-result v4

    if-le v3, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCollection()Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;
    .locals 1

    .line 147
    sget-object v0, Lcom/ansca/corona/input/InputDeviceType;->sTypeCollection:Lcom/ansca/corona/input/ReadOnlyInputDeviceTypeSet;

    return-object v0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceType;->fAndroidSourceId:I

    return v0
.end method

.method public toAndroidSourceId()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceType;->fAndroidSourceId:I

    return v0
.end method

.method public toCoronaIntegerId()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/ansca/corona/input/InputDeviceType;->fCoronaIntegerId:I

    return v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceType;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ansca/corona/input/InputDeviceType;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
