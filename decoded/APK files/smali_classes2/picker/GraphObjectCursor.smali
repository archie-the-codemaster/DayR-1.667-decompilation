.class Lpicker/GraphObjectCursor;
.super Ljava/lang/Object;
.source "GraphObjectCursor.java"


# instance fields
.field private closed:Z

.field private graphObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private moreObjectsAvailable:Z

.field private pos:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lpicker/GraphObjectCursor;->pos:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lpicker/GraphObjectCursor;->closed:Z

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    .line 34
    iput-boolean v0, p0, Lpicker/GraphObjectCursor;->moreObjectsAvailable:Z

    return-void
.end method

.method constructor <init>(Lpicker/GraphObjectCursor;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lpicker/GraphObjectCursor;->pos:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lpicker/GraphObjectCursor;->closed:Z

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    .line 34
    iput-boolean v0, p0, Lpicker/GraphObjectCursor;->moreObjectsAvailable:Z

    .line 40
    iget v0, p1, Lpicker/GraphObjectCursor;->pos:I

    iput v0, p0, Lpicker/GraphObjectCursor;->pos:I

    .line 41
    iget-boolean v0, p1, Lpicker/GraphObjectCursor;->closed:Z

    iput-boolean v0, p0, Lpicker/GraphObjectCursor;->closed:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    iget-object p1, p1, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addGraphObjects(Lorg/json/JSONArray;)V
    .locals 3

    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public areMoreObjectsAvailable()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lpicker/GraphObjectCursor;->moreObjectsAvailable:Z

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lpicker/GraphObjectCursor;->closed:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGraphObject()Lorg/json/JSONObject;
    .locals 2

    .line 125
    iget v0, p0, Lpicker/GraphObjectCursor;->pos:I

    if-ltz v0, :cond_1

    .line 128
    iget-object v1, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lpicker/GraphObjectCursor;->graphObjects:Ljava/util/List;

    iget v1, p0, Lpicker/GraphObjectCursor;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition()I
    .locals 1

    .line 67
    iget v0, p0, Lpicker/GraphObjectCursor;->pos:I

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget v1, p0, Lpicker/GraphObjectCursor;->pos:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBeforeFirst()Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lpicker/GraphObjectCursor;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lpicker/GraphObjectCursor;->closed:Z

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 107
    iget v0, p0, Lpicker/GraphObjectCursor;->pos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLast()Z
    .locals 3

    .line 111
    invoke-virtual {p0}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v0

    .line 112
    iget v1, p0, Lpicker/GraphObjectCursor;->pos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public move(I)Z
    .locals 1

    .line 71
    iget v0, p0, Lpicker/GraphObjectCursor;->pos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lpicker/GraphObjectCursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lpicker/GraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lpicker/GraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 99
    iget v0, p0, Lpicker/GraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lpicker/GraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    .line 75
    invoke-virtual {p0}, Lpicker/GraphObjectCursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 77
    iput v0, p0, Lpicker/GraphObjectCursor;->pos:I

    return v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lpicker/GraphObjectCursor;->pos:I

    return v1

    .line 86
    :cond_1
    iput p1, p0, Lpicker/GraphObjectCursor;->pos:I

    const/4 p1, 0x1

    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 103
    iget v0, p0, Lpicker/GraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lpicker/GraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public setMoreObjectsAvailable(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lpicker/GraphObjectCursor;->moreObjectsAvailable:Z

    return-void
.end method
