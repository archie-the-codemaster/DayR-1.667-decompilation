.class Lpicker/GraphObjectAdapter$1;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpicker/GraphObjectAdapter;->rebuildSections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpicker/GraphObjectAdapter;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lpicker/GraphObjectAdapter;Ljava/text/Collator;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lpicker/GraphObjectAdapter$1;->this$0:Lpicker/GraphObjectAdapter;

    iput-object p2, p0, Lpicker/GraphObjectAdapter$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 479
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lpicker/GraphObjectAdapter$1;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 2

    .line 482
    iget-object v0, p0, Lpicker/GraphObjectAdapter$1;->this$0:Lpicker/GraphObjectAdapter;

    invoke-static {v0}, Lpicker/GraphObjectAdapter;->access$000(Lpicker/GraphObjectAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpicker/GraphObjectAdapter$1;->val$collator:Ljava/text/Collator;

    invoke-static {p1, p2, v0, v1}, Lpicker/GraphObjectAdapter;->access$100(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/text/Collator;)I

    move-result p1

    return p1
.end method
