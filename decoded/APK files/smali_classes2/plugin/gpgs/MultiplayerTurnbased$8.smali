.class Lplugin/gpgs/MultiplayerTurnbased$8;
.super Ljava/lang/Object;
.source "MultiplayerTurnbased.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerTurnbased;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerTurnbased;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerTurnbased;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lplugin/gpgs/MultiplayerTurnbased$8;->this$0:Lplugin/gpgs/MultiplayerTurnbased;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 86
    iget-object v0, p0, Lplugin/gpgs/MultiplayerTurnbased$8;->this$0:Lplugin/gpgs/MultiplayerTurnbased;

    invoke-static {v0, p1}, Lplugin/gpgs/MultiplayerTurnbased;->access$700(Lplugin/gpgs/MultiplayerTurnbased;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
