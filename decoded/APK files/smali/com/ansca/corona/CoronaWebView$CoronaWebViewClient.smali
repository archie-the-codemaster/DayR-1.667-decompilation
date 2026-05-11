.class Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaWebView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaWebView;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaWebView;Lcom/ansca/corona/CoronaWebView$1;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;-><init>(Lcom/ansca/corona/CoronaWebView;)V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 435
    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaWebView;->access$202(Lcom/ansca/corona/CoronaWebView;I)I

    if-eqz p3, :cond_0

    .line 437
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaWebView;->access$402(Lcom/ansca/corona/CoronaWebView;Z)Z

    .line 480
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p1}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p1}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p1}, Lcom/ansca/corona/CoronaWebView;->access$300(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ansca/corona/events/DidFailLoadUrlTask;

    .line 491
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaWebView;->access$300(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 494
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v0}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/events/WebHistoryUpdatedTask;

    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaWebView;->canGoBack()Z

    move-result v3

    iget-object v4, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v4}, Lcom/ansca/corona/CoronaWebView;->canGoForward()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ansca/corona/events/WebHistoryUpdatedTask;-><init>(IZZ)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    if-eqz p1, :cond_1

    .line 499
    iget-object p2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p2}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p1}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p1

    new-instance v0, Lcom/ansca/corona/events/FinishedLoadUrlTask;

    iget-object v1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/ansca/corona/events/FinishedLoadUrlTask;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 453
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 457
    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p1}, Lcom/ansca/corona/CoronaWebView;->access$200(Lcom/ansca/corona/CoronaWebView;)I

    move-result p1

    .line 458
    iget-object p3, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 v0, 0x5

    invoke-static {p3, v0}, Lcom/ansca/corona/CoronaWebView;->access$202(Lcom/ansca/corona/CoronaWebView;I)I

    .line 463
    iget-object p3, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p3}, Lcom/ansca/corona/CoronaWebView;->access$300(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 464
    iget-object p3, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p3}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p3}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ansca/corona/CoronaRuntime;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 465
    iget-object p3, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p3}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)Lcom/ansca/corona/CoronaRuntime;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ansca/corona/CoronaRuntime;->getTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object p3

    new-instance v0, Lcom/ansca/corona/events/ShouldLoadUrlTask;

    iget-object v1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v1

    invoke-direct {v0, v1, p2, p1}, Lcom/ansca/corona/events/ShouldLoadUrlTask;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p3, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 515
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaWebView;->access$202(Lcom/ansca/corona/CoronaWebView;I)I

    .line 524
    new-instance p1, Lcom/ansca/corona/events/DidFailLoadUrlTask;

    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v0

    invoke-direct {p1, v0, p4, p3, p2}, Lcom/ansca/corona/events/DidFailLoadUrlTask;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 525
    iget-object p2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {p2}, Lcom/ansca/corona/CoronaWebView;->access$300(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 421
    iget-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ansca/corona/CoronaWebView;->access$202(Lcom/ansca/corona/CoronaWebView;I)I

    return p2
.end method
