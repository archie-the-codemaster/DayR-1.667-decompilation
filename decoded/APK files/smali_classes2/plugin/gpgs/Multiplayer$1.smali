.class Lplugin/gpgs/Multiplayer$1;
.super Ljava/lang/Object;
.source "Multiplayer.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Multiplayer;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Multiplayer;


# direct methods
.method constructor <init>(Lplugin/gpgs/Multiplayer;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lplugin/gpgs/Multiplayer$1;->this$0:Lplugin/gpgs/Multiplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 0

    .line 22
    invoke-static {p1}, Lplugin/gpgs/Multiplayer;->access$000(Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
