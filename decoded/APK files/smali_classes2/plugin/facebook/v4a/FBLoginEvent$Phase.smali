.class public final enum Lplugin/facebook/v4a/FBLoginEvent$Phase;
.super Ljava/lang/Enum;
.source "FBLoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebook/v4a/FBLoginEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lplugin/facebook/v4a/FBLoginEvent$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lplugin/facebook/v4a/FBLoginEvent$Phase;

.field public static final enum login:Lplugin/facebook/v4a/FBLoginEvent$Phase;

.field public static final enum loginCancelled:Lplugin/facebook/v4a/FBLoginEvent$Phase;

.field public static final enum loginFailed:Lplugin/facebook/v4a/FBLoginEvent$Phase;

.field public static final enum logout:Lplugin/facebook/v4a/FBLoginEvent$Phase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 v1, 0x0

    const-string v2, "login"

    invoke-direct {v0, v2, v1}, Lplugin/facebook/v4a/FBLoginEvent$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->login:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    .line 17
    new-instance v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 v2, 0x1

    const-string v3, "loginFailed"

    invoke-direct {v0, v3, v2}, Lplugin/facebook/v4a/FBLoginEvent$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->loginFailed:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    .line 18
    new-instance v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 v3, 0x2

    const-string v4, "loginCancelled"

    invoke-direct {v0, v4, v3}, Lplugin/facebook/v4a/FBLoginEvent$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->loginCancelled:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    .line 19
    new-instance v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 v4, 0x3

    const-string v5, "logout"

    invoke-direct {v0, v5, v4}, Lplugin/facebook/v4a/FBLoginEvent$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->logout:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 v0, 0x4

    new-array v0, v0, [Lplugin/facebook/v4a/FBLoginEvent$Phase;

    .line 15
    sget-object v5, Lplugin/facebook/v4a/FBLoginEvent$Phase;->login:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    aput-object v5, v0, v1

    sget-object v1, Lplugin/facebook/v4a/FBLoginEvent$Phase;->loginFailed:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lplugin/facebook/v4a/FBLoginEvent$Phase;->loginCancelled:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    aput-object v1, v0, v3

    sget-object v1, Lplugin/facebook/v4a/FBLoginEvent$Phase;->logout:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    aput-object v1, v0, v4

    sput-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->$VALUES:[Lplugin/facebook/v4a/FBLoginEvent$Phase;

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

.method public static valueOf(Ljava/lang/String;)Lplugin/facebook/v4a/FBLoginEvent$Phase;
    .locals 1

    .line 15
    const-class v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lplugin/facebook/v4a/FBLoginEvent$Phase;

    return-object p0
.end method

.method public static values()[Lplugin/facebook/v4a/FBLoginEvent$Phase;
    .locals 1

    .line 15
    sget-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->$VALUES:[Lplugin/facebook/v4a/FBLoginEvent$Phase;

    invoke-virtual {v0}, [Lplugin/facebook/v4a/FBLoginEvent$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lplugin/facebook/v4a/FBLoginEvent$Phase;

    return-object v0
.end method
