.class Lplugin/gpgs/Achievements$5;
.super Ljava/lang/Object;
.source "Achievements.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/gpgs/Achievements;-><init>(Lcom/naef/jnlua/LuaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/gpgs/Achievements;


# direct methods
.method constructor <init>(Lplugin/gpgs/Achievements;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lplugin/gpgs/Achievements$5;->this$0:Lplugin/gpgs/Achievements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 53
    iget-object v0, p0, Lplugin/gpgs/Achievements$5;->this$0:Lplugin/gpgs/Achievements;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lplugin/gpgs/Achievements;->access$400(Lplugin/gpgs/Achievements;Lcom/naef/jnlua/LuaState;Z)I

    move-result p1

    return p1
.end method
