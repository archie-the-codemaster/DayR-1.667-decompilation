.class Lcom/ansca/corona/CoronaStoreApiHandler$1;
.super Ljava/lang/Object;
.source "CoronaStoreApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaStoreApiHandler;->storeInit(Ljava/lang/String;)V
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

    .line 27
    iput-object p1, p0, Lcom/ansca/corona/CoronaStoreApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ansca/corona/CoronaStoreApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/ansca/corona/CoronaStoreApiHandler$1;->this$0:Lcom/ansca/corona/CoronaStoreApiHandler;

    invoke-static {v1}, Lcom/ansca/corona/CoronaStoreApiHandler;->access$000(Lcom/ansca/corona/CoronaStoreApiHandler;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->showStoreDeprecatedAlert()V

    .line 33
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/StoreProxy;->enable()V

    :cond_0
    return-void
.end method
