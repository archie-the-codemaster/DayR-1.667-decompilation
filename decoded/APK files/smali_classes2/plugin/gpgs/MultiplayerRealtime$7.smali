.class Lplugin/gpgs/MultiplayerRealtime$7;
.super Ljava/lang/Object;
.source "MultiplayerRealtime.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerRealtime;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerRealtime;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerRealtime;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lplugin/gpgs/MultiplayerRealtime$7;->this$0:Lplugin/gpgs/MultiplayerRealtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 79
    iget-object v0, p0, Lplugin/gpgs/MultiplayerRealtime$7;->this$0:Lplugin/gpgs/MultiplayerRealtime;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lplugin/gpgs/MultiplayerRealtime;->showSelectPlayers(Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1
.end method
