.class Lplugin/facebookAnalytics/LuaLoader$setUserProperties;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebookAnalytics/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setUserProperties"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebookAnalytics/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebookAnalytics/LuaLoader;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lplugin/facebookAnalytics/LuaLoader$setUserProperties;->this$0:Lplugin/facebookAnalytics/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lplugin/facebookAnalytics/LuaLoader$setUserProperties;-><init>(Lplugin/facebookAnalytics/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "setUserProperties"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v1, 0x1

    .line 229
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    :goto_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    .line 231
    invoke-static {p1, v2}, Lplugin/facebookAnalytics/LuaLoader;->getStringFrom(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->checkBoolean(I)Z

    :cond_0
    const/4 v4, -0x2

    .line 240
    invoke-static {p1, v4}, Lplugin/facebookAnalytics/LuaLoader;->getStringFrom(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v5

    sget-object v6, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v5, v6, :cond_1

    .line 242
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v5, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, v5, :cond_2

    .line 244
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    .line 252
    :cond_3
    new-instance p1, Lplugin/facebookAnalytics/LuaLoader$setUserProperties$1;

    invoke-direct {p1, p0}, Lplugin/facebookAnalytics/LuaLoader$setUserProperties$1;-><init>(Lplugin/facebookAnalytics/LuaLoader$setUserProperties;)V

    invoke-static {v0, p1}, Lcom/facebook/appevents/AppEventsLogger;->updateUserProperties(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)V

    const/4 p1, 0x0

    return p1
.end method
