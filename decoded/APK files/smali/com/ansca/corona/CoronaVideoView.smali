.class public Lcom/ansca/corona/CoronaVideoView;
.super Landroid/widget/VideoView;
.source "CoronaVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaVideoView$HttpServices;,
        Lcom/ansca/corona/CoronaVideoView$ProxyServer;,
        Lcom/ansca/corona/CoronaVideoView$VideoViewEndedTask;,
        Lcom/ansca/corona/CoronaVideoView$VideoViewPreparedTask;,
        Lcom/ansca/corona/CoronaVideoView$CenteredLayout;
    }
.end annotation


# instance fields
.field private fExternalOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private fExternalOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private fMediaPlayer:Landroid/media/MediaPlayer;

.field private fPrevVolume:F

.field private fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

.field private fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fTouchTogglesPlay:Z

.field private fVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/CoronaVideoView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 151
    iput v0, p0, Lcom/ansca/corona/CoronaVideoView;->fVolume:F

    .line 152
    iput v0, p0, Lcom/ansca/corona/CoronaVideoView;->fPrevVolume:F

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView;->fTouchTogglesPlay:Z

    .line 154
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fExternalOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 155
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fExternalOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 156
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 157
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 163
    :cond_0
    new-instance p1, Lcom/ansca/corona/CoronaVideoView$1;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaVideoView$1;-><init>(Lcom/ansca/corona/CoronaVideoView;)V

    invoke-super {p0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 186
    new-instance p1, Lcom/ansca/corona/CoronaVideoView$2;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaVideoView$2;-><init>(Lcom/ansca/corona/CoronaVideoView;)V

    invoke-super {p0, p1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/ansca/corona/CoronaVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaVideoView;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/ansca/corona/CoronaVideoView;->fVolume:F

    return p0
.end method

.method static synthetic access$1000(Lcom/ansca/corona/CoronaVideoView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ansca/corona/CoronaVideoView;->onProxyCannotStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaVideoView;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView;->fTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ansca/corona/CoronaVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView;->fExternalOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/CoronaVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ansca/corona/CoronaVideoView;->fExternalOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ansca/corona/CoronaVideoView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ansca/corona/CoronaVideoView;->onProxyStarted()V

    return-void
.end method

.method private onProxyCannotStart()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaVideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private onProxyStarted()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->getProxyUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaVideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getVolume()F
    .locals 1

    .line 235
    iget v0, p0, Lcom/ansca/corona/CoronaVideoView;->fVolume:F

    return v0
.end method

.method public isMuted()Z
    .locals 2

    .line 246
    iget v0, p0, Lcom/ansca/corona/CoronaVideoView;->fVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchTogglesPlay()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView;->fTouchTogglesPlay:Z

    return v0
.end method

.method public mute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 257
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaVideoView;->setVolume(F)V

    goto :goto_0

    .line 259
    :cond_0
    iget p1, p0, Lcom/ansca/corona/CoronaVideoView;->fPrevVolume:F

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaVideoView;->setVolume(F)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 405
    invoke-super {p0}, Landroid/widget/VideoView;->onAttachedToWindow()V

    .line 408
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->wasClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v1, Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-direct {v1, p0, v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;-><init>(Lcom/ansca/corona/CoronaVideoView;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 422
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    .line 425
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->close()V

    .line 427
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaVideoView;->stopPlayback()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaVideoView;->fTouchTogglesPlay:Z

    if-nez v0, :cond_0

    .line 357
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 362
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaVideoView;->canPause()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaVideoView;->pause()V

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaVideoView;->start()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fExternalOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/ansca/corona/CoronaVideoView;->fExternalOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoURIUsingCoronaProxy(Landroid/net/Uri;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;->close()V

    .line 279
    iput-object v1, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaVideoView;->stopPlayback()V

    if-nez p1, :cond_2

    .line 287
    invoke-virtual {p0, v1}, Lcom/ansca/corona/CoronaVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void

    .line 292
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 300
    :cond_4
    :goto_0
    new-instance v0, Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/CoronaVideoView$ProxyServer;-><init>(Lcom/ansca/corona/CoronaVideoView;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fProxyServer:Lcom/ansca/corona/CoronaVideoView$ProxyServer;

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaVideoView;->fMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 224
    :cond_2
    iput p1, p0, Lcom/ansca/corona/CoronaVideoView;->fVolume:F

    .line 225
    iget p1, p0, Lcom/ansca/corona/CoronaVideoView;->fVolume:F

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    .line 226
    iput p1, p0, Lcom/ansca/corona/CoronaVideoView;->fPrevVolume:F

    :cond_3
    return-void
.end method

.method public suspend()V
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaVideoView;->getCurrentPosition()I

    move-result v0

    .line 394
    invoke-super {p0}, Landroid/widget/VideoView;->suspend()V

    .line 399
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaVideoView;->seekTo(I)V

    return-void
.end method

.method public touchTogglesPlay(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaVideoView;->fTouchTogglesPlay:Z

    return-void
.end method
