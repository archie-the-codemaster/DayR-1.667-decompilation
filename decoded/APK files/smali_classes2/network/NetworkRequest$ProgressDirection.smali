.class final enum Lnetwork/NetworkRequest$ProgressDirection;
.super Ljava/lang/Enum;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProgressDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnetwork/NetworkRequest$ProgressDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnetwork/NetworkRequest$ProgressDirection;

.field public static final enum DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

.field public static final enum NONE:Lnetwork/NetworkRequest$ProgressDirection;

.field public static final enum UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 246
    new-instance v0, Lnetwork/NetworkRequest$ProgressDirection;

    const/4 v1, 0x0

    const-string v2, "UPLOAD"

    invoke-direct {v0, v2, v1}, Lnetwork/NetworkRequest$ProgressDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    new-instance v0, Lnetwork/NetworkRequest$ProgressDirection;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD"

    invoke-direct {v0, v3, v2}, Lnetwork/NetworkRequest$ProgressDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    new-instance v0, Lnetwork/NetworkRequest$ProgressDirection;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lnetwork/NetworkRequest$ProgressDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    const/4 v0, 0x3

    new-array v0, v0, [Lnetwork/NetworkRequest$ProgressDirection;

    .line 244
    sget-object v4, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    aput-object v4, v0, v1

    sget-object v1, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    aput-object v1, v0, v2

    sget-object v1, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    aput-object v1, v0, v3

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->$VALUES:[Lnetwork/NetworkRequest$ProgressDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lnetwork/NetworkRequest$ProgressDirection;
    .locals 1

    if-eqz p0, :cond_2

    const-string v0, "upload"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object p0, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    goto :goto_0

    :cond_0
    const-string v0, "download"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 260
    sget-object p0, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 265
    :cond_2
    sget-object p0, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    :goto_0
    return-object p0
.end method

.method public static toString(Lnetwork/NetworkRequest$ProgressDirection;)Ljava/lang/String;
    .locals 1

    .line 274
    sget-object v0, Lnetwork/NetworkRequest$1;->$SwitchMap$network$NetworkRequest$ProgressDirection:[I

    invoke-virtual {p0}, Lnetwork/NetworkRequest$ProgressDirection;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const-string p0, "download"

    goto :goto_0

    :cond_1
    const-string p0, "upload"

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnetwork/NetworkRequest$ProgressDirection;
    .locals 1

    .line 244
    const-class v0, Lnetwork/NetworkRequest$ProgressDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnetwork/NetworkRequest$ProgressDirection;

    return-object p0
.end method

.method public static values()[Lnetwork/NetworkRequest$ProgressDirection;
    .locals 1

    .line 244
    sget-object v0, Lnetwork/NetworkRequest$ProgressDirection;->$VALUES:[Lnetwork/NetworkRequest$ProgressDirection;

    invoke-virtual {v0}, [Lnetwork/NetworkRequest$ProgressDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnetwork/NetworkRequest$ProgressDirection;

    return-object v0
.end method
