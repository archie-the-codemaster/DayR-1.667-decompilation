.class final Lplugin/gpgs/LuaUtils$1;
.super Ljava/lang/Object;
.source "LuaUtils.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/LuaUtils;->dispatchEvent(Ljava/lang/Integer;Ljava/util/Hashtable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deleteRef:Z

.field final synthetic val$event:Ljava/util/Hashtable;

.field final synthetic val$listener:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;Ljava/lang/Integer;Z)V
    .locals 0

    .line 86
    iput-object p1, p0, Lplugin/gpgs/LuaUtils$1;->val$event:Ljava/util/Hashtable;

    iput-object p2, p0, Lplugin/gpgs/LuaUtils$1;->val$listener:Ljava/lang/Integer;

    iput-boolean p3, p0, Lplugin/gpgs/LuaUtils$1;->val$deleteRef:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$1;->val$event:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lplugin/gpgs/LuaUtils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$1;->val$listener:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_0
    iget-boolean v0, p0, Lplugin/gpgs/LuaUtils$1;->val$deleteRef:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lplugin/gpgs/LuaUtils$1;->val$listener:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lplugin/gpgs/LuaUtils;->deleteRefIfNotNil(Lcom/naef/jnlua/LuaState;I)V

    :cond_0
    return-void
.end method
