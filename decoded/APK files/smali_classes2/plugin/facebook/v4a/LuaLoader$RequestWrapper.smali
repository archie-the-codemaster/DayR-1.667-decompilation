.class Lplugin/facebook/v4a/LuaLoader$RequestWrapper;
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
    name = "RequestWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebook/v4a/LuaLoader;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lplugin/facebook/v4a/LuaLoader$RequestWrapper;->this$0:Lplugin/facebook/v4a/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lplugin/facebook/v4a/LuaLoader$RequestWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "request"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v0, 0x1

    .line 335
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 343
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, v3, :cond_0

    .line 344
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "GET"

    :goto_0
    const/4 v2, 0x3

    .line 349
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    sget-object v4, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v3, v4, :cond_1

    .line 350
    invoke-static {p1, v2}, Lcom/ansca/corona/CoronaLua;->toHashtable(Lcom/naef/jnlua/LuaState;I)Ljava/util/Hashtable;

    move-result-object p1

    goto :goto_1

    .line 352
    :cond_1
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 355
    :goto_1
    invoke-static {v0, v1, p1}, Lplugin/facebook/v4a/FacebookController;->facebookRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    const/4 p1, 0x0

    return p1
.end method
