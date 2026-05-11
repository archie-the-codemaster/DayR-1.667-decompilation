.class Lcom/ansca/corona/CoronaStoreApiHandler;
.super Ljava/lang/Object;
.source "CoronaStoreApiHandler.java"

# interfaces
.implements Lcom/ansca/corona/listeners/CoronaStoreApiListener;


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ansca/corona/CoronaStoreApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ansca/corona/CoronaStoreApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object p0
.end method


# virtual methods
.method public storeFinishTransaction(Ljava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaStoreApiHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaStoreApiHandler$3;-><init>(Lcom/ansca/corona/CoronaStoreApiHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public storeInit(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object p1, p0, Lcom/ansca/corona/CoronaStoreApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/ansca/corona/CoronaStoreApiHandler$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaStoreApiHandler$1;-><init>(Lcom/ansca/corona/CoronaStoreApiHandler;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public storePurchase(Ljava/lang/String;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaStoreApiHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaStoreApiHandler$2;-><init>(Lcom/ansca/corona/CoronaStoreApiHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public storeRestore()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaStoreApiHandler$4;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaStoreApiHandler$4;-><init>(Lcom/ansca/corona/CoronaStoreApiHandler;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
