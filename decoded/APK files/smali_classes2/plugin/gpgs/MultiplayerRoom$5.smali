.class Lplugin/gpgs/MultiplayerRoom$5;
.super Ljava/lang/Object;
.source "MultiplayerRoom.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerRoom;-><init>(Lcom/naef/jnlua/LuaState;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerRoom;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerRoom;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lplugin/gpgs/MultiplayerRoom$5;->this$0:Lplugin/gpgs/MultiplayerRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 44
    iget-object v0, p0, Lplugin/gpgs/MultiplayerRoom$5;->this$0:Lplugin/gpgs/MultiplayerRoom;

    invoke-static {v0, p1}, Lplugin/gpgs/MultiplayerRoom;->access$400(Lplugin/gpgs/MultiplayerRoom;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
