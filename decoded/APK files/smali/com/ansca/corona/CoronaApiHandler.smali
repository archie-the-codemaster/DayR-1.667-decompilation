.class public Lcom/ansca/corona/CoronaApiHandler;
.super Ljava/lang/Object;
.source "CoronaApiHandler.java"

# interfaces
.implements Lcom/ansca/corona/CoronaApiListener;


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ansca/corona/CoronaApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    .line 23
    iput-object p2, p0, Lcom/ansca/corona/CoronaApiHandler;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaApiHandler;)Lcom/ansca/corona/CoronaActivity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ansca/corona/CoronaApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object p0
.end method


# virtual methods
.method public addKeepScreenOnFlag()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/ansca/corona/CoronaApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v1, Lcom/ansca/corona/CoronaApiHandler$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaApiHandler$2;-><init>(Lcom/ansca/corona/CoronaApiHandler;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenLockStateChanged(Z)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ansca/corona/CoronaApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaActivity;->onScreenLockStateChanged(Z)V

    return-void
.end method

.method public removeKeepScreenOnFlag()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/ansca/corona/CoronaApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v1, Lcom/ansca/corona/CoronaApiHandler$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaApiHandler$1;-><init>(Lcom/ansca/corona/CoronaApiHandler;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
