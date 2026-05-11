.class Lplugin/facebookAnalytics/LuaLoader$init;
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
    name = "init"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebookAnalytics/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebookAnalytics/LuaLoader;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lplugin/facebookAnalytics/LuaLoader$init;->this$0:Lplugin/facebookAnalytics/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lplugin/facebookAnalytics/LuaLoader$init;-><init>(Lplugin/facebookAnalytics/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "init"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 167
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 168
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
