.class Lplugin/gpgs/Videos$VideoCapabilitiesBridge$1;
.super Ljava/lang/Object;
.source "Videos.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Videos$VideoCapabilitiesBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/gpgs/Videos$VideoCapabilitiesBridge;


# direct methods
.method constructor <init>(Lplugin/gpgs/Videos$VideoCapabilitiesBridge;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge$1;->this$1:Lplugin/gpgs/Videos$VideoCapabilitiesBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    const/4 v0, 0x1

    .line 348
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->checkArgCount(Lcom/naef/jnlua/LuaState;I)V

    .line 349
    new-instance v1, Lplugin/gpgs/LuaUtils$Scheme;

    invoke-direct {v1}, Lplugin/gpgs/LuaUtils$Scheme;-><init>()V

    const-string v2, "mode"

    .line 350
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    const-string v3, "quality"

    .line 351
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Scheme;->string(Ljava/lang/String;)Lplugin/gpgs/LuaUtils$Scheme;

    move-result-object v1

    .line 353
    new-instance v4, Lplugin/gpgs/LuaUtils$Table;

    invoke-direct {v4, p1, v0}, Lplugin/gpgs/LuaUtils$Table;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-virtual {v4, v1}, Lplugin/gpgs/LuaUtils$Table;->parse(Lplugin/gpgs/LuaUtils$Scheme;)Lplugin/gpgs/LuaUtils$Table;

    move-result-object v1

    .line 354
    invoke-virtual {v1, v2}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v3}, Lplugin/gpgs/LuaUtils$Table;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v2}, Lplugin/gpgs/Utils;->captureModeToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 358
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4b4e3835

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0xcfc

    if-eq v3, v4, :cond_2

    const/16 v4, 0xe51

    if-eq v3, v4, :cond_1

    const v4, 0x1cf74

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "xhd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const-string v3, "sd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "hd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "fullhd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    .line 369
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 366
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 363
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 360
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 374
    iget-object v3, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge$1;->this$1:Lplugin/gpgs/Videos$VideoCapabilitiesBridge;

    invoke-static {v3}, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->access$600(Lplugin/gpgs/Videos$VideoCapabilitiesBridge;)Lcom/google/android/gms/games/video/VideoCapabilities;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/games/video/VideoCapabilities;->isFullySupported(II)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    .line 376
    iget-object v1, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge$1;->this$1:Lplugin/gpgs/Videos$VideoCapabilitiesBridge;

    invoke-static {v1}, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->access$600(Lplugin/gpgs/Videos$VideoCapabilitiesBridge;)Lcom/google/android/gms/games/video/VideoCapabilities;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/video/VideoCapabilities;->supportsCaptureMode(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    .line 378
    iget-object v2, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge$1;->this$1:Lplugin/gpgs/Videos$VideoCapabilitiesBridge;

    invoke-static {v2}, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->access$600(Lplugin/gpgs/Videos$VideoCapabilitiesBridge;)Lcom/google/android/gms/games/video/VideoCapabilities;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/video/VideoCapabilities;->supportsQualityLevel(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    goto :goto_3

    .line 380
    :cond_b
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_3
    return v0
.end method
