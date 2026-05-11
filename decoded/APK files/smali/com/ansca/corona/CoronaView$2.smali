.class Lcom/ansca/corona/CoronaView$2;
.super Ljava/lang/Object;
.source "CoronaView.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaView;->sendEvent(Ljava/util/Hashtable;Lcom/ansca/corona/CoronaView$SendEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaView;

.field final synthetic val$hashtable:Ljava/util/Hashtable;

.field final synthetic val$listener:Lcom/ansca/corona/CoronaView$SendEventListener;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaView;Ljava/util/Hashtable;Lcom/ansca/corona/CoronaView$SendEventListener;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/ansca/corona/CoronaView$2;->this$0:Lcom/ansca/corona/CoronaView;

    iput-object p2, p0, Lcom/ansca/corona/CoronaView$2;->val$hashtable:Ljava/util/Hashtable;

    iput-object p3, p0, Lcom/ansca/corona/CoronaView$2;->val$listener:Lcom/ansca/corona/CoronaView$SendEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 339
    iget-object v0, p0, Lcom/ansca/corona/CoronaView$2;->val$hashtable:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    const/4 v0, 0x1

    .line 340
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->dispatchRuntimeEvent(Lcom/naef/jnlua/LuaState;I)V

    const/4 v1, -0x1

    .line 342
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->toValue(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object v1

    .line 343
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 350
    instance-of p1, v1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/CoronaView$2;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-static {p1}, Lcom/ansca/corona/CoronaView;->access$200(Lcom/ansca/corona/CoronaView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/CoronaView$2$1;

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/CoronaView$2$1;-><init>(Lcom/ansca/corona/CoronaView$2;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
