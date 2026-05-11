.class Lcom/ansca/corona/CoronaWebView$ApiLevel21;
.super Ljava/lang/Object;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaWebView$ApiLevel21$FileUploadActivityResultHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openFileUpload(Landroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 572
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    new-instance v1, Lcom/ansca/corona/CoronaWebView$ApiLevel21$FileUploadActivityResultHandler;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaWebView$ApiLevel21$FileUploadActivityResultHandler;-><init>(Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result p0

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 578
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ""

    .line 579
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1, p0}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    .locals 1

    .line 591
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 593
    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method public static setMixedContentModeToAlwaysAllowFor(Landroid/webkit/WebSettings;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    return-void
.end method
