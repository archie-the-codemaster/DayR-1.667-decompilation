.class Lplugin/google/iap/v3/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/util/IabHelper;

.field final synthetic val$multiListener:Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/util/IabHelper;Ljava/util/List;Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lplugin/google/iap/v3/util/IabHelper$3;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iput-object p2, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$singleListener:Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$multiListener:Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lplugin/google/iap/v3/util/Purchase;

    .line 983
    :try_start_0
    iget-object v4, p0, Lplugin/google/iap/v3/util/IabHelper$3;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    invoke-virtual {v4, v2}, Lplugin/google/iap/v3/util/IabHelper;->consume(Lplugin/google/iap/v3/util/Purchase;)V

    .line 984
    new-instance v4, Lplugin/google/iap/v3/util/IabResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lplugin/google/iap/v3/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lplugin/google/iap/v3/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lplugin/google/iap/v3/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 987
    invoke-virtual {v2}, Lplugin/google/iap/v3/util/IabException;->getResult()Lplugin/google/iap/v3/util/IabResult;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 991
    :cond_0
    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper$3;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-boolean v1, v1, Lplugin/google/iap/v3/util/IabHelper;->mDisposed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$singleListener:Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v1, :cond_1

    .line 992
    iget-object v2, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lplugin/google/iap/v3/util/Purchase;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lplugin/google/iap/v3/util/IabResult;

    invoke-interface {v1, v2, v3}, Lplugin/google/iap/v3/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabResult;)V

    .line 994
    :cond_1
    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper$3;->this$0:Lplugin/google/iap/v3/util/IabHelper;

    iget-boolean v1, v1, Lplugin/google/iap/v3/util/IabHelper;->mDisposed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$multiListener:Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v1, :cond_2

    .line 995
    iget-object v2, p0, Lplugin/google/iap/v3/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lplugin/google/iap/v3/util/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method
