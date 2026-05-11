.class public abstract Lcom/ansca/corona/purchasing/Store;
.super Ljava/lang/Object;
.source "Store.java"


# instance fields
.field private fActivity:Landroid/app/Activity;

.field protected fController:Lcom/ansca/corona/Controller;

.field protected fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fIsEnabled:Z


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/ansca/corona/purchasing/Store;->fController:Lcom/ansca/corona/Controller;

    .line 33
    iput-object p1, p0, Lcom/ansca/corona/purchasing/Store;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public abstract canMakePurchases()Z
.end method

.method public abstract confirmTransaction(Ljava/lang/String;)V
.end method

.method public disable()V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    .line 86
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/Store;->onDisabled()V

    return-void
.end method

.method public enable()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    .line 68
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/Store;->onEnabled()V

    return-void

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    return v0
.end method

.method protected onDisabled()V
    .locals 0

    return-void
.end method

.method protected abstract onEnabled()V
.end method

.method public abstract purchase(Ljava/lang/String;)V
.end method

.method protected raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/purchasing/Store;->fController:Lcom/ansca/corona/Controller;

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 151
    :cond_1
    new-instance v1, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v2, Lcom/ansca/corona/purchasing/Store$1;

    invoke-direct {v2, p0, p1}, Lcom/ansca/corona/purchasing/Store$1;-><init>(Lcom/ansca/corona/purchasing/Store;Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    invoke-direct {v1, v2}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    return-void
.end method

.method public abstract restorePurchases()V
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    return-void
.end method
