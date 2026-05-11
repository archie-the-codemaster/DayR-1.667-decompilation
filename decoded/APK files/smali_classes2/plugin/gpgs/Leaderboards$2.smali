.class Lplugin/gpgs/Leaderboards$2;
.super Ljava/lang/Object;
.source "Leaderboards.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Leaderboards;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Leaderboards;


# direct methods
.method constructor <init>(Lplugin/gpgs/Leaderboards;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lplugin/gpgs/Leaderboards$2;->this$0:Lplugin/gpgs/Leaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 43
    iget-object v0, p0, Lplugin/gpgs/Leaderboards$2;->this$0:Lplugin/gpgs/Leaderboards;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lplugin/gpgs/Leaderboards;->access$100(Lplugin/gpgs/Leaderboards;Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1
.end method
