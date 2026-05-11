.class public Lcom/ansca/corona/CoronaWebView;
.super Landroid/webkit/WebView;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaWebView$ApiLevel21;,
        Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;,
        Lcom/ansca/corona/CoronaWebView$UrlRequestSourceType;
    }
.end annotation


# instance fields
.field private fAutoCloseEnabled:Z

.field private fBackKeySupported:Z

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fIsLoading:Z

.field private fReceivedErrorEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ansca/corona/events/DidFailLoadUrlTask;",
            ">;"
        }
    .end annotation
.end field

.field private fUrlRequestSourceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5

    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p2, p0, Lcom/ansca/corona/CoronaWebView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    .line 84
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    const/4 p2, 0x5

    .line 85
    iput p2, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 86
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/ansca/corona/CoronaWebView;->fReceivedErrorEvents:Ljava/util/HashMap;

    .line 89
    new-instance p2, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;-><init>(Lcom/ansca/corona/CoronaWebView;Lcom/ansca/corona/CoronaWebView$1;)V

    invoke-virtual {p0, p2}, Lcom/ansca/corona/CoronaWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    new-instance p2, Lcom/ansca/corona/CoronaWebView$1;

    invoke-direct {p2, p0}, Lcom/ansca/corona/CoronaWebView$1;-><init>(Lcom/ansca/corona/CoronaWebView;)V

    invoke-virtual {p0, p2}, Lcom/ansca/corona/CoronaWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 159
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 160
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 161
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 162
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 163
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 164
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 165
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 166
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 170
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setEnableSmoothTransition"

    new-array v2, p1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    .line 172
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 177
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaWebView$ApiLevel21;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 178
    invoke-static {p2}, Lcom/ansca/corona/CoronaWebView$ApiLevel21;->setMixedContentModeToAlwaysAllowFor(Landroid/webkit/WebSettings;)V

    .line 183
    :cond_1
    new-instance p1, Lcom/ansca/corona/CoronaWebView$2;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaWebView$2;-><init>(Lcom/ansca/corona/CoronaWebView;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/CoronaWebView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaWebView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    return p0
.end method

.method static synthetic access$202(Lcom/ansca/corona/CoronaWebView;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    return p1
.end method

.method static synthetic access$300(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/CoronaWebView;->fReceivedErrorEvents:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ansca/corona/CoronaWebView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fIsLoading:Z

    return p1
.end method

.method public static getBackgroundColorFrom(Landroid/webkit/WebView;)I
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    .line 249
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "mBackgroundColor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 251
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    .line 243
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->wasNotDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v1

    .line 215
    new-instance v2, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v3, Lcom/ansca/corona/CoronaWebView$3;

    invoke-direct {v3, p0, v1}, Lcom/ansca/corona/CoronaWebView$3;-><init>(Lcom/ansca/corona/CoronaWebView;I)V

    invoke-direct {v2, v3}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 225
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 233
    invoke-static {p0}, Lcom/ansca/corona/CoronaWebView;->getBackgroundColorFrom(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 5

    .line 263
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 264
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v2, Lcom/ansca/corona/events/ShouldLoadUrlTask;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v3

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/ansca/corona/events/ShouldLoadUrlTask;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    .line 283
    iput v1, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 284
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public goForward()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    const/4 v0, 0x2

    .line 292
    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 293
    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method public isAutoCloseEnabled()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    return v0
.end method

.method public isBackKeySupported()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fIsLoading:Z

    const/4 v0, 0x5

    .line 319
    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 320
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 392
    iget-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->goBack()V

    .line 400
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    :goto_0
    return p1

    .line 405
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    const/4 v0, 0x1

    .line 340
    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 341
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    const/4 v0, 0x3

    .line 301
    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 302
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setAutoCloseEnabled(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    return-void
.end method

.method public setBackKeySupported(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fIsLoading:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fIsLoading:Z

    :cond_0
    return-void
.end method
