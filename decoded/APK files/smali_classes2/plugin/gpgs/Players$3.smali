.class Lplugin/gpgs/Players$3;
.super Ljava/lang/Object;
.source "Players.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Players;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Players;


# direct methods
.method constructor <init>(Lplugin/gpgs/Players;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lplugin/gpgs/Players$3;->this$0:Lplugin/gpgs/Players;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 49
    iget-object v0, p0, Lplugin/gpgs/Players$3;->this$0:Lplugin/gpgs/Players;

    invoke-static {v0, p1}, Lplugin/gpgs/Players;->access$200(Lplugin/gpgs/Players;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
