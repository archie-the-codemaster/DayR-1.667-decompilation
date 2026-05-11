.class public final enum Lcom/ansca/corona/storage/PackageState;
.super Ljava/lang/Enum;
.source "PackageState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ansca/corona/storage/PackageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/storage/PackageState;

.field public static final enum DISABLED:Lcom/ansca/corona/storage/PackageState;

.field public static final enum ENABLED:Lcom/ansca/corona/storage/PackageState;

.field public static final enum MISSING:Lcom/ansca/corona/storage/PackageState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/ansca/corona/storage/PackageState;

    const/4 v1, 0x0

    const-string v2, "ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/ansca/corona/storage/PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/storage/PackageState;->ENABLED:Lcom/ansca/corona/storage/PackageState;

    .line 26
    new-instance v0, Lcom/ansca/corona/storage/PackageState;

    const/4 v2, 0x1

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/ansca/corona/storage/PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/storage/PackageState;->DISABLED:Lcom/ansca/corona/storage/PackageState;

    .line 31
    new-instance v0, Lcom/ansca/corona/storage/PackageState;

    const/4 v3, 0x2

    const-string v4, "MISSING"

    invoke-direct {v0, v4, v3}, Lcom/ansca/corona/storage/PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ansca/corona/storage/PackageState;

    .line 17
    sget-object v4, Lcom/ansca/corona/storage/PackageState;->ENABLED:Lcom/ansca/corona/storage/PackageState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ansca/corona/storage/PackageState;->DISABLED:Lcom/ansca/corona/storage/PackageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/storage/PackageState;->MISSING:Lcom/ansca/corona/storage/PackageState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ansca/corona/storage/PackageState;->$VALUES:[Lcom/ansca/corona/storage/PackageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/storage/PackageState;
    .locals 1

    .line 17
    const-class v0, Lcom/ansca/corona/storage/PackageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ansca/corona/storage/PackageState;

    return-object p0
.end method

.method public static values()[Lcom/ansca/corona/storage/PackageState;
    .locals 1

    .line 17
    sget-object v0, Lcom/ansca/corona/storage/PackageState;->$VALUES:[Lcom/ansca/corona/storage/PackageState;

    invoke-virtual {v0}, [Lcom/ansca/corona/storage/PackageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/storage/PackageState;

    return-object v0
.end method
