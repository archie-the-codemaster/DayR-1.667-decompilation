.class Lplugin/notifications/v2/LuaLoader$Subscribe;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/notifications/v2/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Subscribe"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/notifications/v2/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/notifications/v2/LuaLoader;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lplugin/notifications/v2/LuaLoader$Subscribe;->this$0:Lplugin/notifications/v2/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lplugin/notifications/v2/LuaLoader$Subscribe;-><init>(Lplugin/notifications/v2/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "subscribe"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const-string v0, "notifications.subscribe(topic)"

    .line 325
    invoke-static {v0}, Lplugin/notifications/v2/LuaLoader;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    const-string v1, "ERROR: "

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 330
    iget-object p1, p0, Lplugin/notifications/v2/LuaLoader$Subscribe;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 1 argument, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 337
    :cond_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v4, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v0, v4, :cond_2

    .line 338
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    new-instance v1, Lplugin/notifications/v2/LuaLoader$Subscribe$1;

    invoke-direct {v1, p0, p1}, Lplugin/notifications/v2/LuaLoader$Subscribe$1;-><init>(Lplugin/notifications/v2/LuaLoader$Subscribe;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return v2

    .line 341
    :cond_2
    iget-object v0, p0, Lplugin/notifications/v2/LuaLoader$Subscribe;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.topic (string) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
