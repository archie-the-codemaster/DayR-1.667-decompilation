.class Lcom/ansca/corona/maps/MapView$WebViewEventHandler;
.super Landroid/webkit/WebViewClient;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/maps/MapView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/maps/MapView;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView$WebViewEventHandler;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapView$1;)V
    .locals 0

    .line 984
    invoke-direct {p0, p1}, Lcom/ansca/corona/maps/MapView$WebViewEventHandler;-><init>(Lcom/ansca/corona/maps/MapView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1024
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1014
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1035
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$WebViewEventHandler;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {p1}, Lcom/ansca/corona/maps/MapView;->access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 998
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "maps.google.com/maps?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 999
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView$WebViewEventHandler;->this$0:Lcom/ansca/corona/maps/MapView;

    invoke-static {p1}, Lcom/ansca/corona/maps/MapView;->access$500(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
