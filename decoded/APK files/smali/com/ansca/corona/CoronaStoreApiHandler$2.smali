.class Lcom/ansca/corona/CoronaStoreApiHandler$2;
.super Ljava/lang/Object;
.source "CoronaStoreApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaStoreApiHandler;->storePurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

.field final synthetic val$finalProductName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaStoreApiHandler;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ansca/corona/CoronaStoreApiHandler$2;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaStoreApiHandler$2;->val$finalProductName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$2;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$2;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaStoreApiHandler$2;->val$finalProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreProxy;->purchase(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
