.class public Lcom/ansca/corona/input/AxisType;
.super Ljava/lang/Object;
.source "AxisType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/input/AxisType$ApiLevel12;
    }
.end annotation


# static fields
.field public static final BRAKE:Lcom/ansca/corona/input/AxisType;

.field public static final GAS:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_1:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_10:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_11:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_12:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_13:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_14:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_15:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_16:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_2:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_3:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_4:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_5:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_6:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_7:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_8:Lcom/ansca/corona/input/AxisType;

.field public static final GENERIC_9:Lcom/ansca/corona/input/AxisType;

.field public static final HAT_X:Lcom/ansca/corona/input/AxisType;

.field public static final HAT_Y:Lcom/ansca/corona/input/AxisType;

.field public static final HORIZONTAL_SCROLL:Lcom/ansca/corona/input/AxisType;

.field public static final HOVER_DISTANCE:Lcom/ansca/corona/input/AxisType;

.field public static final HOVER_MAJOR:Lcom/ansca/corona/input/AxisType;

.field public static final HOVER_MINOR:Lcom/ansca/corona/input/AxisType;

.field public static final LEFT_TRIGGER:Lcom/ansca/corona/input/AxisType;

.field public static final LEFT_X:Lcom/ansca/corona/input/AxisType;

.field public static final LEFT_Y:Lcom/ansca/corona/input/AxisType;

.field public static final ORIENTATION:Lcom/ansca/corona/input/AxisType;

.field public static final PRESSURE:Lcom/ansca/corona/input/AxisType;

.field public static final RIGHT_TRIGGER:Lcom/ansca/corona/input/AxisType;

.field public static final RIGHT_X:Lcom/ansca/corona/input/AxisType;

.field public static final RIGHT_Y:Lcom/ansca/corona/input/AxisType;

.field public static final ROTATION_X:Lcom/ansca/corona/input/AxisType;

.field public static final ROTATION_Y:Lcom/ansca/corona/input/AxisType;

.field public static final ROTATION_Z:Lcom/ansca/corona/input/AxisType;

.field public static final RUDDER:Lcom/ansca/corona/input/AxisType;

.field public static final THROTTLE:Lcom/ansca/corona/input/AxisType;

.field public static final TILT:Lcom/ansca/corona/input/AxisType;

.field public static final TOUCH_MAJOR:Lcom/ansca/corona/input/AxisType;

.field public static final TOUCH_MINOR:Lcom/ansca/corona/input/AxisType;

.field public static final TOUCH_SIZE:Lcom/ansca/corona/input/AxisType;

.field public static final UNKNOWN:Lcom/ansca/corona/input/AxisType;

.field public static final VERTICAL_SCROLL:Lcom/ansca/corona/input/AxisType;

.field public static final WHEEL:Lcom/ansca/corona/input/AxisType;

.field public static final X:Lcom/ansca/corona/input/AxisType;

.field public static final Y:Lcom/ansca/corona/input/AxisType;

.field public static final Z:Lcom/ansca/corona/input/AxisType;

.field private static sTypeCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ansca/corona/input/AxisType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fAndroidIntegerId:I

