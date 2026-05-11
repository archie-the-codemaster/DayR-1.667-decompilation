.class Lplugin/notifications/v2/LuaLoader$GetDeviceToken;
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
    name = "GetDeviceToken"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/notifications/v2/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/notifications/v2/LuaLoader;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lplugin/notifications/v2/LuaLoader$GetDeviceToken;->this$0:Lplugin/notifications/v2/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/notifications/v2/LuaLoader;Lplugin/notifications/v2/LuaLoader$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lplugin/notifications/v2/LuaLoader$GetDeviceToken;-><init>(Lplugin/notifications/v2/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDeviceToken"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    const-string v0, "notifications.getDeviceToken()"

    .line 283
    invoke-static {v0}, Lplugin/notifications/v2/LuaLoader;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object p1, p0, Lplugin/notifications/v2/LuaLoader$GetDeviceToken;->this$0:Lplugin/notifications/v2/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected no arguments, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR: "

    invoke-static {p1, v1, v0}, Lplugin/notifications/v2/LuaLoader;->access$900(Lplugin/notifications/v2/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 292
    :cond_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "unknown"

    .line 298
    :cond_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
