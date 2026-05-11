.class public final enum Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;
.super Ljava/lang/Enum;
.source "GooglePlayServicesAvailabilityState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum ENV_NEED_INTERNET:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum ENV_NEED_REBOOT:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum ENV_REBOOT_COMPLETED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum SERVICES_AVAILABLE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum SERVICES_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum SERVICES_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum SERVICES_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum SERVICES_MISSING_PERMISSION:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum SERVICES_NEED_UPDATE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum SERVICES_UPDATING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum STORE_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum STORE_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum STORE_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field public static final enum UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field private static sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field private static sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

.field private static sStateAvailabilityPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v1, 0x0

    const-string v2, "SERVICES_AVAILABLE"

    invoke-direct {v0, v2, v1, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_AVAILABLE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 33
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v2, 0x1

    const-string v3, "SERVICES_MISSING"

    invoke-direct {v0, v3, v2, v2}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 41
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v3, 0x2

    const-string v4, "SERVICES_NEED_UPDATE"

    invoke-direct {v0, v4, v3, v3}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_NEED_UPDATE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 49
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v4, 0x3

    const-string v5, "SERVICES_DISABLED"

    invoke-direct {v0, v5, v4, v4}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 57
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v5, 0x4

    const/16 v6, 0x9

    const-string v7, "SERVICES_INVALID"

    invoke-direct {v0, v7, v5, v6}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 65
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v7, 0x5

    const-string v8, "SERVICES_UPDATING"

    const/16 v9, 0x12

    invoke-direct {v0, v8, v7, v9}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_UPDATING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 73
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v8, 0x6

    const-string v9, "SERVICES_MISSING_PERMISSION"

    const/16 v10, 0x13

    invoke-direct {v0, v9, v8, v10}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING_PERMISSION:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 80
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/4 v9, 0x7

    const-string v10, "STORE_MISSING"

    const/16 v11, 0x20

    invoke-direct {v0, v10, v9, v11}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 87
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/16 v10, 0x8

    const-string v11, "STORE_DISABLED"

    const/16 v12, 0x21

    invoke-direct {v0, v11, v10, v12}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 94
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const-string v11, "STORE_INVALID"

    const/16 v12, 0x22

    invoke-direct {v0, v11, v6, v12}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 101
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/16 v11, 0xa

    const-string v12, "ENV_NEED_INTERNET"

    const/16 v13, 0x40

    invoke-direct {v0, v12, v11, v13}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_INTERNET:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 108
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/16 v12, 0xb

    const-string v13, "ENV_NEED_REBOOT"

    const/16 v14, 0x41

    invoke-direct {v0, v13, v12, v14}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_REBOOT:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 115
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/16 v13, 0xc

    const-string v14, "ENV_REBOOT_COMPLETED"

    const/16 v15, 0x42

    invoke-direct {v0, v14, v13, v15}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_REBOOT_COMPLETED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 122
    new-instance v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/16 v14, 0xd

    const-string v15, "UNKNOWN"

    const/4 v13, -0x1

    invoke-direct {v0, v15, v14, v13}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/16 v0, 0xe

    new-array v0, v0, [Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 18
    sget-object v13, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_AVAILABLE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v13, v0, v1

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v2

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_NEED_UPDATE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v3

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v4

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v5

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_UPDATING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v7

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING_PERMISSION:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v8

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v9

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v10

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v6

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_INTERNET:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v11

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_REBOOT:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v12

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_REBOOT_COMPLETED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    aput-object v1, v0, v14

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->$VALUES:[Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 125
    sput-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 133
    sput-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput p3, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->mIntValue:I

    return-void
.end method

.method private static fromInt(I)Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 192
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 190
    :pswitch_0
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_REBOOT_COMPLETED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 188
    :pswitch_1
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_REBOOT:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 186
    :pswitch_2
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_INTERNET:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 184
    :pswitch_3
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 182
    :pswitch_4
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 180
    :pswitch_5
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 178
    :cond_0
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING_PERMISSION:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 176
    :cond_1
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_UPDATING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 174
    :cond_2
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 172
    :cond_3
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 170
    :cond_4
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_NEED_UPDATE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 168
    :cond_5
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    .line 166
    :cond_6
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_AVAILABLE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentState()Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;
    .locals 1

    .line 137
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object v0
.end method

.method public static getPreviousState()Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;
    .locals 1

    .line 130
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object v0
.end method

.method private getValue()I
    .locals 1

    .line 155
    iget v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->mIntValue:I

    return v0
.end method

.method public static loadRecentStateHistory(Landroid/content/Context;)V
    .locals 2

    .line 298
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sStateAvailabilityPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "CoronaGooglePlayServicesAvailabilityStates"

    .line 299
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sStateAvailabilityPreferences:Landroid/content/SharedPreferences;

    .line 302
    :cond_0
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sStateAvailabilityPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    .line 304
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 306
    invoke-direct {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->getValue()I

    move-result v0

    const-string v1, "SavedPreviousGooglePlayServicesAvailabilityState"

    .line 305
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 304
    invoke-static {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->fromInt(I)Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    move-result-object p0

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 307
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sStateAvailabilityPreferences:Landroid/content/SharedPreferences;

    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 309
    invoke-direct {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->getValue()I

    move-result v0

    const-string v1, "SavedCurrentGooglePlayServicesAvailabilityState"

    .line 308
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 307
    invoke-static {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->fromInt(I)Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    move-result-object p0

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    :cond_1
    return-void
.end method

.method public static setState(I)V
    .locals 1

    .line 204
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    .line 229
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 226
    :cond_0
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING_PERMISSION:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 223
    :cond_1
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_UPDATING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 220
    :cond_2
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_INVALID:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 217
    :cond_3
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 214
    :cond_4
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_NEED_UPDATE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 211
    :cond_5
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 208
    :cond_6
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_AVAILABLE:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 233
    :goto_0
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->writeRecentStateHistoryToSharedPreferences()V

    return-void
.end method

.method public static setState(Lcom/ansca/corona/storage/PackageState;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.android.vending"

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms"

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 263
    :cond_0
    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 265
    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState$1;->$SwitchMap$com$ansca$corona$storage$PackageState:[I

    invoke-virtual {p0}, Lcom/ansca/corona/storage/PackageState;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    .line 284
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->UNKNOWN:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 278
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 280
    :cond_2
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_MISSING:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 271
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->STORE_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    goto :goto_0

    .line 273
    :cond_4
    sget-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->SERVICES_DISABLED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 288
    :cond_5
    :goto_0
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->writeRecentStateHistoryToSharedPreferences()V

    return-void
.end method

.method public static setState(Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;)V
    .locals 1

    .line 242
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 243
    sput-object p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    .line 244
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->writeRecentStateHistoryToSharedPreferences()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;
    .locals 1

    .line 18
    const-class v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object p0
.end method

.method public static values()[Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;
    .locals 1

    .line 18
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->$VALUES:[Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    invoke-virtual {v0}, [Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    return-object v0
.end method

.method private static writeRecentStateHistoryToSharedPreferences()V
    .locals 3

    .line 321
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sStateAvailabilityPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CoronaGooglePlayServicesAvailabilityStates"

    .line 323
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sStateAvailabilityPreferences:Landroid/content/SharedPreferences;

    .line 326
    :cond_0
    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sStateAvailabilityPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sPreviousServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    invoke-direct {v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->getValue()I

    move-result v1

    const-string v2, "SavedPreviousGooglePlayServicesAvailabilityState"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 329
    sget-object v1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->sCurrentServicesAvailabilityState:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    invoke-direct {v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->getValue()I

    move-result v1

    const-string v2, "SavedCurrentGooglePlayServicesAvailabilityState"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
