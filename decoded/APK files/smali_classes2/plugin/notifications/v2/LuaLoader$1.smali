.class Lplugin/notifications/v2/LuaLoader$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/notifications/v2/LuaLoader;->sendToBeacon(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/notifications/v2/LuaLoader;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lplugin/notifications/v2/LuaLoader$1;->this$0:Lplugin/notifications/v2/LuaLoader;

    iput-object p2, p0, Lplugin/notifications/v2/LuaLoader$1;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Lplugin/notifications/v2/LuaLoader$1;->val$placementID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 171
    invoke-static {}, Lplugin/notifications/v2/LuaLoader;->access$000()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    iget-object v3, p0, Lplugin/notifications/v2/LuaLoader$1;->val$eventType:Ljava/lang/String;

    iget-object v4, p0, Lplugin/notifications/v2/LuaLoader$1;->val$placementID:Ljava/lang/String;

    new-instance v5, Lplugin/notifications/v2/LuaLoader$BeaconListener;

    iget-object v1, p0, Lplugin/notifications/v2/LuaLoader$1;->this$0:Lplugin/notifications/v2/LuaLoader;

    const/4 v2, 0x0

    invoke-direct {v5, v1, v2}, Lplugin/notifications/v2/LuaLoader$BeaconListener;-><init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V

    const-string v1, "plugin.notifications.v2"

    const-string v2, "1.0.1"

    invoke-static/range {v0 .. v5}, Lcom/ansca/corona/CoronaBeacon;->sendDeviceDataToBeacon(Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)I

    return-void
.end method
