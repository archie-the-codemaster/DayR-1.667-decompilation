.class public Lcom/naef/jnlua/LuaMessageHandlerException;
.super Lcom/naef/jnlua/LuaException;
.source "LuaMessageHandlerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
