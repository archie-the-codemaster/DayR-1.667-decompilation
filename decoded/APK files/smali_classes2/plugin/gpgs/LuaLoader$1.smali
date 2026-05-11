.class Lplugin/gpgs/LuaLoader$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/LuaLoader;->login(Lcom/naef/jnlua/LuaState;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/LuaLoader;

.field final synthetic val$userInitiated:Z


# direct methods
.method constructor <init>(Lplugin/gpgs/LuaLoader;Z)V
    .locals 0

    .line 168
    iput-object p1, p0, Lplugin/gpgs/LuaLoader$1;->this$0:Lplugin/gpgs/LuaLoader;

    iput-boolean p2, p0, Lplugin/gpgs/LuaLoader$1;->val$userInitiated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    invoke-static {}, Lplugin/gpgs/Connector;->getInstance()Lplugin/gpgs/Connector;

    move-result-object v0

    iget-boolean v1, p0, Lplugin/gpgs/LuaLoader$1;->val$userInitiated:Z

    invoke-virtual {v0, v1}, Lplugin/gpgs/Connector;->signIn(Z)V

    return-void
.end method
