.class Lplugin/gpgs/MultiplayerInvitations$1;
.super Ljava/lang/Object;
.source "MultiplayerInvitations.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/MultiplayerInvitations;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/MultiplayerInvitations;


# direct methods
.method constructor <init>(Lplugin/gpgs/MultiplayerInvitations;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lplugin/gpgs/MultiplayerInvitations$1;->this$0:Lplugin/gpgs/MultiplayerInvitations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 33
    iget-object v0, p0, Lplugin/gpgs/MultiplayerInvitations$1;->this$0:Lplugin/gpgs/MultiplayerInvitations;

    invoke-static {v0, p1}, Lplugin/gpgs/MultiplayerInvitations;->access$000(Lplugin/gpgs/MultiplayerInvitations;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
