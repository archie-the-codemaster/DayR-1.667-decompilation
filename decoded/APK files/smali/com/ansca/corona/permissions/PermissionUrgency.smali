.class public final enum Lcom/ansca/corona/permissions/PermissionUrgency;
.super Ljava/lang/Enum;
.source "PermissionUrgency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ansca/corona/permissions/PermissionUrgency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/permissions/PermissionUrgency;

.field public static final enum CRITICAL:Lcom/ansca/corona/permissions/PermissionUrgency;

.field public static final enum LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

.field public static final enum NORMAL:Lcom/ansca/corona/permissions/PermissionUrgency;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/ansca/corona/permissions/PermissionUrgency;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lcom/ansca/corona/permissions/PermissionUrgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    .line 28
    new-instance v0, Lcom/ansca/corona/permissions/PermissionUrgency;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/ansca/corona/permissions/PermissionUrgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->NORMAL:Lcom/ansca/corona/permissions/PermissionUrgency;

    .line 35
    new-instance v0, Lcom/ansca/corona/permissions/PermissionUrgency;

    const/4 v3, 0x2

    const-string v4, "CRITICAL"

    invoke-direct {v0, v4, v3}, Lcom/ansca/corona/permissions/PermissionUrgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->CRITICAL:Lcom/ansca/corona/permissions/PermissionUrgency;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ansca/corona/permissions/PermissionUrgency;

    .line 15
    sget-object v4, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ansca/corona/permissions/PermissionUrgency;->NORMAL:Lcom/ansca/corona/permissions/PermissionUrgency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/permissions/PermissionUrgency;->CRITICAL:Lcom/ansca/corona/permissions/PermissionUrgency;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->$VALUES:[Lcom/ansca/corona/permissions/PermissionUrgency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionUrgency;
    .locals 1

    if-nez p0, :cond_0

    .line 44
    sget-object p0, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-object p0

    .line 47
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "critical"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/ansca/corona/permissions/PermissionUrgency;->CRITICAL:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-object p0

    :cond_1
    const-string v0, "normal"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/ansca/corona/permissions/PermissionUrgency;->NORMAL:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-object p0

    .line 51
    :cond_2
    sget-object p0, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionUrgency;
    .locals 1

    .line 15
    const-class v0, Lcom/ansca/corona/permissions/PermissionUrgency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ansca/corona/permissions/PermissionUrgency;

    return-object p0
.end method

.method public static values()[Lcom/ansca/corona/permissions/PermissionUrgency;
    .locals 1

    .line 15
    sget-object v0, Lcom/ansca/corona/permissions/PermissionUrgency;->$VALUES:[Lcom/ansca/corona/permissions/PermissionUrgency;

    invoke-virtual {v0}, [Lcom/ansca/corona/permissions/PermissionUrgency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/permissions/PermissionUrgency;

    return-object v0
.end method
