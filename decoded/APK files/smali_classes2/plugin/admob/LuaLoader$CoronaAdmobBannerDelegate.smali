.class Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;
.super Lplugin/admob/LuaLoader$CoronaAdmobDelegate;
.source "LuaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaAdmobBannerDelegate"
.end annotation


# instance fields
.field currentBanner:Lcom/google/android/gms/ads/AdView;

.field isLoaded:Z

.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 1940
    iput-object p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$CoronaAdmobDelegate;-><init>(Lplugin/admob/LuaLoader;)V

    const/4 p1, 0x0

    .line 1937
    iput-object p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->currentBanner:Lcom/google/android/gms/ads/AdView;

    const/4 p1, 0x0

    .line 1938
    iput-boolean p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z

    .line 1941
    iput-object p2, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->currentBanner:Lcom/google/android/gms/ads/AdView;

    .line 1942
    iput-boolean p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 4

    .line 1989
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1991
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->currentBanner:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1993
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "hidden"

    .line 1994
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "banner"

    .line 1995
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1996
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2000
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .line 2013
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errorMsg"

    .line 2015
    invoke-virtual {p0, p1}, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->getAdRequestErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 2016
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "adUnitId"

    .line 2017
    iget-object v1, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->currentBanner:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2019
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phase"

    const-string v2, "failed"

    .line 2020
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "banner"

    .line 2021
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response"

    const-string v2, "loadFailed"

    .line 2022
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 2023
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, p1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 2026
    iput-boolean p1, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2029
    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1948
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1950
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->currentBanner:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1952
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    .line 1953
    iget-boolean v3, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z

    if-eqz v3, :cond_0

    const-string v3, "refreshed"

    goto :goto_0

    :cond_0
    const-string v3, "loaded"

    :goto_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "banner"

    .line 1954
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1955
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    .line 1958
    iget-boolean v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z

    if-eqz v0, :cond_1

    const-string v0, "impression"

    goto :goto_1

    :cond_1
    const-string v0, "request"

    .line 1959
    :goto_1
    iget-object v1, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->this$0:Lplugin/admob/LuaLoader;

    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->currentBanner:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lplugin/admob/LuaLoader;->access$1800(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1961
    iput-boolean v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1964
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_2
    return-void
.end method

.method public onAdOpened()V
    .locals 4

    .line 1971
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adUnitId"

    .line 1973
    iget-object v2, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->currentBanner:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1975
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phase"

    const-string v3, "clicked"

    .line 1976
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "banner"

    .line 1977
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 1978
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    iget-object v0, p0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v0, v1}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1982
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :goto_0
    return-void
.end method
