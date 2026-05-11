.class Lplugin/admob/LuaLoader$Init$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader$Init;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lplugin/admob/LuaLoader$Init;

.field final synthetic val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$fAppId:Ljava/lang/String;

.field final synthetic val$fTestMode:Z

.field final synthetic val$fVideoAdVolume:D


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader$Init;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;DZ)V
    .locals 0

    .line 598
    iput-object p1, p0, Lplugin/admob/LuaLoader$Init$1;->this$1:Lplugin/admob/LuaLoader$Init;

    iput-object p2, p0, Lplugin/admob/LuaLoader$Init$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Lplugin/admob/LuaLoader$Init$1;->val$fAppId:Ljava/lang/String;

    iput-wide p4, p0, Lplugin/admob/LuaLoader$Init$1;->val$fVideoAdVolume:D

    iput-boolean p6, p0, Lplugin/admob/LuaLoader$Init$1;->val$fTestMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 602
    iget-object v0, p0, Lplugin/admob/LuaLoader$Init$1;->val$coronaActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lplugin/admob/LuaLoader$Init$1;->val$fAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 604
    iget-wide v0, p0, Lplugin/admob/LuaLoader$Init$1;->val$fVideoAdVolume:D

    double-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setAppVolume(F)V

    .line 607
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, p0, Lplugin/admob/LuaLoader$Init$1;->val$fTestMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "testMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin.admob: 1.2.6 (SDK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lplugin/admob/LuaLoader;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Corona"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasReceivedInitEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phase"

    const-string v2, "init"

    .line 617
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v1, p0, Lplugin/admob/LuaLoader$Init$1;->this$1:Lplugin/admob/LuaLoader$Init;

    iget-object v1, v1, Lplugin/admob/LuaLoader$Init;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v1, v0}, Lplugin/admob/LuaLoader;->access$1600(Lplugin/admob/LuaLoader;Ljava/util/Map;)V

    return-void
.end method
