.class Lplugin/admob/LuaLoader$3;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader;->onExiting(Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$runtime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lplugin/admob/LuaLoader$3;->this$0:Lplugin/admob/LuaLoader;

    iput-object p2, p0, Lplugin/admob/LuaLoader$3;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Lplugin/admob/LuaLoader$3;->val$runtime:Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 315
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 318
    instance-of v3, v1, Lcom/google/android/gms/ads/AdView;

    if-eqz v3, :cond_1

    .line 319
    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 320
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 321
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    goto :goto_0

    .line 323
    :cond_1
    instance-of v3, v1, Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v3, :cond_2

    .line 324
    check-cast v1, Lcom/google/android/gms/ads/InterstitialAd;

    .line 325
    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v3

    check-cast v3, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;

    .line 326
    iput-object v2, v3, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 327
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0

    .line 329
    :cond_2
    instance-of v3, v1, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v3, :cond_0

    .line 330
    check-cast v1, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 331
    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    move-result-object v3

    check-cast v3, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;

    .line 332
    iput-object v2, v3, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->rewardedAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 333
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 334
    iget-object v2, p0, Lplugin/admob/LuaLoader$3;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->destroy(Landroid/content/Context;)V

    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lplugin/admob/LuaLoader$3;->val$runtime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-static {}, Lplugin/admob/LuaLoader;->access$800()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    const/4 v0, -0x1

    .line 339
    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$802(I)I

    .line 341
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 342
    invoke-static {}, Lplugin/admob/LuaLoader;->access$900()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    invoke-static {v2}, Lplugin/admob/LuaLoader;->access$1002(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    const-string v0, ""

    .line 344
    invoke-static {v0}, Lplugin/admob/LuaLoader;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
