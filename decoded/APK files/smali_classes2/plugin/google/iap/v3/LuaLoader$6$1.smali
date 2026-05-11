.class Lplugin/google/iap/v3/LuaLoader$6$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/LuaLoader$6;->onQueryInventoryFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Inventory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/google/iap/v3/LuaLoader$6;


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/LuaLoader$6;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$6$1;->this$1:Lplugin/google/iap/v3/LuaLoader$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lplugin/google/iap/v3/util/Purchase;",
            ">;",
            "Ljava/util/List<",
            "Lplugin/google/iap/v3/util/IabResult;",
            ">;)V"
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 393
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 398
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lplugin/google/iap/v3/util/Purchase;

    .line 400
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lplugin/google/iap/v3/util/IabResult;

    .line 402
    sget-object v2, Lplugin/google/iap/v3/util/Purchase$State;->Consumed:Lplugin/google/iap/v3/util/Purchase$State;

    invoke-virtual {v0, v2}, Lplugin/google/iap/v3/util/Purchase;->setPurchaseState(Lplugin/google/iap/v3/util/Purchase$State;)V

    .line 403
    new-instance v2, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;

    iget-object v3, p0, Lplugin/google/iap/v3/LuaLoader$6$1;->this$1:Lplugin/google/iap/v3/LuaLoader$6;

    iget-object v3, v3, Lplugin/google/iap/v3/LuaLoader$6;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v3}, Lplugin/google/iap/v3/LuaLoader;->access$1100(Lplugin/google/iap/v3/LuaLoader;)I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;-><init>(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabResult;I)V

    .line 404
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$6$1;->this$1:Lplugin/google/iap/v3/LuaLoader$6;

    iget-object v0, v0, Lplugin/google/iap/v3/LuaLoader$6;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v0}, Lplugin/google/iap/v3/LuaLoader;->access$1300(Lplugin/google/iap/v3/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method
