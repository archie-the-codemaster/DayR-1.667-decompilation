.class public Lplugin/google/iap/v3/util/Inventory;
.super Ljava/lang/Object;
.source "Inventory.java"


# instance fields
.field mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lplugin/google/iap/v3/util/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field mSkuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lplugin/google/iap/v3/util/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mSkuMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addPurchase(Lplugin/google/iap/v3/util/Purchase;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-virtual {p1}, Lplugin/google/iap/v3/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addSkuDetails(Lplugin/google/iap/v3/util/SkuDetails;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-virtual {p1}, Lplugin/google/iap/v3/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getAllOwnedSkus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v1, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lplugin/google/iap/v3/util/Purchase;

    .line 79
    invoke-virtual {v2}, Lplugin/google/iap/v3/util/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lplugin/google/iap/v3/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllPurchases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lplugin/google/iap/v3/util/Purchase;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllSkuDetails()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lplugin/google/iap/v3/util/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPurchase(Ljava/lang/String;)Lplugin/google/iap/v3/util/Purchase;
    .locals 1

    .line 41
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lplugin/google/iap/v3/util/Purchase;

    return-object p1
.end method

.method public getSkuDetails(Ljava/lang/String;)Lplugin/google/iap/v3/util/SkuDetails;
    .locals 1

    .line 36
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lplugin/google/iap/v3/util/SkuDetails;

    return-object p1
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lplugin/google/iap/v3/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
