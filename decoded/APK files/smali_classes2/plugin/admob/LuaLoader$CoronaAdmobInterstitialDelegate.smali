.class Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;
.super Lplugin/admob/LuaLoader$CoronaAdmobDelegate;
.source "LuaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaAdmobInterstitialDelegate"
.end annotation


# instance fields
.field interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$CoronaAdmobDelegate;-><init>(Lplugin/admob/LuaLoader;)V

    .line 1669
    iput-object p2, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-void
.end method


# virtual methods
.method public coronaAdOpened()V
    .locals 4

    .line 1694
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1696
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1698
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "displayed"

    .line 1699
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "interstitial"

    .line 1700
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1701
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    .line 1704
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "impression"

    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1800(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1707
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onAdClosed()V
    .locals 4

    .line 1721
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1723
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1725
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "closed"

    .line 1726
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "interstitial"

    .line 1727
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1728
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1732
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .line 1757
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errorMsg"

    .line 1759
    invoke-virtual {p0, p1}, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->getAdRequestErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 1760
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "adUnitId"

    .line 1761
    iget-object v1, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1763
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phase"

    const-string v2, "failed"

    .line 1764
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "interstitial"

    .line 1765
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response"

    const-string v2, "loadFailed"

    .line 1766
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 1767
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, p1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1771
    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 4

    .line 1739
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1741
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1743
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "clicked"

    .line 1744
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "interstitial"

    .line 1745
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1746
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1750
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1675
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1677
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1679
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "loaded"

    .line 1680
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "interstitial"

    .line 1681
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1682
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    .line 1685
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "request"

    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1800(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1688
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method
