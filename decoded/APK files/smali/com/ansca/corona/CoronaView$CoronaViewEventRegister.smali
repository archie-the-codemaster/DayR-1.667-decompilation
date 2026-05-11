.class Lcom/ansca/corona/CoronaView$CoronaViewEventRegister;
.super Ljava/lang/Object;
.source "CoronaView.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaViewEventRegister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaView;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/ansca/corona/CoronaView$CoronaViewEventRegister;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaView;Lcom/ansca/corona/CoronaView$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaView$CoronaViewEventRegister;-><init>(Lcom/ansca/corona/CoronaView;)V

    return-void
.end method


# virtual methods
.method public onWillLoadMain(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 382
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v0, "Runtime"

    .line 383
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "addEventListener"

    .line 384
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v0, -0x2

    .line 385
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->insert(I)V

    const-string v0, "coronaView"

    .line 386
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 387
    new-instance v0, Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;

    iget-object v1, p0, Lcom/ansca/corona/CoronaView$CoronaViewEventRegister;->this$0:Lcom/ansca/corona/CoronaView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;-><init>(Lcom/ansca/corona/CoronaView;Lcom/ansca/corona/CoronaView$1;)V

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 391
    invoke-static {p0}, Lcom/ansca/corona/CoronaRuntime;->removeWillLoadMainListener(Lcom/ansca/corona/CoronaRuntimeWillLoadMainListener;)V

    return-void
.end method
