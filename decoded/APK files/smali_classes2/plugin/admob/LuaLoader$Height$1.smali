.class Lplugin/admob/LuaLoader$Height$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader$Height;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/admob/LuaLoader$Height;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$fAdUnitIdParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader$Height;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lplugin/admob/LuaLoader$Height$1;->this$1:Lplugin/admob/LuaLoader$Height;

    iput-object p2, p0, Lplugin/admob/LuaLoader$Height$1;->val$fAdUnitIdParam:Ljava/lang/String;

    iput-object p3, p0, Lplugin/admob/LuaLoader$Height$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Lplugin/admob/LuaLoader$Height$1;->val$fAdUnitIdParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1603
    :cond_0
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    const-string v1, "banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const-wide/16 v1, 0x0

    .line 1606
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    if-nez v0, :cond_1

    .line 1609
    iget-object v0, p0, Lplugin/admob/LuaLoader$Height$1;->this$1:Lplugin/admob/LuaLoader$Height;

    iget-object v0, v0, Lplugin/admob/LuaLoader$Height;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "WARNING: "

    const-string v3, "Banner not loaded"

    invoke-static {v0, v2, v3}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1612
    :cond_1
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_2

    .line 1614
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iget-object v1, p0, Lplugin/admob/LuaLoader$Height$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v2

    const-string v3, "yRatio"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1595
    invoke-virtual {p0}, Lplugin/admob/LuaLoader$Height$1;->call()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
