.class Lplugin/gpgs/Snapshots$9;
.super Ljava/lang/Object;
.source "Snapshots.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Snapshots;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Snapshots;


# direct methods
.method constructor <init>(Lplugin/gpgs/Snapshots;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lplugin/gpgs/Snapshots$9;->this$0:Lplugin/gpgs/Snapshots;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 95
    iget-object v0, p0, Lplugin/gpgs/Snapshots$9;->this$0:Lplugin/gpgs/Snapshots;

    invoke-static {v0, p1}, Lplugin/gpgs/Snapshots;->access$800(Lplugin/gpgs/Snapshots;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
