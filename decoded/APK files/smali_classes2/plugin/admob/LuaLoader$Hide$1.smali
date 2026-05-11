.class Lplugin/admob/LuaLoader$Hide$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader$Hide;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/admob/LuaLoader$Hide;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader$Hide;Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 1494
    iput-object p1, p0, Lplugin/admob/LuaLoader$Hide$1;->this$1:Lplugin/admob/LuaLoader$Hide;

    iput-object p2, p0, Lplugin/admob/LuaLoader$Hide$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1497
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    const-string v1, "banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "WARNING: "

    if-nez v0, :cond_0

    .line 1499
    iget-object v0, p0, Lplugin/admob/LuaLoader$Hide$1;->this$1:Lplugin/admob/LuaLoader$Hide;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Hide;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "Banner not loaded"

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1503
    :cond_0
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 1504
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1505
    iget-object v0, p0, Lplugin/admob/LuaLoader$Hide$1;->this$1:Lplugin/admob/LuaLoader$Hide;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Hide;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "Banner not visible"

    invoke-static {v0, v1, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    .line 1510
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 1511
    iget-object v1, p0, Lplugin/admob/LuaLoader$Hide$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1514
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    check-cast v0, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;

    invoke-virtual {v0}, Lplugin/admob/LuaLoader$CoronaAdmobBannerDelegate;->onAdClosed()V

    return-void
.end method
