.class public Lpicker/GraphObjectAdapter$SectionAndItem;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpicker/GraphObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionAndItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpicker/GraphObjectAdapter$SectionAndItem$Type;
    }
.end annotation


# instance fields
.field public graphObject:Lorg/json/JSONObject;

.field public sectionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lpicker/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getType()Lpicker/GraphObjectAdapter$SectionAndItem$Type;
    .locals 1

    .line 96
    iget-object v0, p0, Lpicker/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lpicker/GraphObjectAdapter$SectionAndItem;->graphObject:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 99
    sget-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lpicker/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lpicker/GraphObjectAdapter$SectionAndItem$Type;

    return-object v0
.end method
