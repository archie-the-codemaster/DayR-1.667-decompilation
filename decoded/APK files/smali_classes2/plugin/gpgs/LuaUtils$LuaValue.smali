.class Lplugin/gpgs/LuaUtils$LuaValue;
.super Ljava/lang/Object;
.source "LuaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/LuaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LuaValue"
.end annotation


# instance fields
.field reference:I


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;I)V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lplugin/gpgs/LuaUtils$LuaValue;->reference:I

    .line 214
    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    iput p1, p0, Lplugin/gpgs/LuaUtils$LuaValue;->reference:I

    return-void
.end method


# virtual methods
.method delete(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    .line 218
    iget v0, p0, Lplugin/gpgs/LuaUtils$LuaValue;->reference:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 219
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    :cond_0
    return-void
.end method
