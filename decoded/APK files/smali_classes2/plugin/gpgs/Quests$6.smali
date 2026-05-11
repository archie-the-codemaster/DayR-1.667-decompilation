.class Lplugin/gpgs/Quests$6;
.super Ljava/lang/Object;
.source "Quests.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Quests;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Quests;


# direct methods
.method constructor <init>(Lplugin/gpgs/Quests;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lplugin/gpgs/Quests$6;->this$0:Lplugin/gpgs/Quests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 65
    iget-object v0, p0, Lplugin/gpgs/Quests$6;->this$0:Lplugin/gpgs/Quests;

    invoke-static {v0, p1}, Lplugin/gpgs/Quests;->access$500(Lplugin/gpgs/Quests;Lcom/naef/jnlua/LuaState;)I

    move-result p1

    return p1
.end method
