.class Lplugin/facebook/v4a/LuaLoader$GetSDKVersionWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/facebook/v4a/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSDKVersionWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/facebook/v4a/LuaLoader;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lplugin/facebook/v4a/LuaLoader$GetSDKVersionWrapper;->this$0:Lplugin/facebook/v4a/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/facebook/v4a/LuaLoader;Lplugin/facebook/v4a/LuaLoader$1;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Lplugin/facebook/v4a/LuaLoader$GetSDKVersionWrapper;-><init>(Lplugin/facebook/v4a/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getSDKVersion"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1

    .line 421
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
