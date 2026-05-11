.class Lplugin/admob/LuaLoader$5;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/admob/LuaLoader;->sendToBeacon(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lplugin/admob/LuaLoader$5;->this$0:Lplugin/admob/LuaLoader;

    iput-object p2, p0, Lplugin/admob/LuaLoader$5;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Lplugin/admob/LuaLoader$5;->val$placementID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 469
    invoke-static {}, Lplugin/admob/LuaLoader;->access$1000()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    iget-object v3, p0, Lplugin/admob/LuaLoader$5;->val$eventType:Ljava/lang/String;

    iget-object v4, p0, Lplugin/admob/LuaLoader$5;->val$placementID:Ljava/lang/String;

    new-instance v5, Lplugin/admob/LuaLoader$BeaconListener;

    iget-object v1, p0, Lplugin/admob/LuaLoader$5;->this$0:Lplugin/admob/LuaLoader;

    const/4 v2, 0x0

    invoke-direct {v5, v1, v2}, Lplugin/admob/LuaLoader$BeaconListener;-><init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V

    const-string v1, "plugin.admob"

    const-string v2, "1.2.6"

    invoke-static/range {v0 .. v5}, Lcom/ansca/corona/CoronaBeacon;->sendDeviceDataToBeacon(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)I

    return-void
.end method
