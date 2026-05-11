.class Lplugin/google/iap/v3/LuaLoader$2;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lplugin/google/iap/v3/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/google/iap/v3/LuaLoader;->loadProducts(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/google/iap/v3/LuaLoader;

.field final synthetic val$finalSubscriptionProducts:Ljava/util/HashSet;

.field final synthetic val$listener:I

.field final synthetic val$managedProducts:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lplugin/google/iap/v3/LuaLoader;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    .locals 0

    .line 236
    iput-object p1, p0, Lplugin/google/iap/v3/LuaLoader$2;->this$0:Lplugin/google/iap/v3/LuaLoader;

    iput-object p2, p0, Lplugin/google/iap/v3/LuaLoader$2;->val$managedProducts:Ljava/util/HashSet;

    iput-object p3, p0, Lplugin/google/iap/v3/LuaLoader$2;->val$finalSubscriptionProducts:Ljava/util/HashSet;

    iput p4, p0, Lplugin/google/iap/v3/LuaLoader$2;->val$listener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lplugin/google/iap/v3/util/IabResult;Lplugin/google/iap/v3/util/Inventory;)V
    .locals 7

    .line 239
    new-instance v6, Lplugin/google/iap/v3/ProductListRuntimeTask;

    iget-object v2, p0, Lplugin/google/iap/v3/LuaLoader$2;->val$managedProducts:Ljava/util/HashSet;

    iget-object v3, p0, Lplugin/google/iap/v3/LuaLoader$2;->val$finalSubscriptionProducts:Ljava/util/HashSet;

    iget v5, p0, Lplugin/google/iap/v3/LuaLoader$2;->val$listener:I

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lplugin/google/iap/v3/ProductListRuntimeTask;-><init>(Lplugin/google/iap/v3/util/Inventory;Ljava/util/HashSet;Ljava/util/HashSet;Lplugin/google/iap/v3/util/IabResult;I)V

    .line 240
    iget-object p1, p0, Lplugin/google/iap/v3/LuaLoader$2;->this$0:Lplugin/google/iap/v3/LuaLoader;

    invoke-static {p1}, Lplugin/google/iap/v3/LuaLoader;->access$1300(Lplugin/google/iap/v3/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    return-void
.end method
