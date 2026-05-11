.class Lplugin/google/iap/v3/LuaLoader$3;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/LuaLoader;->restore(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/LuaLoader;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$3;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Inventory;)V
    .locals 4

    .line 257
    invoke-virtual {p1}, Lplugin/google/iap/v3/util/IabResult;->isFailure()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    invoke-virtual {p2}, Lplugin/google/iap/v3/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object p2

    .line 264
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 265
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$3;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v0}, Lplugin/google/iap/v3/LuaLoader;->access$1300(Lplugin/google/iap/v3/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lplugin/google/iap/v3/util/Purchase;

    iget-object v3, p0, Lplugin/google/iap/v3/LuaLoader$3;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v3}, Lplugin/google/iap/v3/LuaLoader;->access$1100(Lplugin/google/iap/v3/LuaLoader;)I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;-><init>(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabResult;I)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    :cond_1
    return-void

    .line 258
    :cond_2
    :goto_1
    new-instance p2, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;

    const/4 v0, 0x0

    iget-object v1, p0, Lplugin/google/iap/v3/LuaLoader$3;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v1}, Lplugin/google/iap/v3/LuaLoader;->access$1100(Lplugin/google/iap/v3/LuaLoader;)I

    move-result v1

    invoke-direct {p2, v0, p1, v1}, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;-><init>(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabResult;I)V

    .line 259
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader$3;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {p1}, Lplugin/google/iap/v3/LuaLoader;->access$1300(Lplugin/google/iap/v3/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method
