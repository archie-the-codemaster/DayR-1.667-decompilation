.class Lcom/ansca/corona/CoronaWebView$1;
.super Landroid/webkit/WebChromeClient;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaWebView;-><init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCustomView:Landroid/view/View;

.field final synthetic this$0:Lcom/ansca/corona/CoronaWebView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaWebView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$1;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$1;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/ansca/corona/CoronaWebView$1;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v1}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaRuntime;->getViewManager()Lcom/ansca/corona/ViewManager;

    .line 151
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/ansca/corona/CoronaWebView$1;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 123
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p2}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object p2

    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 127
    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$1;->mCustomView:Landroid/view/View;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView$1;->onHideCustomView()V

    .line 141
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 115
    invoke-static {p2}, Lcom/ansca/corona/CoronaWebView$ApiLevel21;->openFileUpload(Landroid/webkit/ValueCallback;)V

    const/4 p1, 0x1

    return p1
.end method
