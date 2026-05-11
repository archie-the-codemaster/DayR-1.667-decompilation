.class Lplugin/admob/LuaLoader$IsLoaded;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V
    .locals 0

    .line 961
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$IsLoaded;-><init>(Lplugin/admob/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "isLoaded"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    const-string v0, "admob.isLoaded(adType [, options])"

    .line 981
    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 983
    iget-object v0, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$1700(Lplugin/admob/LuaLoader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 988
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const-string v2, "ERROR: "

    const/4 v3, 0x1

    if-lt v0, v3, :cond_9

    const/4 v4, 0x2

    if-le v0, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 999
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v5

    sget-object v6, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v5, v6, :cond_8

    .line 1000
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1008
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v6

    const-string v7, "\'"

    if-nez v6, :cond_5

    .line 1009
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v6

    sget-object v8, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v6, v8, :cond_4

    .line 1011
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, -0x2

    .line 1012
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "adUnitId"

    .line 1014
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, -0x1

    .line 1015
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v6

    sget-object v8, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v6, v8, :cond_2

    .line 1016
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    .line 1019
    :cond_2
    iget-object v3, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.adUnitId (string) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1024
    :cond_3
    iget-object p1, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid option \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1030
    :cond_4
    iget-object v0, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options table expected, got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1036
    :cond_5
    invoke-static {}, Lplugin/admob/LuaLoader;->access$900()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1037
    iget-object p1, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid adType \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1042
    :cond_6
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1052
    :try_start_0
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lplugin/admob/LuaLoader$IsLoaded$1;

    invoke-direct {v6, p0, v0, v5}, Lplugin/admob/LuaLoader$IsLoaded$1;-><init>(Lplugin/admob/LuaLoader$IsLoaded;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1088
    invoke-virtual {v2, v4}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x7d0

    .line 1091
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1098
    :cond_7
    :goto_1
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    return v3

    .line 1003
    :cond_8
    iget-object v0, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adType (string) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 990
    :cond_9
    :goto_2
    iget-object p1, p0, Lplugin/admob/LuaLoader$IsLoaded;->this$0:Lplugin/admob/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 1 or 2 arguments, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
