.class Lplugin/admob/LuaLoader$Init;
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
    name = "Init"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$Init;-><init>(Lplugin/admob/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "init"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 13

    const-string v1, "admob.init(listener, options)"

    .line 502
    invoke-static {v1}, Lplugin/admob/LuaLoader;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 505
    invoke-static {}, Lplugin/admob/LuaLoader;->access$800()I

    move-result v1

    const/4 v2, -0x1

    const/4 v7, 0x0

    if-eq v1, v2, :cond_0

    .line 506
    iget-object v0, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "WARNING: "

    const-string v2, "init() should only be called once"

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 511
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    const/4 v3, 0x2

    const-string v4, "ERROR: "

    if-eq v1, v3, :cond_1

    .line 513
    iget-object v0, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 2 arguments, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_1
    const/4 v1, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    const-string v9, "admob"

    .line 522
    invoke-static {p1, v8, v9}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 523
    invoke-static {p1, v8}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v9

    invoke-static {v9}, Lplugin/admob/LuaLoader;->access$802(I)I

    .line 531
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v9

    sget-object v10, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v9, v10, :cond_c

    .line 533
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    move-wide v9, v5

    const/4 v6, 0x0

    move-object v5, v1

    :goto_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v1

    const-string v11, "\'"

    if-eqz v1, :cond_8

    const/4 v1, -0x2

    .line 534
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "appId"

    .line 537
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 538
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    sget-object v5, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v1, v5, :cond_2

    .line 539
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 542
    :cond_2
    iget-object v1, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.appId (string) expected, got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_3
    const-string v12, "testMode"

    .line 546
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 547
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    sget-object v6, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v1, v6, :cond_4

    .line 548
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v6

    goto :goto_1

    .line 551
    :cond_4
    iget-object v1, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.testMode (boolean) expected, got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_5
    const-string v9, "videoAdVolume"

    .line 555
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 556
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    sget-object v9, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v1, v9, :cond_6

    .line 557
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v9

    .line 533
    :goto_1
    invoke-virtual {p1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto/16 :goto_0

    .line 560
    :cond_6
    iget-object v1, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.videoAdVolume (number) expected, got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 565
    :cond_7
    iget-object v0, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid option \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_8
    if-nez v5, :cond_9

    .line 577
    iget-object v0, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "options.appId is required"

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 582
    :cond_9
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v8

    if-eqz v6, :cond_a

    .line 590
    invoke-virtual {v8}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v1, v0}, Lplugin/admob/LuaLoader;->access$1400(Lplugin/admob/LuaLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin.admob: Generated AdMob Test ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Corona"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    const-string v2, "testDevice"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v8, :cond_b

    .line 598
    new-instance v11, Lplugin/admob/LuaLoader$Init$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v8

    move-object v3, v5

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Lplugin/admob/LuaLoader$Init$1;-><init>(Lplugin/admob/LuaLoader$Init;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;DZ)V

    invoke-virtual {v8, v11}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    return v7

    .line 571
    :cond_c
    iget-object v1, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options table expected, got "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 526
    :cond_d
    iget-object v1, p0, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener expected, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method