.field private fCoronaIntegerId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 50
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "unknown"

    invoke-direct {v0, v2, v1, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->UNKNOWN:Lcom/ansca/corona/input/AxisType;

    .line 53
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v3, 0x1

    const-string v4, "x"

    invoke-direct {v0, v1, v3, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->X:Lcom/ansca/corona/input/AxisType;

    .line 56
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v1, 0x2

    const-string v4, "y"

    invoke-direct {v0, v3, v1, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->Y:Lcom/ansca/corona/input/AxisType;

    .line 59
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v3, 0x3

    const/16 v4, 0xb

    const-string v5, "z"

    invoke-direct {v0, v4, v3, v5}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->Z:Lcom/ansca/corona/input/AxisType;

    .line 62
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v5, 0x4

    const/16 v6, 0xc

    const-string v7, "rotationX"

    invoke-direct {v0, v6, v5, v7}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->ROTATION_X:Lcom/ansca/corona/input/AxisType;

    .line 65
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v7, 0x5

    const/16 v8, 0xd

    const-string v9, "rotationY"

    invoke-direct {v0, v8, v7, v9}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->ROTATION_Y:Lcom/ansca/corona/input/AxisType;

    .line 68
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v9, 0x6

    const/16 v10, 0xe

    const-string v11, "rotationZ"

    invoke-direct {v0, v10, v9, v11}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->ROTATION_Z:Lcom/ansca/corona/input/AxisType;

    .line 71
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/4 v11, 0x7

    const-string v12, "leftX"

    invoke-direct {v0, v2, v11, v12}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->LEFT_X:Lcom/ansca/corona/input/AxisType;

    .line 74
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v12, 0x8

    const-string v13, "leftY"

    invoke-direct {v0, v2, v12, v13}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->LEFT_Y:Lcom/ansca/corona/input/AxisType;

    .line 77
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v13, 0x9

    const-string v14, "rightX"

    invoke-direct {v0, v2, v13, v14}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->RIGHT_X:Lcom/ansca/corona/input/AxisType;

    .line 80
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v14, 0xa

    const-string v15, "rightY"

    invoke-direct {v0, v2, v14, v15}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->RIGHT_Y:Lcom/ansca/corona/input/AxisType;

    .line 83
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0xf

    const-string v14, "hatX"

    invoke-direct {v0, v2, v4, v14}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->HAT_X:Lcom/ansca/corona/input/AxisType;

    .line 86
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x10

    const-string v4, "hatY"

    invoke-direct {v0, v2, v6, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->HAT_Y:Lcom/ansca/corona/input/AxisType;

    .line 89
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x11

    const-string v4, "leftTrigger"

    invoke-direct {v0, v2, v8, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->LEFT_TRIGGER:Lcom/ansca/corona/input/AxisType;

    .line 92
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x12

    const-string v4, "rightTrigger"

    invoke-direct {v0, v2, v10, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->RIGHT_TRIGGER:Lcom/ansca/corona/input/AxisType;

    .line 95
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x16

    const/16 v4, 0xf

    const-string v6, "gas"

    invoke-direct {v0, v2, v4, v6}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GAS:Lcom/ansca/corona/input/AxisType;

    .line 98
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x17

    const/16 v4, 0x10

    const-string v6, "brake"

    invoke-direct {v0, v2, v4, v6}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->BRAKE:Lcom/ansca/corona/input/AxisType;

    .line 101
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x15

    const/16 v4, 0x11

    const-string v6, "wheel"

    invoke-direct {v0, v2, v4, v6}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->WHEEL:Lcom/ansca/corona/input/AxisType;

    .line 104
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x14

    const/16 v4, 0x12

    const-string v6, "rudder"

    invoke-direct {v0, v2, v4, v6}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->RUDDER:Lcom/ansca/corona/input/AxisType;

    .line 107
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x13

    const/16 v4, 0x13

    const-string v6, "throttle"

    invoke-direct {v0, v2, v4, v6}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->THROTTLE:Lcom/ansca/corona/input/AxisType;

    .line 110
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x14

    const-string v4, "verticalScroll"

    invoke-direct {v0, v13, v2, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->VERTICAL_SCROLL:Lcom/ansca/corona/input/AxisType;

    .line 113
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0xa

    const/16 v4, 0x15

    const-string v6, "horizontalScroll"

    invoke-direct {v0, v2, v4, v6}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->HORIZONTAL_SCROLL:Lcom/ansca/corona/input/AxisType;

    .line 116
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x16

    const-string v4, "orientation"

    invoke-direct {v0, v12, v2, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->ORIENTATION:Lcom/ansca/corona/input/AxisType;

    .line 119
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x18

    const/16 v4, 0x17

    const-string v6, "hoverDistance"

    invoke-direct {v0, v2, v4, v6}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->HOVER_DISTANCE:Lcom/ansca/corona/input/AxisType;

    .line 125
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const-string v4, "hoverMajor"

    invoke-direct {v0, v9, v2, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->HOVER_MAJOR:Lcom/ansca/corona/input/AxisType;

    .line 131
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x19

    const-string v4, "hoverMinor"

    invoke-direct {v0, v11, v2, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->HOVER_MINOR:Lcom/ansca/corona/input/AxisType;

    .line 134
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x1a

    const-string v4, "touchSize"

    invoke-direct {v0, v3, v2, v4}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->TOUCH_SIZE:Lcom/ansca/corona/input/AxisType;

    .line 140
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x1b

    const-string v3, "touchMajor"

    invoke-direct {v0, v5, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->TOUCH_MAJOR:Lcom/ansca/corona/input/AxisType;

    .line 146
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x1c

    const-string v3, "touchMinor"

    invoke-direct {v0, v7, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->TOUCH_MINOR:Lcom/ansca/corona/input/AxisType;

    .line 152
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v2, 0x1d

    const-string v3, "pressure"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->PRESSURE:Lcom/ansca/corona/input/AxisType;

    .line 155
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x19

    const/16 v2, 0x1e

    const-string v3, "tilt"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->TILT:Lcom/ansca/corona/input/AxisType;

    .line 158
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x20

    const/16 v2, 0x1f

    const-string v3, "generic1"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_1:Lcom/ansca/corona/input/AxisType;

    .line 161
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x21

    const/16 v2, 0x20

    const-string v3, "generic2"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_2:Lcom/ansca/corona/input/AxisType;

    .line 164
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x22

    const/16 v2, 0x21

    const-string v3, "generic3"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_3:Lcom/ansca/corona/input/AxisType;

    .line 167
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x23

    const/16 v2, 0x22

    const-string v3, "generic4"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_4:Lcom/ansca/corona/input/AxisType;

    .line 170
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x24

    const/16 v2, 0x23

    const-string v3, "generic5"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_5:Lcom/ansca/corona/input/AxisType;

    .line 173
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x25

    const/16 v2, 0x24

    const-string v3, "generic6"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_6:Lcom/ansca/corona/input/AxisType;

    .line 176
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x26

    const/16 v2, 0x25

    const-string v3, "generic7"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_7:Lcom/ansca/corona/input/AxisType;

    .line 179
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x27

    const/16 v2, 0x26

    const-string v3, "generic8"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_8:Lcom/ansca/corona/input/AxisType;

    .line 182
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x28

    const/16 v2, 0x27

    const-string v3, "generic9"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_9:Lcom/ansca/corona/input/AxisType;

    .line 185
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x29

    const/16 v2, 0x28

    const-string v3, "generic10"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_10:Lcom/ansca/corona/input/AxisType;

    .line 188
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x2a

    const/16 v2, 0x29

    const-string v3, "generic11"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_11:Lcom/ansca/corona/input/AxisType;

    .line 191
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x2b

    const/16 v2, 0x2a

    const-string v3, "generic12"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_12:Lcom/ansca/corona/input/AxisType;

    .line 194
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x2c

    const/16 v2, 0x2b

    const-string v3, "generic13"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_13:Lcom/ansca/corona/input/AxisType;

    .line 197
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    const-string v3, "generic14"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_14:Lcom/ansca/corona/input/AxisType;

    .line 200
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x2e

    const/16 v2, 0x2d

    const-string v3, "generic15"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_15:Lcom/ansca/corona/input/AxisType;

    .line 203
    new-instance v0, Lcom/ansca/corona/input/AxisType;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    const-string v3, "generic16"

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/input/AxisType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/input/AxisType;->GENERIC_16:Lcom/ansca/corona/input/AxisType;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/ansca/corona/input/AxisType;->fAndroidIntegerId:I

    .line 44
    iput p2, p0, Lcom/ansca/corona/input/AxisType;->fCoronaIntegerId:I

    .line 45
    iput-object p3, p0, Lcom/ansca/corona/input/AxisType;->fCoronaStringId:Ljava/lang/String;

    return-void
.end method

.method public static fromAndroidIntegerId(I)Lcom/ansca/corona/input/AxisType;
    .locals 6

    .line 281
    const-class v0, Lcom/ansca/corona/input/AxisType;

    sget-object v1, Lcom/ansca/corona/input/AxisType;->sTypeCollection:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 283
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ansca/corona/input/AxisType;->sTypeCollection:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 285
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/input/AxisType;

    if-eqz v4, :cond_0

    .line 288
    sget-object v5, Lcom/ansca/corona/input/AxisType;->sTypeCollection:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 294
    :cond_1
    sget-object v0, Lcom/ansca/corona/input/AxisType;->sTypeCollection:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 295
    sget-object p0, Lcom/ansca/corona/input/AxisType;->UNKNOWN:Lcom/ansca/corona/input/AxisType;

    return-object p0

    .line 300
    :cond_2
    sget-object v0, Lcom/ansca/corona/input/AxisType;->sTypeCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/input/AxisType;

    .line 301
    invoke-virtual {v1}, Lcom/ansca/corona/input/AxisType;->toAndroidIntegerId()I

    move-result v2

    if-ne v2, p0, :cond_3

    return-object v1

    .line 307
    :cond_4
    sget-object p0, Lcom/ansca/corona/input/AxisType;->UNKNOWN:Lcom/ansca/corona/input/AxisType;

    return-object p0
.end method


# virtual methods
.method public hasAndroidIntegerId()Z
    .locals 1

    .line 215
    iget v0, p0, Lcom/ansca/corona/input/AxisType;->fAndroidIntegerId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toAndroidIntegerId()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/ansca/corona/input/AxisType;->fAndroidIntegerId:I

    return v0
.end method

.method public toAndroidSymbolicName()Ljava/lang/String;
    .locals 2

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 238
    iget v0, p0, Lcom/ansca/corona/input/AxisType;->fAndroidIntegerId:I

    invoke-static {v0}, Lcom/ansca/corona/input/AxisType$ApiLevel12;->getSymbolicNameFromAndroidIntegerId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_0
    iget v0, p0, Lcom/ansca/corona/input/AxisType;->fAndroidIntegerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toCoronaIntegerId()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/ansca/corona/input/AxisType;->fCoronaIntegerId:I

    return v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ansca/corona/input/AxisType;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/ansca/corona/input/AxisType;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
