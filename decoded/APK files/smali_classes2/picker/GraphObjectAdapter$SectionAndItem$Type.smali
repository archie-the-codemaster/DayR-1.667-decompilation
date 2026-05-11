.class public final enum Lpicker/GraphObjectAdapter$SectionAndItem$Type;
.super Ljava/lang/Enum;
.source "GraphObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/GraphObjectAdapter$SectionAndItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpicker/GraphObjectAdapter$SectionAndItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpicker/GraphObjectAdapter$SectionAndItem$Type;

.field public static final enum ACTIVITY_CIRCLE:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

.field public static final enum GRAPH_OBJECT:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

.field public static final enum SECTION_HEADER:Lpicker/GraphObjectAdapter$SectionAndItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 85
    new-instance v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v1, 0x0

    const-string v2, "GRAPH_OBJECT"

    invoke-direct {v0, v2, v1}, Lpicker/GraphObjectAdapter$SectionAndItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    .line 86
    new-instance v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v2, 0x1

    const-string v3, "SECTION_HEADER"

    invoke-direct {v0, v3, v2}, Lpicker/GraphObjectAdapter$SectionAndItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    .line 87
    new-instance v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v3, 0x2

    const-string v4, "ACTIVITY_CIRCLE"

    invoke-direct {v0, v4, v3}, Lpicker/GraphObjectAdapter$SectionAndItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    .line 84
    sget-object v4, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    aput-object v4, v0, v1

    sget-object v1, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    aput-object v1, v0, v3

    sput-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->$VALUES:[Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpicker/GraphObjectAdapter$SectionAndItem$Type;
    .locals 1

    .line 84
    const-class v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    return-object p0
.end method

.method public static values()[Lpicker/GraphObjectAdapter$SectionAndItem$Type;
    .locals 1

    .line 84
    sget-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->$VALUES:[Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v0}, [Lpicker/GraphObjectAdapter$SectionAndItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    return-object v0
.end method
