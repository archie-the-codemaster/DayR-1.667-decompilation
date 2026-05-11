.class Lcom/ansca/corona/CoronaStatusBarApiHandler;
.super Ljava/lang/Object;
.source "CoronaStatusBarApiHandler.java"

# interfaces
.implements Lcom/ansca/corona/listeners/CoronaStatusBarApiListener;


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaStatusBarApiHandler;)Lcom/ansca/corona/CoronaActivity;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object p0
.end method


# virtual methods
.method public HasSoftwareKeys()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->HasSoftwareKeys()Z

    move-result v0

    return v0
.end method

.method public IsAndroidTV()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->IsAndroidTV()Z

    move-result v0

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->resolveNavBarHeight()I

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public getStatusBarMode()Lcom/ansca/corona/CoronaStatusBarSettings;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/ansca/corona/CoronaStatusBarSettings;->HIDDEN:Lcom/ansca/corona/CoronaStatusBarSettings;

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStatusBarMode()Lcom/ansca/corona/CoronaStatusBarSettings;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBarMode(Lcom/ansca/corona/CoronaStatusBarSettings;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ansca/corona/CoronaStatusBarApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaStatusBarApiHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CoronaStatusBarApiHandler$1;-><init>(Lcom/ansca/corona/CoronaStatusBarApiHandler;Lcom/ansca/corona/CoronaStatusBarSettings;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
