.class Lplugin/admob/LuaLoader$IsLoaded$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader$IsLoaded;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/admob/LuaLoader$IsLoaded;

.field final synthetic val$fAdType:Ljava/lang/String;

.field final synthetic val$fAdUnitIdParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader$IsLoaded;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->this$1:Lplugin/admob/LuaLoader$IsLoaded;

    iput-object p2, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->val$fAdUnitIdParam:Ljava/lang/String;

    iput-object p3, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->val$fAdType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->val$fAdUnitIdParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->val$fAdType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1065
    iget-object v2, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->val$fAdType:Ljava/lang/String;

    const-string v3, "interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1066
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_1

    goto :goto_2

    .line 1067
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_2

    .line 1069
    :cond_2
    iget-object v2, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->val$fAdType:Ljava/lang/String;

    const-string v3, "rewardedVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1070
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez v0, :cond_3

    goto :goto_2

    .line 1071
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v0

    goto :goto_1

    .line 1073
    :cond_4
    iget-object v2, p0, Lplugin/admob/LuaLoader$IsLoaded$1;->val$fAdType:Ljava/lang/String;

    const-string v3, "banner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1074
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_5

    .line 1076
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    check-cast v0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;

    .line 1077
    iget-boolean v1, v0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z

    .line 1083
    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1052
    invoke-virtual {p0}, Lplugin/admob/LuaLoader$IsLoaded$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
