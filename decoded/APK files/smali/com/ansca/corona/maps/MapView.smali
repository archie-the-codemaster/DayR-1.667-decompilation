.class public Lcom/ansca/corona/maps/MapView;
.super Landroid/widget/FrameLayout;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/maps/MapView$LocationBounds;,
        Lcom/ansca/corona/maps/MapView$WebViewEventHandler;,
        Lcom/ansca/corona/maps/MapView$JavaScriptInterface;
    }
.end annotation


# instance fields
.field private fController:Lcom/ansca/corona/Controller;

.field private fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private fCurrentLocation:Landroid/location/Location;

.field private fIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private fIsCurrentLocationTrackingEnabled:Z

.field private fIsMapLoaded:Z

.field private fIsScrollEnabled:Z

.field private fIsZoomEnabled:Z

.field private fLoadingIndicatorView:Landroid/widget/ProgressBar;

.field private fMapLocationBounds:Lcom/ansca/corona/maps/MapView$LocationBounds;

.field private fMapType:Lcom/ansca/corona/maps/MapType;

.field private fMarkerTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/maps/MapMarker;",
            ">;"
        }
    .end annotation
.end field

.field private fOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

.field private fWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;Lcom/ansca/corona/Controller;)V
    .locals 6

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "android.permission.INTERNET"

    .line 80
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p2, p0, Lcom/ansca/corona/maps/MapView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 84
    iput-object p3, p0, Lcom/ansca/corona/maps/MapView;->fController:Lcom/ansca/corona/Controller;

    .line 86
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/ansca/corona/maps/MapView;->fIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    iput-object p2, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    .line 91
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/ansca/corona/maps/MapView;->fIsMapLoaded:Z

    .line 93
    sget-object v1, Lcom/ansca/corona/maps/MapType;->STANDARD:Lcom/ansca/corona/maps/MapType;

    iput-object v1, p0, Lcom/ansca/corona/maps/MapView;->fMapType:Lcom/ansca/corona/maps/MapType;

    .line 94
    iput-boolean p2, p0, Lcom/ansca/corona/maps/MapView;->fIsCurrentLocationTrackingEnabled:Z

    .line 95
    iput-boolean p3, p0, Lcom/ansca/corona/maps/MapView;->fIsZoomEnabled:Z

    .line 96
    iput-boolean p3, p0, Lcom/ansca/corona/maps/MapView;->fIsScrollEnabled:Z

    .line 97
    iput-object v0, p0, Lcom/ansca/corona/maps/MapView;->fCurrentLocation:Landroid/location/Location;

    .line 98
    iput-object v0, p0, Lcom/ansca/corona/maps/MapView;->fMapLocationBounds:Lcom/ansca/corona/maps/MapView$LocationBounds;

    const v1, -0xbbbbbc

    .line 102
    invoke-virtual {p0, v1}, Lcom/ansca/corona/maps/MapView;->setBackgroundColor(I)V

    .line 106
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ansca/corona/maps/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    .line 107
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/ansca/corona/maps/MapView;->addView(Landroid/view/View;)V

    .line 114
    new-instance v1, Lcom/ansca/corona/maps/MapView$1;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/maps/MapView$1;-><init>(Lcom/ansca/corona/maps/MapView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    .line 128
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 133
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/ansca/corona/maps/MapView;->addView(Landroid/view/View;)V

    .line 137
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 139
    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 140
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 141
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 142
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 143
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 144
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 145
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v2, "getInternalWebCachesDirectory"

    .line 149
    invoke-direct {p0, p1, v2}, Lcom/ansca/corona/maps/MapView;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 151
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 152
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 155
    :try_start_0
    const-class v2, Landroid/webkit/WebSettings;

    const-string v3, "setEnableSmoothTransition"

    new-array v4, p3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, p3, [Ljava/lang/Object;

    .line 157
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v3, p2

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 159
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ansca/corona/maps/MapView$WebViewEventHandler;

    invoke-direct {v1, p0, v0}, Lcom/ansca/corona/maps/MapView$WebViewEventHandler;-><init>(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapView$1;)V

    invoke-virtual {p3, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 166
    iget-object p3, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ansca/corona/maps/MapView$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/maps/MapView$2;-><init>(Lcom/ansca/corona/maps/MapView;)V

    invoke-virtual {p3, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 178
    iget-object p3, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;

    invoke-direct {v1, p0, v0}, Lcom/ansca/corona/maps/MapView$JavaScriptInterface;-><init>(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapView$1;)V

    const-string v2, "corona"

    invoke-virtual {p3, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object p3, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ansca/corona/maps/MapView$3;

    invoke-direct {v1, p0}, Lcom/ansca/corona/maps/MapView$3;-><init>(Lcom/ansca/corona/maps/MapView;)V

    invoke-virtual {p3, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge p3, v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView;->disableHardwareAcceleration()V

    :cond_1
    const-string p3, "corona_map_view2"

    .line 218
    new-instance v1, Ljava/io/File;

    const-string v2, "getInternalResourceCachesDirectory"

    invoke-direct {p0, p1, v2}, Lcom/ansca/corona/maps/MapView;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 224
    :try_start_1
    new-instance v2, Lcom/ansca/corona/storage/ResourceServices;

    invoke-direct {v2, p1}, Lcom/ansca/corona/storage/ResourceServices;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v2, p3}, Lcom/ansca/corona/storage/ResourceServices;->getRawResourceId(Ljava/lang/String;)I

    move-result p3

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 227
    :try_start_2
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v0, 0x400

    :try_start_3
    new-array v0, v0, [B

    .line 230
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_3

    .line 236
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    .line 244
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 248
    :catch_1
    :cond_2
    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 252
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 234
    :cond_3
    :try_start_6
    invoke-virtual {p3, v0, p2, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_6

    :catch_3
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_7

    :catch_4
    move-exception p2

    move-object p3, v0

    :goto_3
    move-object v0, p1

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object p1, v0

    goto :goto_7

    :catch_5
    move-exception p2

    move-object p3, v0

    .line 239
    :goto_4
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_4

    .line 244
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    nop

    :cond_4
    :goto_5
    if-eqz p3, :cond_5

    .line 248
    :try_start_9
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_5
    return-void

    :catchall_3
    move-exception p2

    move-object p1, v0

    :goto_6
    move-object v0, p3

    :goto_7
    if-eqz p1, :cond_6

    .line 244
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_8

    :catch_8
    nop

    :cond_6
    :goto_8
    if-eqz v0, :cond_7

    .line 248
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 249
    :catch_9
    :cond_7
    throw p2

    .line 258
    :cond_8
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 263
    new-instance p1, Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {p1}, Lcom/ansca/corona/MessageBasedTimer;-><init>()V

    iput-object p1, p0, Lcom/ansca/corona/maps/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    .line 264
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/MessageBasedTimer;->setHandler(Landroid/os/Handler;)V

    .line 265
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    const-wide/16 p2, 0x1e

    invoke-static {p2, p3}, Lcom/ansca/corona/TimeSpan;->fromSeconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ansca/corona/MessageBasedTimer;->setInterval(Lcom/ansca/corona/TimeSpan;)V

    .line 266
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance p2, Lcom/ansca/corona/maps/MapView$4;

    invoke-direct {p2, p0}, Lcom/ansca/corona/maps/MapView$4;-><init>(Lcom/ansca/corona/maps/MapView;)V

    invoke-virtual {p1, p2}, Lcom/ansca/corona/MessageBasedTimer;->setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    .line 281
    iget-object p1, p0, Lcom/ansca/corona/maps/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {p1}, Lcom/ansca/corona/MessageBasedTimer;->start()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ansca/corona/maps/MapView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ansca/corona/maps/MapView;->requestExecuteQueuedOperations()V

    return-void
.end method

.method static synthetic access$1102(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapView$LocationBounds;)Lcom/ansca/corona/maps/MapView$LocationBounds;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView;->fMapLocationBounds:Lcom/ansca/corona/maps/MapView$LocationBounds;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/maps/MapView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ansca/corona/maps/MapView;)Ljava/util/Hashtable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ansca/corona/maps/MapView;)Landroid/webkit/WebView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/MessageBasedTimer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/maps/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ansca/corona/maps/MapView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ansca/corona/maps/MapView;->createHtmlTextFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ansca/corona/maps/MapView;)Lcom/ansca/corona/Controller;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/maps/MapView;->fController:Lcom/ansca/corona/Controller;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ansca/corona/maps/MapView;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/maps/MapView;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$702(Lcom/ansca/corona/maps/MapView;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView;->fCurrentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ansca/corona/maps/MapView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/ansca/corona/maps/MapView;->fIsMapLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/ansca/corona/maps/MapView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ansca/corona/maps/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private createHtmlTextFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 718
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "&"

    const-string v1, "&amp;"

    .line 723
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "&quot;"

    .line 724
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 725
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    .line 726
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "<br>"

    .line 727
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .line 736
    invoke-static {p1}, Lcom/ansca/corona/CoronaEnvironment;->getCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 737
    const-class v1, Lcom/ansca/corona/CoronaEnvironment;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 738
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, v1, v0

    .line 739
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .line 741
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v7, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    .line 742
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private requestExecuteQueuedOperations()V
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 703
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addMarker(Lcom/ansca/corona/maps/MapMarker;)V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/ansca/corona/maps/MapView$7;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/maps/MapView$7;-><init>(Lcom/ansca/corona/maps/MapView;Lcom/ansca/corona/maps/MapMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-direct {p0}, Lcom/ansca/corona/maps/MapView;->requestExecuteQueuedOperations()V

    .line 631
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/ansca/corona/maps/MapMarker;->getMarkerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView;->removeAllMarkers()V

    .line 317
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    :cond_1
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/ansca/corona/maps/MapView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMapType()Lcom/ansca/corona/maps/MapType;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fMapType:Lcom/ansca/corona/maps/MapType;

    return-object v0
.end method

.method public getNewMarkerId()I
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public isCurrentLocationTrackingEnabled()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/ansca/corona/maps/MapView;->fIsCurrentLocationTrackingEnabled:Z

    return v0
.end method

.method public isCurrentLocationVisible()Z
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fCurrentLocation:Landroid/location/Location;

    .line 459
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fMapLocationBounds:Lcom/ansca/corona/maps/MapView$LocationBounds;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v1, v0}, Lcom/ansca/corona/maps/MapView$LocationBounds;->contains(Landroid/location/Location;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/maps/MapView;->fIsMapLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/ansca/corona/maps/MapView;->fIsScrollEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/ansca/corona/maps/MapView;->fIsZoomEnabled:Z

    return v0
.end method

.method public removeAllMarkers()V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/ansca/corona/maps/MapView$9;

    invoke-direct {v1, p0}, Lcom/ansca/corona/maps/MapView$9;-><init>(Lcom/ansca/corona/maps/MapView;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-direct {p0}, Lcom/ansca/corona/maps/MapView;->requestExecuteQueuedOperations()V

    .line 677
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    .line 679
    iget-object v2, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 680
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/maps/MapMarker;

    if-eqz v1, :cond_0

    .line 684
    iget-object v2, p0, Lcom/ansca/corona/maps/MapView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/maps/MapMarker;->deleteRef(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 680
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized removeMarker(I)V
    .locals 2

    monitor-enter p0

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/ansca/corona/maps/MapView$8;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/maps/MapView$8;-><init>(Lcom/ansca/corona/maps/MapView;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/ansca/corona/maps/MapView;->requestExecuteQueuedOperations()V

    .line 656
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/maps/MapMarker;

    if-eqz v0, :cond_1

    .line 659
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/maps/MapMarker;->deleteRef(Lcom/ansca/corona/CoronaRuntime;)V

    .line 660
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fMarkerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 350
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 353
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setCenter(DDZ)V
    .locals 9

    .line 514
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v8, Lcom/ansca/corona/maps/MapView$5;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ansca/corona/maps/MapView$5;-><init>(Lcom/ansca/corona/maps/MapView;DDZ)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-direct {p0}, Lcom/ansca/corona/maps/MapView;->requestExecuteQueuedOperations()V

    return-void
.end method

.method public setCurrentLocationTrackingEnabled(Z)V
    .locals 3

    .line 426
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setCurrentLocationTrackingEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 429
    :cond_0
    iput-boolean p1, p0, Lcom/ansca/corona/maps/MapView;->fIsCurrentLocationTrackingEnabled:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 7

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 294
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setMapType(Lcom/ansca/corona/maps/MapType;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    sget-object v0, Lcom/ansca/corona/maps/MapType;->STANDARD:Lcom/ansca/corona/maps/MapType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:showRoadmapView()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_1
    sget-object v0, Lcom/ansca/corona/maps/MapType;->SATELLITE:Lcom/ansca/corona/maps/MapType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:showSatelliteView()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_2
    sget-object v0, Lcom/ansca/corona/maps/MapType;->HYBRID:Lcom/ansca/corona/maps/MapType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:showHybridView()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 410
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/maps/MapView;->fMapType:Lcom/ansca/corona/maps/MapType;

    return-void
.end method

.method public setRegion(DDDDZ)V
    .locals 14

    move-object v11, p0

    .line 544
    iget-object v12, v11, Lcom/ansca/corona/maps/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v13, Lcom/ansca/corona/maps/MapView$6;

    move-object v0, v13

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/ansca/corona/maps/MapView$6;-><init>(Lcom/ansca/corona/maps/MapView;DDDDZ)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-direct {p0}, Lcom/ansca/corona/maps/MapView;->requestExecuteQueuedOperations()V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 3

    .line 492
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setPanningEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 495
    :cond_0
    iput-boolean p1, p0, Lcom/ansca/corona/maps/MapView;->fIsScrollEnabled:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/maps/MapView;->fIsMapLoaded:Z

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 340
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 3

    .line 473
    invoke-virtual {p0}, Lcom/ansca/corona/maps/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setZoomingEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 476
    :cond_0
    iput-boolean p1, p0, Lcom/ansca/corona/maps/MapView;->fIsZoomEnabled:Z

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 366
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/maps/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
