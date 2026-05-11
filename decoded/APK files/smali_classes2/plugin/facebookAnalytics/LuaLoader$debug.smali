.class Lplugin/facebookAnalytics/LuaLoader$debug;
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
    name = "debug"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebookAnalytics/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebookAnalytics/LuaLoader;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lplugin/facebookAnalytics/LuaLoader$debug;->this$0:Lplugin/facebookAnalytics/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lplugin/facebookAnalytics/LuaLoader$debug;-><init>(Lplugin/facebookAnalytics/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "debug"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 0

    const/4 p1, 0x1

    .line 212
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setIsDebugEnabled(Z)V

    .line 213
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    const/4 p1, 0x0

    return p1
.end method
