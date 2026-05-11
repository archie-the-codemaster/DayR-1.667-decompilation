.class public Lplugin/facebook/v4a/FBDialogEvent;
.super Lplugin/facebook/v4a/FBBaseEvent;
.source "FBDialogEvent.java"


# instance fields
.field private final mDidComplete:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    .line 19
    sget-object v0, Lplugin/facebook/v4a/FBBaseEvent$FBType;->dialog:Lplugin/facebook/v4a/FBBaseEvent$FBType;

    invoke-direct {p0, v0, p1, p2}, Lplugin/facebook/v4a/FBBaseEvent;-><init>(Lplugin/facebook/v4a/FBBaseEvent$FBType;Ljava/lang/String;Z)V

    .line 20
    iput-boolean p3, p0, Lplugin/facebook/v4a/FBDialogEvent;->mDidComplete:Z

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lplugin/facebook/v4a/FBBaseEvent;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    .line 26
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 28
    iget-boolean v0, p0, Lplugin/facebook/v4a/FBDialogEvent;->mDidComplete:Z

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const/4 v0, -0x2

    const-string v1, "didComplete"

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    return-void
.end method
