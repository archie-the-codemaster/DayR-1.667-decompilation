.class public final enum Lcom/ansca/corona/permissions/PermissionState;
.super Ljava/lang/Enum;
.source "PermissionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ansca/corona/permissions/PermissionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/permissions/PermissionState;

.field public static final enum DENIED:Lcom/ansca/corona/permissions/PermissionState;

.field public static final enum GRANTED:Lcom/ansca/corona/permissions/PermissionState;

.field public static final enum MISSING:Lcom/ansca/corona/permissions/PermissionState;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/ansca/corona/permissions/PermissionState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MISSING"

    invoke-direct {v0, v3, v2, v1}, Lcom/ansca/corona/permissions/PermissionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    .line 35
    new-instance v0, Lcom/ansca/corona/permissions/PermissionState;

    const-string v3, "DENIED"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v1, v4}, Lcom/ansca/corona/permissions/PermissionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    .line 42
    new-instance v0, Lcom/ansca/corona/permissions/PermissionState;

    const/4 v3, 0x2

    const-string v4, "GRANTED"

    invoke-direct {v0, v4, v3, v2}, Lcom/ansca/corona/permissions/PermissionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ansca/corona/permissions/PermissionState;

    .line 21
    sget-object v4, Lcom/ansca/corona/permissions/PermissionState;->MISSING:Lcom/ansca/corona/permissions/PermissionState;

    aput-object v4, v0, v2

    sget-object v2, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ansca/corona/permissions/PermissionState;->$VALUES:[Lcom/ansca/corona/permissions/PermissionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/ansca/corona/permissions/PermissionState;->mIntValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;
    .locals 1

    .line 21
    const-class v0, Lcom/ansca/corona/permissions/PermissionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ansca/corona/permissions/PermissionState;

    return-object p0
.end method

.method public static values()[Lcom/ansca/corona/permissions/PermissionState;
    .locals 1

    .line 21
    sget-object v0, Lcom/ansca/corona/permissions/PermissionState;->$VALUES:[Lcom/ansca/corona/permissions/PermissionState;

    invoke-virtual {v0}, [Lcom/ansca/corona/permissions/PermissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/permissions/PermissionState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/ansca/corona/permissions/PermissionState;->mIntValue:I

    return v0
.end method
