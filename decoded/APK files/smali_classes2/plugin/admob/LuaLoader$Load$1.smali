.class Lplugin/admob/LuaLoader$Load$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader$Load;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/admob/LuaLoader$Load;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$fAdType:Ljava/lang/String;

.field final synthetic val$fAdUnitId:Ljava/lang/String;

.field final synthetic val$fRequest:Lcom/google/android/gms/ads/AdRequest;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader$Load;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iput-object p2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdType:Ljava/lang/String;

    iput-object p3, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    iput-object p4, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    iput-object p5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "banner"

    const-string v1, "rewardedVideo"

    const-string v2, "interstitial"

    const-string v3, "\'"

    const-string v4, "ERROR: "

    .line 839
    :try_start_0
    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const-string v6, "adUnitId \'"

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 841
    :try_start_1
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 842
    iget-object v1, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 843
    new-instance v1, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v5, v5, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {v1, v5, v0}, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;-><init>(Lplugin/admob/LuaLoader;Lcom/google/android/gms/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 847
    :try_start_2
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 849
    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v5

    check-cast v5, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;

    .line 850
    iput-object v7, v5, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 851
    invoke-virtual {v1, v7}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 862
    :cond_0
    :try_start_3
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iget-object v1, p0, Lplugin/admob/LuaLoader$Load$1;->val$fRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0

    .line 857
    :catch_0
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error while processing interstitial with adUnitId \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 854
    :catch_1
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not an interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 867
    :cond_1
    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 869
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 873
    :try_start_4
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v2, :cond_2

    .line 875
    invoke-interface {v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    move-result-object v5

    check-cast v5, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;

    .line 876
    iput-object v7, v5, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->rewardedAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 877
    invoke-interface {v2, v7}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 878
    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v5}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->destroy(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 889
    :cond_2
    :try_start_5
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    new-instance v1, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v2, v2, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v5}, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;-><init>(Lplugin/admob/LuaLoader;Lcom/google/android/gms/ads/reward/RewardedVideoAd;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 894
    iget-object v1, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0

    .line 884
    :catch_2
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error while processing rewarded video with adUnitId \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 881
    :catch_3
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a rewarded video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 895
    :cond_3
    iget-object v1, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 899
    iget-object v1, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/ansca/corona/CoronaActivity;->convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;

    move-result-object v1

    .line 900
    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v5}, Lcom/ansca/corona/CoronaActivity;->convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;

    move-result-object v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 903
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    sub-int/2addr v2, v1

    int-to-double v1, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v1, v8

    .line 905
    :cond_4
    :try_start_6
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    const-string v2, "yRatio"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 908
    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 909
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 910
    new-instance v2, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v5, v5, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {v2, v5, v1}, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;-><init>(Lplugin/admob/LuaLoader;Lcom/google/android/gms/ads/AdView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    const/4 v2, 0x4

    .line 911
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 914
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x51

    .line 921
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 922
    iget-object v8, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v8}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 926
    :try_start_7
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v5

    iget-object v8, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/ads/AdView;

    if-eqz v5, :cond_5

    .line 928
    invoke-virtual {v5, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 929
    invoke-virtual {v5, v7}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 930
    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 931
    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdView;->destroy()V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 942
    :cond_5
    :try_start_8
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->val$fRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 937
    :catch_4
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error while processing banner with adUnitId \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 934
    :catch_5
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_0
    return-void

    .line 949
    :catch_6
    iget-object v0, p0, Lplugin/admob/LuaLoader$Load$1;->this$1:Lplugin/admob/LuaLoader$Load;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error while loading banner with adUnitId \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/admob/LuaLoader$Load$1;->val$fAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
