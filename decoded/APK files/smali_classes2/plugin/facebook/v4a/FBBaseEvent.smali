.class public abstract Lplugin/facebook/v4a/FBBaseEvent;
.super Ljava/lang/Object;
.source "FBBaseEvent.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/facebook/v4a/FBBaseEvent$FBType;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "fbconnect"


# instance fields
.field private final mIsError:Z

.field private final mResponse:Ljava/lang/String;

.field private final mType:Lplugin/facebook/v4a/FBBaseEvent$FBType;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FBBaseEvent$FBType;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lplugin/facebook/v4a/FBBaseEvent;->mType:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lplugin/facebook/v4a/FBBaseEvent;->mIsError:Z

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lplugin/facebook/v4a/FBBaseEvent;->mResponse:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lplugin/facebook/v4a/FBBaseEvent$FBType;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lplugin/facebook/v4a/FBBaseEvent;->mType:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    .line 38
    iput-object p2, p0, Lplugin/facebook/v4a/FBBaseEvent;->mResponse:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lplugin/facebook/v4a/FBBaseEvent;->mIsError:Z

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    const-string v0, "fbconnect"

    .line 44
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lplugin/facebook/v4a/FBBaseEvent;->mType:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    invoke-virtual {v0}, Lplugin/facebook/v4a/FBBaseEvent$FBType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    const-string v1, "type"

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 49
    iget-boolean v1, p0, Lplugin/facebook/v4a/FBBaseEvent;->mIsError:Z

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v1, "isError"

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 52
    iget-object v1, p0, Lplugin/facebook/v4a/FBBaseEvent;->mResponse:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 53
    :cond_0
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "response"

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method
