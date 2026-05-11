.class Lplugin/admob/LuaLoader$2;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader;->onResumed(Lcom/ansca/corona/CoronaRuntime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lplugin/admob/LuaLoader$2;->this$0:Lplugin/admob/LuaLoader;

    iput-object p2, p0, Lplugin/admob/LuaLoader$2;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    const-string v1, "banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 284
    :cond_0
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    const-string v1, "rewardedVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 286
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_1

    .line 288
    iget-object v1, p0, Lplugin/admob/LuaLoader$2;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->resume(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
