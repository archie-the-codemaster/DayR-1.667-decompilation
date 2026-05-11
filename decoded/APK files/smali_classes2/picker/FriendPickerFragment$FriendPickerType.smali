.class public final enum Lpicker/FriendPickerFragment$FriendPickerType;
.super Ljava/lang/Enum;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/FriendPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendPickerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpicker/FriendPickerFragment$FriendPickerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpicker/FriendPickerFragment$FriendPickerType;

.field public static final enum FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

.field public static final enum INVITABLE_FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

.field public static final enum TAGGABLE_FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;


# instance fields
.field private final requestPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 64
    new-instance v0, Lpicker/FriendPickerFragment$FriendPickerType;

    const/4 v1, 0x0

    const-string v2, "FRIENDS"

    const-string v3, "/friends"

    invoke-direct {v0, v2, v1, v3}, Lpicker/FriendPickerFragment$FriendPickerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lpicker/FriendPickerFragment$FriendPickerType;->FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    .line 65
    new-instance v0, Lpicker/FriendPickerFragment$FriendPickerType;

    const/4 v2, 0x1

    const-string v3, "TAGGABLE_FRIENDS"

    const-string v4, "/taggable_friends"

    invoke-direct {v0, v3, v2, v4}, Lpicker/FriendPickerFragment$FriendPickerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lpicker/FriendPickerFragment$FriendPickerType;->TAGGABLE_FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    .line 66
    new-instance v0, Lpicker/FriendPickerFragment$FriendPickerType;

    const/4 v3, 0x2

    const-string v4, "INVITABLE_FRIENDS"

    const-string v5, "/invitable_friends"

    invoke-direct {v0, v4, v3, v5}, Lpicker/FriendPickerFragment$FriendPickerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lpicker/FriendPickerFragment$FriendPickerType;->INVITABLE_FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    const/4 v0, 0x3

    new-array v0, v0, [Lpicker/FriendPickerFragment$FriendPickerType;

    .line 63
    sget-object v4, Lpicker/FriendPickerFragment$FriendPickerType;->FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    aput-object v4, v0, v1

    sget-object v1, Lpicker/FriendPickerFragment$FriendPickerType;->TAGGABLE_FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    aput-object v1, v0, v2

    sget-object v1, Lpicker/FriendPickerFragment$FriendPickerType;->INVITABLE_FRIENDS:Lpicker/FriendPickerFragment$FriendPickerType;

    aput-object v1, v0, v3

    sput-object v0, Lpicker/FriendPickerFragment$FriendPickerType;->$VALUES:[Lpicker/FriendPickerFragment$FriendPickerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lpicker/FriendPickerFragment$FriendPickerType;->requestPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpicker/FriendPickerFragment$FriendPickerType;
    .locals 1

    .line 63
    const-class v0, Lpicker/FriendPickerFragment$FriendPickerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpicker/FriendPickerFragment$FriendPickerType;

    return-object p0
.end method

.method public static values()[Lpicker/FriendPickerFragment$FriendPickerType;
    .locals 1

    .line 63
    sget-object v0, Lpicker/FriendPickerFragment$FriendPickerType;->$VALUES:[Lpicker/FriendPickerFragment$FriendPickerType;

    invoke-virtual {v0}, [Lpicker/FriendPickerFragment$FriendPickerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpicker/FriendPickerFragment$FriendPickerType;

    return-object v0
.end method


# virtual methods
.method getRequestPath()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lpicker/FriendPickerFragment$FriendPickerType;->requestPath:Ljava/lang/String;

    return-object v0
.end method
