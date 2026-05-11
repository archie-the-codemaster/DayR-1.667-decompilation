.class public Lplugin/facebook/v4a/FBLoginEvent;
.super Lplugin/facebook/v4a/FBBaseEvent;
.source "FBLoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/facebook/v4a/FBLoginEvent$Phase;
    }
.end annotation


# instance fields
.field private final mExpirationTime:J

.field private final mPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

.field private final mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 27
    sget-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->session:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    invoke-direct {p0, v0}, Lplugin/facebook/v4a/FBBaseEvent;-><init>(Lplugin/facebook/v4a/FBBaseEvent$FBType;)V

    .line 28
    sget-object v0, Lplugin/facebook/v4a/FBLoginEvent$Phase;->login:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    iput-object v0, p0, Lplugin/facebook/v4a/FBLoginEvent;->mPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    .line 29
    iput-object p1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mToken:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lplugin/facebook/v4a/FBLoginEvent;->mExpirationTime:J

    return-void
.end method

.method public constructor <init>(Lplugin/facebook/v4a/FBLoginEvent$Phase;)V
    .locals 2

    .line 34
    sget-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->session:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    invoke-direct {p0, v0}, Lplugin/facebook/v4a/FBBaseEvent;-><init>(Lplugin/facebook/v4a/FBBaseEvent$FBType;)V

    .line 35
    iput-object p1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lplugin/facebook/v4a/FBLoginEvent;->mExpirationTime:J

    return-void
.end method

.method public constructor <init>(Lplugin/facebook/v4a/FBLoginEvent$Phase;Ljava/lang/String;)V
    .locals 2

    .line 41
    sget-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->session:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lplugin/facebook/v4a/FBBaseEvent;-><init>(Lplugin/facebook/v4a/FBBaseEvent$FBType;Ljava/lang/String;Z)V

    .line 42
    iput-object p1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mToken:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 44
    iput-wide p1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mExpirationTime:J

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lplugin/facebook/v4a/FBBaseEvent;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    .line 50
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lplugin/facebook/v4a/FBLoginEvent;->mPhase:Lplugin/facebook/v4a/FBLoginEvent$Phase;

    invoke-virtual {v0}, Lplugin/facebook/v4a/FBLoginEvent$Phase;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    const-string v1, "phase"

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 55
    iget-object v1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "token"

    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 59
    iget-wide v1, p0, Lplugin/facebook/v4a/FBLoginEvent;->mExpirationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    const-string v1, "expiration"

    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
