.class Lplugin/facebookAnalytics/LuaLoader$setUserID;
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
    name = "setUserID"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebookAnalytics/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebookAnalytics/LuaLoader;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lplugin/facebookAnalytics/LuaLoader$setUserID;->this$0:Lplugin/facebookAnalytics/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lplugin/facebookAnalytics/LuaLoader$setUserID;-><init>(Lplugin/facebookAnalytics/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "setUserID"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 194
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->setUserID(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->clearUserID()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
