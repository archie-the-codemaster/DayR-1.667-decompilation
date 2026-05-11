.class Lcom/ansca/corona/CoronaStoreApiHandler$4;
.super Ljava/lang/Object;
.source "CoronaStoreApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaStoreApiHandler;->storeRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaStoreApiHandler;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaStoreApiHandler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ansca/corona/CoronaStoreApiHandler$4;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$4;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$4;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/StoreProxy;->restorePurchases()V

    :cond_0
    return-void
.end method
