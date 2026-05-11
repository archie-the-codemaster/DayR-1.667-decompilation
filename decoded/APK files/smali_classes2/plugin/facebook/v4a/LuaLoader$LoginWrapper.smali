.class Lplugin/facebook/v4a/LuaLoader$LoginWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebook/v4a/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebook/v4a/LuaLoader;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lplugin/facebook/v4a/LuaLoader$LoginWrapper;->this$0:Lplugin/facebook/v4a/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lplugin/facebook/v4a/LuaLoader$LoginWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "login"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facebook."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lplugin/facebook/v4a/LuaLoader$LoginWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 231
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    .line 232
    sget-object v4, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 234
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": appId is no longer a required argument. This argument will be ignored."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Corona"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :goto_1
    const-string v3, "fbconnect"

    .line 239
    invoke-static {p1, v0, v3}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v3

    invoke-static {v3}, Lplugin/facebook/v4a/FacebookController;->setFBConnectListener(I)V

    add-int/lit8 v0, v0, 0x1

    .line 244
    :cond_2
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    sget-object v4, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v3, v4, :cond_3

    .line 245
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v3

    const/4 v4, 0x1

    :goto_2
    if-gt v4, v3, :cond_3

    .line 247
    invoke-virtual {p1, v0, v4}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    const/4 v5, -0x1

    .line 248
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    .line 255
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookController;->facebookLogin([Ljava/lang/String;)V

    return p1
.end method
