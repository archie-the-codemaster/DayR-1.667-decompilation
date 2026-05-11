.class public final enum Lplugin/gpgs/Connector$SignInListener$SignInResult;
.super Ljava/lang/Enum;
.source "Connector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Connector$SignInListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignInResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lplugin/gpgs/Connector$SignInListener$SignInResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lplugin/gpgs/Connector$SignInListener$SignInResult;

.field public static final enum CANCELED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

.field public static final enum FAILED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

.field public static final enum SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lplugin/gpgs/Connector$SignInListener$SignInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    .line 24
    new-instance v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v0, v3, v2}, Lplugin/gpgs/Connector$SignInListener$SignInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->FAILED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    .line 25
    new-instance v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;

    const/4 v3, 0x2

    const-string v4, "CANCELED"

    invoke-direct {v0, v4, v3}, Lplugin/gpgs/Connector$SignInListener$SignInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->CANCELED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lplugin/gpgs/Connector$SignInListener$SignInResult;

    .line 22
    sget-object v4, Lplugin/gpgs/Connector$SignInListener$SignInResult;->SUCCESS:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    aput-object v4, v0, v1

    sget-object v1, Lplugin/gpgs/Connector$SignInListener$SignInResult;->FAILED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    aput-object v1, v0, v2

    sget-object v1, Lplugin/gpgs/Connector$SignInListener$SignInResult;->CANCELED:Lplugin/gpgs/Connector$SignInListener$SignInResult;

    aput-object v1, v0, v3

    sput-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->$VALUES:[Lplugin/gpgs/Connector$SignInListener$SignInResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lplugin/gpgs/Connector$SignInListener$SignInResult;
    .locals 1

    .line 22
    const-class v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lplugin/gpgs/Connector$SignInListener$SignInResult;

    return-object p0
.end method

.method public static values()[Lplugin/gpgs/Connector$SignInListener$SignInResult;
    .locals 1

    .line 22
    sget-object v0, Lplugin/gpgs/Connector$SignInListener$SignInResult;->$VALUES:[Lplugin/gpgs/Connector$SignInListener$SignInResult;

    invoke-virtual {v0}, [Lplugin/gpgs/Connector$SignInListener$SignInResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lplugin/gpgs/Connector$SignInListener$SignInResult;

    return-object v0
.end method
