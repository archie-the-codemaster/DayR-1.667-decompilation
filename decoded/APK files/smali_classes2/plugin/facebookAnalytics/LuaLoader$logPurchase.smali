.class Lplugin/facebookAnalytics/LuaLoader$logPurchase;
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
    name = "logPurchase"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebookAnalytics/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebookAnalytics/LuaLoader;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lplugin/facebookAnalytics/LuaLoader$logPurchase;->this$0:Lplugin/facebookAnalytics/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lplugin/facebookAnalytics/LuaLoader$logPurchase;-><init>(Lplugin/facebookAnalytics/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "logPurchase"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    .line 269
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const/4 v1, 0x1

    .line 271
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    const/4 p1, 0x0

    return p1
.end method
