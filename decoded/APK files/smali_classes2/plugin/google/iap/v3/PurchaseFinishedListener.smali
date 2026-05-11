.class public Lplugin/google/iap/v3/PurchaseFinishedListener;
.super Ljava/lang/Object;
.source "PurchaseFinishedListener.java"

# interfaces
.implements Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;


# static fields
.field private static sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lplugin/google/iap/v3/PurchaseFinishedListener;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lplugin/google/iap/v3/PurchaseFinishedListener;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 52
    iput p2, p0, Lplugin/google/iap/v3/PurchaseFinishedListener;->fListener:I

    return-void
.end method

.method public static addListener(Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 1

    .line 40
    sget-object v0, Lplugin/google/iap/v3/PurchaseFinishedListener;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeListener(Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 1

    .line 44
    sget-object v0, Lplugin/google/iap/v3/PurchaseFinishedListener;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V
    .locals 2

    .line 57
    sget-object v0, Lplugin/google/iap/v3/PurchaseFinishedListener;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 61
    invoke-interface {v1, p1, p2}, Lplugin/google/iap/v3/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Purchase;)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;

    iget v1, p0, Lplugin/google/iap/v3/PurchaseFinishedListener;->fListener:I

    invoke-direct {v0, p2, p1, v1}, Lplugin/google/iap/v3/StoreTransactionRuntimeTask;-><init>(Lplugin/google/iap/v3/util/Purchase;Lplugin/google/iap/v3/util/IabResult;I)V

    .line 68
    iget-object p1, p0, Lplugin/google/iap/v3/PurchaseFinishedListener;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method
