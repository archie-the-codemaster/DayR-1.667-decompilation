.class public Lcom/naef/jnlua/LuaSyntaxException;
.super Lcom/naef/jnlua/LuaException;
.source "LuaSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
