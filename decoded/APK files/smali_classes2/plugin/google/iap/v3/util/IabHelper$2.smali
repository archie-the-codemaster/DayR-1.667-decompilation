.class Lplugin/google/iap/v3/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/util/IabHelper;

.field final synthetic val$listener:Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/Set;

.field final synthetic val$moreSubSkus:Ljava/util/Set;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/util/IabHelper;ZLjava/util/Set;Ljava/util/Set;Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$2;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iput-boolean p2, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$moreSkus:Ljava/util/Set;

    iput-object p4, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$moreSubSkus:Ljava/util/Set;

    iput-object p5, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$listener:Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 638
    new-instance v0, Lplugin/google/iap/v3/util/IabResult;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 641
    :try_start_0
    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper$2;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-boolean v2, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v3, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$moreSkus:Ljava/util/Set;

    iget-object v4, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$moreSubSkus:Ljava/util/Set;

    invoke-virtual {v1, v2, v3, v4}, Lplugin/google/iap/v3/util/IabHelper;->queryInventory(ZLjava/util/Set;Ljava/util/Set;)Lplugin/google/iap/v3/util/Inventory;

    move-result-object v1
    :try_end_0
    .catch Lplugin/google/iap/v3/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 644
    invoke-virtual {v0}, Lplugin/google/iap/v3/util/IabException;->getResult()Lplugin/google/iap/v3/util/IabResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 649
    :goto_0
    iget-object v2, p0, Lplugin/google/iap/v3/util/IabHelper$2;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-boolean v2, v2, Lplugin/google/iap/v3/util/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lplugin/google/iap/v3/util/IabHelper$2;->val$listener:Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 650
    invoke-interface {v2, v0, v1}, Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Inventory;)V

    :cond_0
    return-void
.end method
