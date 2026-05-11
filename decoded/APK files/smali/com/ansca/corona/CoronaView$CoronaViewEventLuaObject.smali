.class Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;
.super Ljava/lang/Object;
.source "CoronaView.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaViewEventLuaObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaView;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaView;Lcom/ansca/corona/CoronaView$1;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;-><init>(Lcom/ansca/corona/CoronaView;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaView;->access$400(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaView$CoronaEventListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 406
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->toHashtable(Lcom/naef/jnlua/LuaState;I)Ljava/util/Hashtable;

    move-result-object v0

    .line 409
    iget-object v2, p0, Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-static {v2}, Lcom/ansca/corona/CoronaView;->access$400(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaView$CoronaEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaView$CoronaViewEventLuaObject;->this$0:Lcom/ansca/corona/CoronaView;

    invoke-static {v3}, Lcom/ansca/corona/CoronaView;->access$500(Lcom/ansca/corona/CoronaView;)Lcom/ansca/corona/CoronaView;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/ansca/corona/CoronaView$CoronaEventListener;->onReceivedCoronaEvent(Lcom/ansca/corona/CoronaView;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 415
    :cond_1
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->pushValue(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
