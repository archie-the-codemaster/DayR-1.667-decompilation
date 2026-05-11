.class Lplugin/admob/LuaLoader$Show$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader$Show;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/admob/LuaLoader$Show;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$fAdType:Ljava/lang/String;

.field final synthetic val$fBgColor:Ljava/lang/String;

.field final synthetic val$fYAlign:Ljava/lang/String;

.field final synthetic val$fYOffset:I

.field final synthetic val$fadUnitIdParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader$Show;Ljava/lang/String;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1298
    iput-object p1, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iput-object p2, p0, Lplugin/admob/LuaLoader$Show$1;->val$fadUnitIdParam:Ljava/lang/String;

    iput-object p3, p0, Lplugin/admob/LuaLoader$Show$1;->val$fAdType:Ljava/lang/String;

    iput-object p4, p0, Lplugin/admob/LuaLoader$Show$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    iput-object p5, p0, Lplugin/admob/LuaLoader$Show$1;->val$fYAlign:Ljava/lang/String;

    iput p6, p0, Lplugin/admob/LuaLoader$Show$1;->val$fYOffset:I

    iput-object p7, p0, Lplugin/admob/LuaLoader$Show$1;->val$fBgColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1302
    iget-object v0, p0, Lplugin/admob/LuaLoader$Show$1;->val$fadUnitIdParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1304
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lplugin/admob/LuaLoader$Show$1;->val$fAdType:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1307
    :cond_0
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lplugin/admob/LuaLoader$Show$1;->val$fAdType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const-string v1, "WARNING: "

    if-nez v0, :cond_1

    .line 1311
    iget-object v0, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lplugin/admob/LuaLoader$Show$1;->val$fAdType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1316
    :cond_1
    iget-object v2, p0, Lplugin/admob/LuaLoader$Show$1;->val$fAdType:Ljava/lang/String;

    const-string v3, "interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1317
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_2

    .line 1319
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1321
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    check-cast v1, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;

    invoke-virtual {v1}, Lplugin/admob/LuaLoader$CoronaAdmobInterstitialDelegate;->coronaAdOpened()V

    .line 1322
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto/16 :goto_5

    .line 1325
    :cond_2
    iget-object v0, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "Interstitial not loaded"

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1328
    :cond_3
    iget-object v2, p0, Lplugin/admob/LuaLoader$Show$1;->val$fAdType:Ljava/lang/String;

    const-string v3, "rewardedVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1329
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_4

    .line 1331
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1333
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    move-result-object v1

    check-cast v1, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;

    invoke-virtual {v1}, Lplugin/admob/LuaLoader$CoronaAdmobRewardedDelegate;->coronaAdOpened()V

    .line 1334
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    goto/16 :goto_5

    .line 1337
    :cond_4
    iget-object v0, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "Rewarded Video not loaded"

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1340
    :cond_5
    iget-object v2, p0, Lplugin/admob/LuaLoader$Show$1;->val$fAdType:Ljava/lang/String;

    const-string v3, "banner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1341
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_12

    .line 1343
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v2

    check-cast v2, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;

    iget-boolean v2, v2, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->isLoaded:Z

    if-nez v2, :cond_6

    goto/16 :goto_4

    .line 1348
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 1349
    iget-object v0, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "Banner already visible"

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1354
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1355
    iget-object v2, p0, Lplugin/admob/LuaLoader$Show$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1359
    :cond_8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1364
    iget-object v4, p0, Lplugin/admob/LuaLoader$Show$1;->val$fYAlign:Ljava/lang/String;

    const/16 v5, 0x51

    const/16 v6, 0x31

    if-eqz v4, :cond_9

    .line 1365
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-string v1, "bottom"

    .line 1367
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1368
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_2

    .line 1372
    :cond_9
    iget v4, p0, Lplugin/admob/LuaLoader$Show$1;->val$fYOffset:I

    int-to-double v7, v4

    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v4

    const-string v9, "yRatio"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    .line 1373
    iget-object v4, p0, Lplugin/admob/LuaLoader$Show$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v4}, Lcom/ansca/corona/CoronaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1374
    iget-object v9, p0, Lplugin/admob/LuaLoader$Show$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v9}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    .line 1377
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xd

    const/4 v12, 0x1

    if-ge v10, v11, :cond_b

    if-ne v9, v12, :cond_a

    .line 1379
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    goto :goto_1

    .line 1382
    :cond_a
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    goto :goto_1

    .line 1386
    :cond_b
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 1387
    invoke-virtual {v4, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    if-ne v9, v12, :cond_c

    .line 1390
    iget v4, v10, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 1393
    :cond_c
    iget v4, v10, Landroid/graphics/Point;->x:I

    :goto_1
    const-string v9, "Banner y position off screen. Adjusting position."

    const-wide/16 v10, 0x0

    cmpl-double v12, v7, v10

    if-ltz v12, :cond_e

    .line 1400
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v7

    int-to-double v12, v4

    cmpl-double v4, v10, v12

    if-lez v4, :cond_d

    .line 1401
    iget-object v4, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v4, v4, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v4, v1, v9}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 1405
    :cond_d
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    double-to-int v1, v7

    .line 1406
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 1410
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v12

    sub-int/2addr v4, v12

    int-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v7

    cmpg-double v4, v12, v10

    if-gez v4, :cond_f

    .line 1411
    iget-object v4, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v4, v4, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v4, v1, v9}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 1415
    :cond_f
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    double-to-int v1, v7

    .line 1416
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1421
    :cond_10
    :goto_2
    iget-object v1, p0, Lplugin/admob/LuaLoader$Show$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    iget-object v1, p0, Lplugin/admob/LuaLoader$Show$1;->val$fBgColor:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1424
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    :cond_11
    const/4 v1, 0x0

    .line 1426
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 1427
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->bringToFront()V

    .line 1431
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "adUnitId"

    .line 1433
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1436
    :catch_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 1439
    :goto_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "phase"

    const-string v5, "displayed"

    .line 1440
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "type"

    .line 1441
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "data"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    iget-object v1, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v1, v1, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v1, v2}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    .line 1446
    iget-object v1, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v1, v1, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "impression"

    invoke-static {v1, v2, v0}, Lplugin/admob/LuaLoader;->access$1800(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1344
    :cond_12
    :goto_4
    iget-object v0, p0, Lplugin/admob/LuaLoader$Show$1;->this$1:Lplugin/admob/LuaLoader$Show;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "Banner not loaded"

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_5
    return-void
.end method
