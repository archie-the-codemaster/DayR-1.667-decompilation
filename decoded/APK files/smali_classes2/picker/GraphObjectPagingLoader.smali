.class Lpicker/GraphObjectPagingLoader;
.super Landroid/support/v4/content/Loader;
.source "GraphObjectPagingLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpicker/GraphObjectPagingLoader$OnErrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/Loader<",
        "Lpicker/GraphObjectCursor;",
        ">;"
    }
.end annotation


# instance fields
.field private appendResults:Z

.field private currentRequest:Lcom/facebook/GraphRequest;

.field private cursor:Lpicker/GraphObjectCursor;

.field private loading:Z

.field private nextRequest:Lcom/facebook/GraphRequest;

.field private onErrorListener:Lpicker/GraphObjectPagingLoader$OnErrorListener;

.field private originalRequest:Lcom/facebook/GraphRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lpicker/GraphObjectPagingLoader;->appendResults:Z

    .line 36
    iput-boolean p1, p0, Lpicker/GraphObjectPagingLoader;->loading:Z

    return-void
.end method

.method static synthetic access$000(Lpicker/GraphObjectPagingLoader;Lcom/facebook/GraphResponse;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lpicker/GraphObjectPagingLoader;->requestCompleted(Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method private addResults(Lcom/facebook/GraphResponse;)V
    .locals 5

    .line 153
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader;->cursor:Lpicker/GraphObjectCursor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lpicker/GraphObjectPagingLoader;->appendResults:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lpicker/GraphObjectCursor;

    invoke-direct {v1, v0}, Lpicker/GraphObjectCursor;-><init>(Lpicker/GraphObjectCursor;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lpicker/GraphObjectCursor;

    invoke-direct {v1}, Lpicker/GraphObjectCursor;-><init>()V

    .line 156
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 161
    sget-object v2, Lcom/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/facebook/GraphResponse$PagingDirection;

    invoke-virtual {p1, v2}, Lcom/facebook/GraphResponse;->getRequestForPagedResults(Lcom/facebook/GraphResponse$PagingDirection;)Lcom/facebook/GraphRequest;

    move-result-object p1

    iput-object p1, p0, Lpicker/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/GraphRequest;

    .line 162
    invoke-virtual {v1, v0}, Lpicker/GraphObjectCursor;->addGraphObjects(Lorg/json/JSONArray;)V

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lpicker/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/GraphRequest;

    .line 166
    :goto_3
    iget-object p1, p0, Lpicker/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/GraphRequest;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1, v3}, Lpicker/GraphObjectCursor;->setMoreObjectsAvailable(Z)V

    .line 168
    invoke-virtual {p0, v1}, Lpicker/GraphObjectPagingLoader;->deliverResult(Lpicker/GraphObjectCursor;)V

    return-void
.end method

.method private requestCompleted(Lcom/facebook/GraphResponse;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lpicker/GraphObjectPagingLoader;->loading:Z

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    .line 135
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    .line 137
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 138
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "GraphObjectPagingLoader received neither a result nor an error."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 142
    iput-object v0, p0, Lpicker/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/GraphRequest;

    .line 144
    iget-object p1, p0, Lpicker/GraphObjectPagingLoader;->onErrorListener:Lpicker/GraphObjectPagingLoader$OnErrorListener;

    if-eqz p1, :cond_4

    .line 145
    invoke-interface {p1, v1, p0}, Lpicker/GraphObjectPagingLoader$OnErrorListener;->onError(Lcom/facebook/FacebookException;Lpicker/GraphObjectPagingLoader;)V

    goto :goto_1

    .line 148
    :cond_3
    invoke-direct {p0, p1}, Lpicker/GraphObjectPagingLoader;->addResults(Lcom/facebook/GraphResponse;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public clearResults()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lpicker/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/GraphRequest;

    .line 60
    iput-object v0, p0, Lpicker/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/GraphRequest;

    .line 61
    iput-object v0, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    .line 63
    invoke-virtual {p0, v0}, Lpicker/GraphObjectPagingLoader;->deliverResult(Lpicker/GraphObjectCursor;)V

    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lpicker/GraphObjectCursor;

    invoke-virtual {p0, p1}, Lpicker/GraphObjectPagingLoader;->deliverResult(Lpicker/GraphObjectCursor;)V

    return-void
.end method

.method public deliverResult(Lpicker/GraphObjectCursor;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader;->cursor:Lpicker/GraphObjectCursor;

    .line 106
    iput-object p1, p0, Lpicker/GraphObjectPagingLoader;->cursor:Lpicker/GraphObjectCursor;

    .line 108
    invoke-virtual {p0}, Lpicker/GraphObjectPagingLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 111
    invoke-virtual {v0}, Lpicker/GraphObjectCursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {v0}, Lpicker/GraphObjectCursor;->close()V

    :cond_0
    return-void
.end method

.method public followNextLink()V
    .locals 4

    .line 87
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/GraphRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lpicker/GraphObjectPagingLoader;->appendResults:Z

    .line 89
    iput-object v0, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    .line 91
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    new-instance v2, Lpicker/GraphObjectPagingLoader$2;

    invoke-direct {v2, p0}, Lpicker/GraphObjectPagingLoader$2;-><init>(Lpicker/GraphObjectPagingLoader;)V

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 98
    iput-boolean v1, p0, Lpicker/GraphObjectPagingLoader;->loading:Z

    .line 99
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    new-array v1, v1, [Lcom/facebook/GraphRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    :cond_0
    return-void
.end method

.method public getCursor()Lpicker/GraphObjectCursor;
    .locals 1

    .line 55
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader;->cursor:Lpicker/GraphObjectCursor;

    return-object v0
.end method

.method public getOnErrorListener()Lpicker/GraphObjectPagingLoader$OnErrorListener;
    .locals 1

    .line 47
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader;->onErrorListener:Lpicker/GraphObjectPagingLoader$OnErrorListener;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lpicker/GraphObjectPagingLoader;->loading:Z

    return v0
.end method

.method protected onStartLoading()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    .line 121
    iget-object v0, p0, Lpicker/GraphObjectPagingLoader;->cursor:Lpicker/GraphObjectCursor;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lpicker/GraphObjectPagingLoader;->deliverResult(Lpicker/GraphObjectCursor;)V

    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lpicker/GraphObjectPagingLoader$OnErrorListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lpicker/GraphObjectPagingLoader;->onErrorListener:Lpicker/GraphObjectPagingLoader$OnErrorListener;

    return-void
.end method

.method public startLoading(Lcom/facebook/GraphRequest;)V
    .locals 3

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lpicker/GraphObjectPagingLoader;->appendResults:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lpicker/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/GraphRequest;

    .line 73
    iput-object p1, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    .line 74
    iget-object v1, p0, Lpicker/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/GraphRequest;

    new-instance v2, Lpicker/GraphObjectPagingLoader$1;

    invoke-direct {v2, p0}, Lpicker/GraphObjectPagingLoader$1;-><init>(Lpicker/GraphObjectPagingLoader;)V

    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lpicker/GraphObjectPagingLoader;->loading:Z

    .line 82
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    new-array v1, v1, [Lcom/facebook/GraphRequest;

    aput-object p1, v1, v0

    invoke-direct {v2, v1}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    .line 83
    invoke-static {v2}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method
