.class Lplugin/admob/LuaLoader$Hide;
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
    name = "Hide"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Lplugin/admob/LuaLoader$Hide;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V
    .locals 0

    .line 1457
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$Hide;-><init>(Lplugin/admob/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "hide"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "admob.hide()"

    .line 1477
    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 1479
    iget-object v0, p0, Lplugin/admob/LuaLoader$Hide;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$1700(Lplugin/admob/LuaLoader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1484
    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1486
    iget-object v0, p0, Lplugin/admob/LuaLoader$Hide;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected no arguments, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ERROR: "

    invoke-static {v0, v2, p1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1491
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1494
    new-instance v0, Lplugin/admob/LuaLoader$Hide$1;

    invoke-direct {v0, p0, p1}, Lplugin/admob/LuaLoader$Hide$1;-><init>(Lplugin/admob/LuaLoader$Hide;Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method
