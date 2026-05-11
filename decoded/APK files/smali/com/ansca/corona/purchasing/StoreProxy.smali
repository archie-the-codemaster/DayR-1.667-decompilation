.class public Lcom/ansca/corona/purchasing/StoreProxy;
.super Lcom/ansca/corona/purchasing/Store;
.source "StoreProxy.java"


# static fields
.field private static final STORE_NOT_SUPPORTED_WARNING_MESSAGE:Ljava/lang/String; = "WARNING: This application does not support in-app purchases on this device."


# instance fields
.field private fStore:Lcom/ansca/corona/purchasing/Store;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/purchasing/Store;-><init>(Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    return-void
.end method

.method private setStoreTo(Lcom/ansca/corona/purchasing/Store;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->disable()V

    .line 81
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    .line 82
    iget-object p1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/purchasing/Store;->setActivity(Landroid/app/Activity;)V

    .line 84
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {p1}, Lcom/ansca/corona/purchasing/Store;->enable()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {p1}, Lcom/ansca/corona/purchasing/Store;->disable()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public canMakePurchases()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->canMakePurchases()Z

    move-result v0

    return v0
.end method

.method public confirmTransaction(Ljava/lang/String;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 174
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 175
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    const-string v1, "WARNING: This application does not support in-app purchases on this device."

    .line 176
    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setTransactionStringId(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    .line 179
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->logStoreNotSupportedWarning()V

    return-void

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/Store;->confirmTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public disable()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/ansca/corona/purchasing/Store;->disable()V

    .line 112
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->disable()V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/ansca/corona/purchasing/Store;->enable()V

    .line 96
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->enable()V

    :cond_0
    return-void
.end method

.method public logStoreNotSupportedWarning()V
    .locals 2

    const-string v0, "Corona"

    const-string v1, "WARNING: This application does not support in-app purchases on this device."

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onEnabled()V
    .locals 0

    return-void
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 136
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 137
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    const-string v1, "WARNING: This application does not support in-app purchases on this device."

    .line 138
    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setProductName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    .line 141
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->logStoreNotSupportedWarning()V

    return-void

    .line 146
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/Store;->purchase(Ljava/lang/String;)V

    return-void
.end method

.method public restorePurchases()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 154
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 155
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    const-string v1, "WARNING: This application does not support in-app purchases on this device."

    .line 156
    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    .line 158
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->logStoreNotSupportedWarning()V

    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->restorePurchases()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/ansca/corona/purchasing/Store;->setActivity(Landroid/app/Activity;)V

    .line 43
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/Store;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public useNoStore()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->setStoreTo(Lcom/ansca/corona/purchasing/Store;)V

    return-void
.end method

.method public useStore(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->useNoStore()V

    return-void
.end method
