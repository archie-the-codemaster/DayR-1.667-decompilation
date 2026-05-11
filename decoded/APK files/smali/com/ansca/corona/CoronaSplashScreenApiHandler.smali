.class Lcom/ansca/corona/CoronaSplashScreenApiHandler;
.super Ljava/lang/Object;
.source "CoronaSplashScreenApiHandler.java"

# interfaces
.implements Lcom/ansca/corona/listeners/CoronaSplashScreenApiListener;


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ansca/corona/CoronaSplashScreenApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaSplashScreenApiHandler;)Lcom/ansca/corona/CoronaActivity;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ansca/corona/CoronaSplashScreenApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object p0
.end method


# virtual methods
.method public hideSplashScreen()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/ansca/corona/CoronaSplashScreenApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaSplashScreenApiHandler$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaSplashScreenApiHandler$2;-><init>(Lcom/ansca/corona/CoronaSplashScreenApiHandler;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showSplashScreen()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ansca/corona/CoronaSplashScreenApiHandler;->fActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v1, Lcom/ansca/corona/CoronaSplashScreenApiHandler$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaSplashScreenApiHandler$1;-><init>(Lcom/ansca/corona/CoronaSplashScreenApiHandler;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
