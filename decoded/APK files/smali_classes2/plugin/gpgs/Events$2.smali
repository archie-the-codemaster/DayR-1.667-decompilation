.class Lplugin/gpgs/Events$2;
.super Ljava/lang/Object;
.source "Events.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Events;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Events;


# direct methods
.method constructor <init>(Lplugin/gpgs/Events;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lplugin/gpgs/Events$2;->this$0:Lplugin/gpgs/Events;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 34
    iget-object v0, p0, Lplugin/gpgs/Events$2;->this$0:Lplugin/gpgs/Events;

    invoke-static {v0, p1}, Lplugin/gpgs/Events;->access$100(Lplugin/gpgs/Events;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
