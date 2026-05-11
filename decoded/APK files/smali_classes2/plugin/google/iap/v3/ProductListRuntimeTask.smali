.class public Lplugin/google/iap/v3/ProductListRuntimeTask;
.super Ljava/lang/Object;
.source "ProductListRuntimeTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private fInventory:Lplugin/google/iap/v3/util/Inventory;

.field private fListener:I

.field private fManagedProducts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fResult:Lplugin/google/iap/v3/util/IabResult;

.field private fSubscriptionProducts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lplugin/google/iap/v3/util/Inventory;Ljava/util/HashSet;Ljava/util/HashSet;Lplugin/google/iap/v3/util/IabResult;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lplugin/google/iap/v3/util/Inventory;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lplugin/google/iap/v3/util/IabResult;",
            "I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fInventory:Lplugin/google/iap/v3/util/Inventory;

    .line 42
    iput p5, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fListener:I

    .line 43
    iput-object p4, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    .line 44
    iput-object p2, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fManagedProducts:Ljava/util/HashSet;

    .line 45
    iput-object p3, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fSubscriptionProducts:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 7

    .line 50
    iget v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fListener:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    :try_start_0
    const-string v0, "productList"

    .line 58
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->isFailure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v0, "isError"

    .line 62
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->getResponse()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v0, "errorType"

    .line 65
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fResult:Lplugin/google/iap/v3/util/IabResult;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "errorString"

    .line 68
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 72
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fInventory:Lplugin/google/iap/v3/util/Inventory;

    invoke-virtual {v0}, Lplugin/google/iap/v3/util/Inventory;->getAllSkuDetails()Ljava/util/Collection;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    .line 76
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lplugin/google/iap/v3/util/SkuDetails;

    .line 79
    invoke-virtual {v4, p1, v2}, Lplugin/google/iap/v3/util/SkuDetails;->pushToLua(Lcom/naef/jnlua/LuaState;I)V

    .line 80
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    add-int/lit8 v3, v3, 0x1

    .line 83
    iget-object v5, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fManagedProducts:Ljava/util/HashSet;

    if-eqz v5, :cond_3

    .line 84
    iget-object v5, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fManagedProducts:Ljava/util/HashSet;

    invoke-virtual {v4}, Lplugin/google/iap/v3/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    iget-object v5, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fSubscriptionProducts:Ljava/util/HashSet;

    if-eqz v5, :cond_2

    .line 87
    iget-object v5, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fSubscriptionProducts:Ljava/util/HashSet;

    invoke-virtual {v4}, Lplugin/google/iap/v3/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v0, "products"

    .line 90
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 93
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fManagedProducts:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fManagedProducts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    const/4 v3, 0x1

    .line 97
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    :cond_5
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fSubscriptionProducts:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fSubscriptionProducts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const-string v0, "invalidProducts"

    .line 114
    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 119
    :goto_3
    iget v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fListener:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "Corona"

    const-string v2, "ProductListRuntimeTask: dispatching Google IAP productList event"

    .line 122
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :goto_4
    iget v0, p0, Lplugin/google/iap/v3/ProductListRuntimeTask;->fListener:I

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    return-void
.end method
