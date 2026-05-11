.class Lplugin/admob/LuaLoader$4;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader;->dispatchLuaEvent(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;

.field final synthetic val$event:Ljava/util/Map;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lplugin/admob/LuaLoader$4;->this$0:Lplugin/admob/LuaLoader;

    iput-object p2, p0, Lplugin/admob/LuaLoader$4;->val$event:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 7

    .line 411
    :try_start_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v0, "adsRequest"

    .line 412
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lplugin/admob/LuaLoader$4;->val$event:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "isError"

    const/4 v5, -0x2

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    iget-object v6, p0, Lplugin/admob/LuaLoader$4;->val$event:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/ansca/corona/CoronaLua;->pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p1, v5, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    if-nez v2, :cond_0

    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 427
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 428
    invoke-virtual {p1, v5, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_2
    const-string v0, "admob"

    .line 432
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v0, "provider"

    .line 433
    invoke-virtual {p1, v5, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 435
    invoke-static {}, Lplugin/admob/LuaLoader;->access$800()I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
