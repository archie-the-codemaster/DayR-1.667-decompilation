.class final Lplugin/facebook/v4a/FacebookController$4;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController;->dispatchFBInitEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 283
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v0, "fbinit"

    .line 285
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    const-string v0, "initialized"

    .line 287
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    const-string v1, "phase"

    .line 288
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :try_start_0
    const-string v0, "Corona"

    const-string v1, "++++++++++: FacebookController.dispatchFBInitEvent(): dispatching fbinit event"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lplugin/facebook/v4a/FacebookController;->access$400()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
