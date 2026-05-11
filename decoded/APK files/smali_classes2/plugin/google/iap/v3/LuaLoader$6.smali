.class Lplugin/google/iap/v3/LuaLoader$6;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/LuaLoader;->consumePurchase(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/LuaLoader;

.field final synthetic val$consumedProducts:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/LuaLoader;Ljava/util/HashSet;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$6;->this$0:Lplugin/google/iap/v3/LuaLoader;

    iput-object p2, p0, Lplugin/google/iap/v3/LuaLoader$6;->val$consumedProducts:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Inventory;)V
    .locals 3

    .line 374
    invoke-virtual {p1}, Lplugin/google/iap/v3/util/IabResult;->isFailure()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 380
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$6;->val$consumedProducts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    iget-object v0, p0, Lplugin/google/iap/v3/LuaLoader$6;->val$consumedProducts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 383
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    invoke-virtual {p2, v1}, Lplugin/google/iap/v3/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {p2, v1}, Lplugin/google/iap/v3/util/Inventory;->getPurchase(Ljava/lang/String;)Lplugin/google/iap/v3/util/Purchase;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_2
    iget-object p2, p0, Lplugin/google/iap/v3/LuaLoader$6;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {p2}, Lplugin/google/iap/v3/LuaLoader;->access$1000(Lplugin/google/iap/v3/LuaLoader;)Lplugin/google/iap/v3/util/IabHelper;

    move-result-object p2

    new-instance v0, Lplugin/google/iap/v3/LuaLoader$6$1;

    invoke-direct {v0, p0}, Lplugin/google/iap/v3/LuaLoader$6$1;-><init>(Lplugin/google/iap/v3/LuaLoader$6;)V

    invoke-virtual {p2, p1, v0}, Lplugin/google/iap/v3/util/IabHelper;->consumeAsync(Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void

    .line 375
    :cond_3
    :goto_1
    new-instance p2, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;

    const/4 v0, 0x0

    iget-object v1, p0, Lplugin/google/iap/v3/LuaLoader$6;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {v1}, Lplugin/google/iap/v3/LuaLoader;->access$1100(Lplugin/google/iap/v3/LuaLoader;)I

    move-result v1

    invoke-direct {p2, v0, p1, v1}, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;-><init>(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabResult;I)V

    .line 376
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader$6;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {p1}, Lplugin/google/iap/v3/LuaLoader;->access$1300(Lplugin/google/iap/v3/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method
