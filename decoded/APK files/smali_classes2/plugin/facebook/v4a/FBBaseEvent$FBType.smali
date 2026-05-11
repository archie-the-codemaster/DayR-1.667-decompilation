.class public final enum Lplugin/facebook/v4a/FBBaseEvent$FBType;
.super Ljava/lang/Enum;
.source "FBBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebook/v4a/FBBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "FBType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lplugin/facebook/v4a/FBBaseEvent$FBType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lplugin/facebook/v4a/FBBaseEvent$FBType;

.field public static final enum dialog:Lplugin/facebook/v4a/FBBaseEvent$FBType;

.field public static final enum request:Lplugin/facebook/v4a/FBBaseEvent$FBType;

.field public static final enum session:Lplugin/facebook/v4a/FBBaseEvent$FBType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;

    const/4 v1, 0x0

    const-string v2, "session"

    invoke-direct {v0, v2, v1}, Lplugin/facebook/v4a/FBBaseEvent$FBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->session:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    .line 20
    new-instance v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;

    const/4 v2, 0x1

    const-string v3, "request"

    invoke-direct {v0, v3, v2}, Lplugin/facebook/v4a/FBBaseEvent$FBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->request:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    .line 21
    new-instance v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;

    const/4 v3, 0x2

    const-string v4, "dialog"

    invoke-direct {v0, v4, v3}, Lplugin/facebook/v4a/FBBaseEvent$FBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->dialog:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    const/4 v0, 0x3

    new-array v0, v0, [Lplugin/facebook/v4a/FBBaseEvent$FBType;

    .line 18
    sget-object v4, Lplugin/facebook/v4a/FBBaseEvent$FBType;->session:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    aput-object v4, v0, v1

    sget-object v1, Lplugin/facebook/v4a/FBBaseEvent$FBType;->request:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    aput-object v1, v0, v2

    sget-object v1, Lplugin/facebook/v4a/FBBaseEvent$FBType;->dialog:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    aput-object v1, v0, v3

    sput-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->$VALUES:[Lplugin/facebook/v4a/FBBaseEvent$FBType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lplugin/facebook/v4a/FBBaseEvent$FBType;
    .locals 1

    .line 18
    const-class v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lplugin/facebook/v4a/FBBaseEvent$FBType;

    return-object p0
.end method

.method public static values()[Lplugin/facebook/v4a/FBBaseEvent$FBType;
    .locals 1

    .line 18
    sget-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->$VALUES:[Lplugin/facebook/v4a/FBBaseEvent$FBType;

    invoke-virtual {v0}, [Lplugin/facebook/v4a/FBBaseEvent$FBType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lplugin/facebook/v4a/FBBaseEvent$FBType;

    return-object v0
.end method
