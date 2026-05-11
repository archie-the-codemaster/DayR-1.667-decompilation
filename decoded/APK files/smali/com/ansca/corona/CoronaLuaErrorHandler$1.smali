.class Lcom/ansca/corona/CoronaLuaErrorHandler$1;
.super Ljava/lang/Object;
.source "CoronaLuaErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaLuaErrorHandler;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaLuaErrorHandler;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$1;->this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$1;->this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaLuaErrorHandler;->access$000(Lcom/ansca/corona/CoronaLuaErrorHandler;)Lcom/ansca/corona/Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$1;->this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-static {v0}, Lcom/ansca/corona/CoronaLuaErrorHandler;->access$000(Lcom/ansca/corona/CoronaLuaErrorHandler;)Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->stop()V

    :cond_0
    return-void
.end method
