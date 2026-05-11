.class synthetic Lcom/naef/jnlua/LuaState$3;
.super Ljava/lang/Object;
.source "LuaState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$naef$jnlua$LuaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1188
    invoke-static {}, Lcom/naef/jnlua/LuaType;->values()[Lcom/naef/jnlua/LuaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/naef/jnlua/LuaState$3;->$SwitchMap$com$naef$jnlua$LuaType:[I

    :try_start_0
    sget-object v0, Lcom/naef/jnlua/LuaState$3;->$SwitchMap$com$naef$jnlua$LuaType:[I

    sget-object v1, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
