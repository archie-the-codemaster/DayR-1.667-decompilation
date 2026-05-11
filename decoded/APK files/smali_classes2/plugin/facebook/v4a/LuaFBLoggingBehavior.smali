.class public final enum Lplugin/facebook/v4a/LuaFBLoggingBehavior;
.super Ljava/lang/Enum;
.source "LuaFBLoggingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lplugin/facebook/v4a/LuaFBLoggingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lplugin/facebook/v4a/LuaFBLoggingBehavior;

.field public static final enum ACCESS_TOKENS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

.field public static final enum APP_EVENTS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

.field public static final enum CACHE:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

.field public static final enum GRAPH_API_DEBUG_INFO:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

.field public static final enum GRAPH_API_DEBUG_WARNING:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

.field public static final enum NETWORK_REQUESTS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

.field public static final enum PLUGIN_AND_FACEBOOK_SDK_COMMUNICATION:Lplugin/facebook/v4a/LuaFBLoggingBehavior;


# instance fields
.field private final luaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 11
    new-instance v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v1, 0x0

    const-string v2, "ACCESS_TOKENS"

    const-string v3, "accessTokens"

    invoke-direct {v0, v2, v1, v3}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->ACCESS_TOKENS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    .line 12
    new-instance v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v2, 0x1

    const-string v3, "APP_EVENTS"

    const-string v4, "appEvents"

    invoke-direct {v0, v3, v2, v4}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->APP_EVENTS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    .line 13
    new-instance v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v3, 0x2

    const-string v4, "CACHE"

    const-string v5, "cache"

    invoke-direct {v0, v4, v3, v5}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->CACHE:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    .line 14
    new-instance v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v4, 0x3

    const-string v5, "GRAPH_API_DEBUG_WARNING"

    const-string v6, "graphAPIDebugWarning"

    invoke-direct {v0, v5, v4, v6}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    .line 15
    new-instance v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v5, 0x4

    const-string v6, "GRAPH_API_DEBUG_INFO"

    const-string v7, "graphAPIDebugInfo"

    invoke-direct {v0, v6, v5, v7}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->GRAPH_API_DEBUG_INFO:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    .line 16
    new-instance v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v6, 0x5

    const-string v7, "NETWORK_REQUESTS"

    const-string v8, "networkRequests"

    invoke-direct {v0, v7, v6, v8}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->NETWORK_REQUESTS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    .line 17
    new-instance v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v7, 0x6

    const-string v8, "PLUGIN_AND_FACEBOOK_SDK_COMMUNICATION"

    const-string v9, "pluginAndFacebookSDKCommunication"

    invoke-direct {v0, v8, v7, v9}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->PLUGIN_AND_FACEBOOK_SDK_COMMUNICATION:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    const/4 v0, 0x7

    new-array v0, v0, [Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    .line 10
    sget-object v8, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->ACCESS_TOKENS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    aput-object v8, v0, v1

    sget-object v1, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->APP_EVENTS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->CACHE:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->GRAPH_API_DEBUG_INFO:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->NETWORK_REQUESTS:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    aput-object v1, v0, v6

    sget-object v1, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->PLUGIN_AND_FACEBOOK_SDK_COMMUNICATION:Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    aput-object v1, v0, v7

    sput-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->$VALUES:[Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->luaName:Ljava/lang/String;

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 5

    .line 31
    invoke-static {}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->values()[Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 32
    invoke-virtual {v4}, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lplugin/facebook/v4a/LuaFBLoggingBehavior;
    .locals 1

    .line 10
    const-class v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    return-object p0
.end method

.method public static values()[Lplugin/facebook/v4a/LuaFBLoggingBehavior;
    .locals 1

    .line 10
    sget-object v0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->$VALUES:[Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    invoke-virtual {v0}, [Lplugin/facebook/v4a/LuaFBLoggingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lplugin/facebook/v4a/LuaFBLoggingBehavior;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lplugin/facebook/v4a/LuaFBLoggingBehavior;->luaName:Ljava/lang/String;

    return-object v0
.end method
