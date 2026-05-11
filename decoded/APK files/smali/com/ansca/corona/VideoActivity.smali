.class public Lcom/ansca/corona/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/VideoActivity$ScreenEventHandler;
    }
.end annotation


# instance fields
.field private fLoadingIndicatorView:Landroid/widget/ProgressBar;

.field private fScreenEventHandler:Lcom/ansca/corona/VideoActivity$ScreenEventHandler;

.field private fVideoId:J

.field private fVideoView:Lcom/ansca/corona/CoronaVideoView;

.field private fWasActivityPaused:Z

.field private fWasVideoSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/VideoActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ansca/corona/VideoActivity;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/VideoActivity;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/ansca/corona/VideoActivity;->fVideoId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/ansca/corona/VideoActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ansca/corona/VideoActivity;->updateSuspendResumeState()V

    return-void
.end method

.method private isScreenLocked()Z
    .locals 1

    const-string v0, "keyguard"

    .line 254
    invoke-virtual {p0, v0}, Lcom/ansca/corona/VideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 255
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method private updateSuspendResumeState()V
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/ansca/corona/VideoActivity;->fWasActivityPaused:Z

    if-eqz v0, :cond_0

    .line 231
    iget-boolean v0, p0, Lcom/ansca/corona/VideoActivity;->fWasVideoSuspended:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/ansca/corona/VideoActivity;->fWasVideoSuspended:Z

    .line 233
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView;->suspend()V

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/ansca/corona/VideoActivity;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-boolean v0, p0, Lcom/ansca/corona/VideoActivity;->fWasVideoSuspended:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/ansca/corona/VideoActivity;->fWasVideoSuspended:Z

    .line 243
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaVideoView;->resume()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 164
    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0, v0}, Lcom/ansca/corona/VideoActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 176
    invoke-static {}, Lcom/ansca/corona/CoronaRuntimeProvider;->getAllCoronaRuntimes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntime;

    .line 178
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v2

    new-instance v3, Lcom/ansca/corona/events/VideoEndedTask;

    iget-wide v4, p0, Lcom/ansca/corona/VideoActivity;->fVideoId:J

    invoke-direct {v3, v4, v5}, Lcom/ansca/corona/events/VideoEndedTask;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 183
    :cond_1
    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/ansca/corona/MediaManager;->resumeAll()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    const p1, 0x1030128

    goto :goto_0

    .line 56
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    const p1, 0x103006b

    goto :goto_0

    :cond_1
    const p1, 0x103000b

    .line 63
    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance p1, Lcom/ansca/corona/VideoActivity$ScreenEventHandler;

    invoke-direct {p1, p0}, Lcom/ansca/corona/VideoActivity$ScreenEventHandler;-><init>(Lcom/ansca/corona/VideoActivity;)V

    iput-object p1, p0, Lcom/ansca/corona/VideoActivity;->fScreenEventHandler:Lcom/ansca/corona/VideoActivity$ScreenEventHandler;

    .line 70
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/ansca/corona/VideoActivity;->setContentView(Landroid/view/View;)V

    .line 74
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 78
    new-instance v3, Lcom/ansca/corona/CoronaVideoView;

    invoke-direct {v3, v0}, Lcom/ansca/corona/CoronaVideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    .line 79
    iget-object v3, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {p1, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x3

    .line 82
    invoke-virtual {p0, v1}, Lcom/ansca/corona/VideoActivity;->setVolumeControlStream(I)V

    .line 86
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ansca/corona/VideoActivity;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    .line 87
    iget-object v1, p0, Lcom/ansca/corona/VideoActivity;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/ansca/corona/VideoActivity;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    new-instance v1, Lcom/ansca/corona/VideoActivity$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/VideoActivity$1;-><init>(Lcom/ansca/corona/VideoActivity;)V

    invoke-virtual {p1, v1}, Lcom/ansca/corona/CoronaVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 126
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    new-instance v1, Lcom/ansca/corona/VideoActivity$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/VideoActivity$2;-><init>(Lcom/ansca/corona/VideoActivity;)V

    invoke-virtual {p1, v1}, Lcom/ansca/corona/CoronaVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "media_controls_enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/ansca/corona/CoronaVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaVideoView;->setVideoURIUsingCoronaProxy(Landroid/net/Uri;)V

    .line 148
    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "video_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ansca/corona/VideoActivity;->fVideoId:J

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/ansca/corona/VideoActivity;->fWasActivityPaused:Z

    .line 150
    iput-boolean p1, p0, Lcom/ansca/corona/VideoActivity;->fWasVideoSuspended:Z

    .line 151
    iget-object p1, p0, Lcom/ansca/corona/VideoActivity;->fVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaVideoView;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity;->fScreenEventHandler:Lcom/ansca/corona/VideoActivity$ScreenEventHandler;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/ansca/corona/VideoActivity$ScreenEventHandler;->dispose()V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/ansca/corona/VideoActivity;->fScreenEventHandler:Lcom/ansca/corona/VideoActivity$ScreenEventHandler;

    .line 223
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/ansca/corona/VideoActivity;->fWasActivityPaused:Z

    .line 197
    invoke-direct {p0}, Lcom/ansca/corona/VideoActivity;->updateSuspendResumeState()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/ansca/corona/VideoActivity;->fWasActivityPaused:Z

    .line 210
    invoke-direct {p0}, Lcom/ansca/corona/VideoActivity;->updateSuspendResumeState()V

    return-void
.end method
