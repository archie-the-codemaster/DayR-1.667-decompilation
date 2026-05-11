.class public Lplugin/google/iap/v3/StoreTransactionRuntimeTask;
.super Ljava/lang/Object;
.source "StoreTransactionRuntimeTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fListener:I

.field private fPurchase:Lplugin/google/iap/v3/util/Purchase;

.field private fResult:Lplugin/google/iap/v3/util/IabResult;


# direct methods
.method public constructor <init>(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabResult;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    .line 37
    iput-object p2, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    .line 38
    iput p3, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fListener:I

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5

    .line 43
    iget v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fListener:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    :try_start_0
    const-string v0, "storeTransaction"

    .line 51
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 54
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->isFailure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "isError"

    .line 56
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 58
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->getResponse()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "errorType"

    .line 59
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 61
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "errorString"

    .line 62
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const-string v0, "failed"

    goto/16 :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "type"

    .line 67
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 69
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "identifier"

    .line 70
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 72
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "packageName"

    .line 73
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    .line 76
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/Purchase;->getPurchaseTime()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "date"

    .line 79
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask$1;->$SwitchMap$plugin$google$iap$v3$util$Purchase$State:[I

    iget-object v3, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v3}, Lplugin/google/iap/v3/util/Purchase;->getPurchaseState()Lplugin/google/iap/v3/util/Purchase$State;

    move-result-object v3

    invoke-virtual {v3}, Lplugin/google/iap/v3/util/Purchase$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const-string v0, "unknown"

    goto :goto_0

    :cond_2
    const-string v0, "consumed"

    goto :goto_0

    :cond_3
    const-string v0, "refunded"

    goto :goto_0

    :cond_4
    const-string v0, "cancelled"

    goto :goto_0

    :cond_5
    const-string v0, "purchased"

    .line 98
    :goto_0
    iget-object v1, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "token"

    .line 99
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 101
    iget-object v1, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "originalJson"

    .line 102
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 104
    iget-object v1, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "receipt"

    .line 105
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 107
    iget-object v1, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fPurchase:Lplugin/google/iap/v3/util/Purchase;

    invoke-virtual {v1}, Lplugin/google/iap/v3/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "signature"

    .line 108
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 111
    :goto_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "state"

    .line 112
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    const-string v0, "transaction"

    .line 114
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 117
    iget v0, p0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;->fListener:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Corona"

    const-string v1, "StoreTransactionRuntimeTask: dispatching Google IAP storeTransaction event"

    .line 120
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
