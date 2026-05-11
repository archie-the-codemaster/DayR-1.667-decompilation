.class Lcom/naef/jnlua/LuaState$2;
.super Ljava/lang/Object;
.source "LuaState.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naef/jnlua/LuaState;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/LuaState;

.field final synthetic val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;Lcom/naef/jnlua/JavaReflector$Metamethod;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/naef/jnlua/LuaState$2;->this$0:Lcom/naef/jnlua/LuaState;

    iput-object p2, p0, Lcom/naef/jnlua/LuaState$2;->val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$2;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v1, 0x1

    .line 225
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/naef/jnlua/LuaState$2;->val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 224
    invoke-virtual {v0, p1, v1}, Lcom/naef/jnlua/LuaState;->getMetamethod(Ljava/lang/Object;Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$2;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-interface {p1, v0}, Lcom/naef/jnlua/JavaFunction;->invoke(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/naef/jnlua/LuaState$2;->val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;

    .line 230
    invoke-virtual {v0}, Lcom/naef/jnlua/JavaReflector$Metamethod;->getMetamethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
