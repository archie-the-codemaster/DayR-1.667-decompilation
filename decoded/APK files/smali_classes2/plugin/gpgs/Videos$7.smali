.class Lplugin/gpgs/Videos$7;
.super Ljava/lang/Object;
.source "Videos.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Videos;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Videos;


# direct methods
.method constructor <init>(Lplugin/gpgs/Videos;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lplugin/gpgs/Videos$7;->this$0:Lplugin/gpgs/Videos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 72
    iget-object v0, p0, Lplugin/gpgs/Videos$7;->this$0:Lplugin/gpgs/Videos;

    invoke-static {v0, p1}, Lplugin/gpgs/Videos;->access$500(Lplugin/gpgs/Videos;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
