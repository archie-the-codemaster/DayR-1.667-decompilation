.class Lplugin/facebookAnalytics/LuaLoader$logEvent;
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
    name = "logEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebookAnalytics/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebookAnalytics/LuaLoader;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lplugin/facebookAnalytics/LuaLoader$logEvent;->this$0:Lplugin/facebookAnalytics/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebookAnalytics/LuaLoader;Lplugin/facebookAnalytics/LuaLoader$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lplugin/facebookAnalytics/LuaLoader$logEvent;-><init>(Lplugin/facebookAnalytics/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "logEvent"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 9

    .line 283
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const/4 v1, 0x1

    .line 285
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 289
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 290
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v3, 0x2

    .line 291
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    :goto_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    .line 293
    invoke-static {p1, v4}, Lplugin/facebookAnalytics/LuaLoader;->getStringFrom(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;

    move-result-object v5

    .line 298
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->checkBoolean(I)Z

    :cond_0
    const/4 v6, -0x2

    .line 302
    invoke-static {p1, v6}, Lplugin/facebookAnalytics/LuaLoader;->getStringFrom(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v7

    sget-object v8, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v7, v8, :cond_1

    .line 304
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    sget-object v7, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v4, v7, :cond_2

    .line 306
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 313
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 314
    :cond_4
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    .line 315
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 316
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result p1

    int-to-double v3, p1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_2

    .line 318
    :cond_5
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result p1

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;D)V

    goto :goto_2

    .line 321
    :cond_6
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return p1
.end method
