.class Lplugin/notifications/v2/LuaLoader$RegisterForPushNotifications;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/notifications/v2/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterForPushNotifications"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/notifications/v2/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/notifications/v2/LuaLoader;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lplugin/notifications/v2/LuaLoader$RegisterForPushNotifications;->this$0:Lplugin/notifications/v2/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lplugin/notifications/v2/LuaLoader$RegisterForPushNotifications;-><init>(Lplugin/notifications/v2/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "registerForPushNotifications"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "notifications.registerForPushNotifications( options )"

    .line 246
    invoke-static {v0}, Lplugin/notifications/v2/LuaLoader;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 251
    iget-object v1, p0, Lplugin/notifications/v2/LuaLoader$RegisterForPushNotifications;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 0 or 1 argument, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ERROR: "

    invoke-static {v1, v2, p1}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method
