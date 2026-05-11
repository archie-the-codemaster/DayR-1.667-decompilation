.class Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;
.super Lplugin/admob/LuaLoader$CoronaAdmobDelegate;
.source "LuaLoader.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaAdmobRewardedDelegate"
.end annotation


# instance fields
.field adUnitId:Ljava/lang/String;

.field rewardedAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;Lcom/google/android/gms/ads/reward/RewardedVideoAd;Ljava/lang/String;)V
    .locals 0

    .line 1782
    iput-object p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$CoronaAdmobDelegate;-><init>(Lplugin/admob/LuaLoader;)V

    .line 1783
    iput-object p2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->rewardedAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 1784
    iput-object p3, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public coronaAdOpened()V
    .locals 4

    .line 1809
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1811
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1813
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "displayed"

    .line 1814
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "rewardedVideo"

    .line 1815
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1816
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    .line 1819
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "impression"

    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1800(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1822
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 3

    .line 1860
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1862
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rewardItem"

    .line 1863
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rewardAmount"

    .line 1864
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1866
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phase"

    const-string v2, "reward"

    .line 1867
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "rewardedVideo"

    .line 1868
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 1869
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, p1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1873
    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 4

    .line 1842
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1844
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1846
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "closed"

    .line 1847
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "rewardedVideo"

    .line 1848
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1849
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1853
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 3

    .line 1898
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1903
    :try_start_0
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    const-string v2, "testMode"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x3

    :cond_0
    const-string v1, "errorMsg"

    .line 1909
    invoke-virtual {p0, p1}, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->getAdRequestErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 1910
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "adUnitId"

    .line 1911
    iget-object v1, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1913
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phase"

    const-string v2, "failed"

    .line 1914
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "rewardedVideo"

    .line 1915
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response"

    const-string v2, "loadFailed"

    .line 1916
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 1917
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, p1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1921
    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 4

    .line 1880
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1882
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "clicked"

    .line 1885
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "rewardedVideo"

    .line 1886
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1887
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1891
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 4

    .line 1790
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1792
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1794
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "loaded"

    .line 1795
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "rewardedVideo"

    .line 1796
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1797
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    .line 1800
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "request"

    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->adUnitId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1800(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1803
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 0

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 0

    return-void
.end method
