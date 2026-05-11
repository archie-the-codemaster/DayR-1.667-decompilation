.class public final enum Lplugin/google/iap/v3/util/Purchase$State;
.super Ljava/lang/Enum;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/google/iap/v3/util/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lplugin/google/iap/v3/util/Purchase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lplugin/google/iap/v3/util/Purchase$State;

.field public static final enum Cancelled:Lplugin/google/iap/v3/util/Purchase$State;

.field public static final enum Consumed:Lplugin/google/iap/v3/util/Purchase$State;

.field public static final enum Purchased:Lplugin/google/iap/v3/util/Purchase$State;

.field public static final enum Refunded:Lplugin/google/iap/v3/util/Purchase$State;

.field public static final enum Unknown:Lplugin/google/iap/v3/util/Purchase$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lplugin/google/iap/v3/util/Purchase$State;

    const/4 v1, 0x0

    const-string v2, "Purchased"

    invoke-direct {v0, v2, v1}, Lplugin/google/iap/v3/util/Purchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/google/iap/v3/util/Purchase$State;->Purchased:Lplugin/google/iap/v3/util/Purchase$State;

    .line 28
    new-instance v0, Lplugin/google/iap/v3/util/Purchase$State;

    const/4 v2, 0x1

    const-string v3, "Cancelled"

    invoke-direct {v0, v3, v2}, Lplugin/google/iap/v3/util/Purchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/google/iap/v3/util/Purchase$State;->Cancelled:Lplugin/google/iap/v3/util/Purchase$State;

    .line 29
    new-instance v0, Lplugin/google/iap/v3/util/Purchase$State;

    const/4 v3, 0x2

    const-string v4, "Refunded"

    invoke-direct {v0, v4, v3}, Lplugin/google/iap/v3/util/Purchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/google/iap/v3/util/Purchase$State;->Refunded:Lplugin/google/iap/v3/util/Purchase$State;

    .line 30
    new-instance v0, Lplugin/google/iap/v3/util/Purchase$State;

    const/4 v4, 0x3

    const-string v5, "Consumed"

    invoke-direct {v0, v5, v4}, Lplugin/google/iap/v3/util/Purchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/google/iap/v3/util/Purchase$State;->Consumed:Lplugin/google/iap/v3/util/Purchase$State;

    .line 31
    new-instance v0, Lplugin/google/iap/v3/util/Purchase$State;

    const/4 v5, 0x4

    const-string v6, "Unknown"

    invoke-direct {v0, v6, v5}, Lplugin/google/iap/v3/util/Purchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lplugin/google/iap/v3/util/Purchase$State;->Unknown:Lplugin/google/iap/v3/util/Purchase$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lplugin/google/iap/v3/util/Purchase$State;

    .line 26
    sget-object v6, Lplugin/google/iap/v3/util/Purchase$State;->Purchased:Lplugin/google/iap/v3/util/Purchase$State;

    aput-object v6, v0, v1

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Cancelled:Lplugin/google/iap/v3/util/Purchase$State;

    aput-object v1, v0, v2

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Refunded:Lplugin/google/iap/v3/util/Purchase$State;

    aput-object v1, v0, v3

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Consumed:Lplugin/google/iap/v3/util/Purchase$State;

    aput-object v1, v0, v4

    sget-object v1, Lplugin/google/iap/v3/util/Purchase$State;->Unknown:Lplugin/google/iap/v3/util/Purchase$State;

    aput-object v1, v0, v5

    sput-object v0, Lplugin/google/iap/v3/util/Purchase$State;->$VALUES:[Lplugin/google/iap/v3/util/Purchase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lplugin/google/iap/v3/util/Purchase$State;
    .locals 1

    .line 26
    const-class v0, Lplugin/google/iap/v3/util/Purchase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lplugin/google/iap/v3/util/Purchase$State;

    return-object p0
.end method

.method public static values()[Lplugin/google/iap/v3/util/Purchase$State;
    .locals 1

    .line 26
    sget-object v0, Lplugin/google/iap/v3/util/Purchase$State;->$VALUES:[Lplugin/google/iap/v3/util/Purchase$State;

    invoke-virtual {v0}, [Lplugin/google/iap/v3/util/Purchase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lplugin/google/iap/v3/util/Purchase$State;

    return-object v0
.end method
