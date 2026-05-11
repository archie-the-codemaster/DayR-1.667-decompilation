.class Lplugin/gpgs/MultiplayerMatch$8;
.super Ljava/lang/Object;
.source "MultiplayerMatch.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerMatch;-><init>(Lcom/naef/jnlua/LuaState;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerMatch;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerMatch;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lplugin/gpgs/MultiplayerMatch$8;->this$0:Lplugin/gpgs/MultiplayerMatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 62
    iget-object v0, p0, Lplugin/gpgs/MultiplayerMatch$8;->this$0:Lplugin/gpgs/MultiplayerMatch;

    invoke-static {v0, p1}, Lplugin/gpgs/MultiplayerMatch;->access$700(Lplugin/gpgs/MultiplayerMatch;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
