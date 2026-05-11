.class Lplugin/gpgs/Videos$VideoCapabilitiesBridge;
.super Ljava/lang/Object;
.source "Videos.java"

# interfaces
.implements Lplugin/gpgs/LuaUtils$LuaPushable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCapabilitiesBridge"
.end annotation


# instance fields
.field private capabilities:Lcom/google/android/gms/games/video/VideoCapabilities;

.field private supportsCapture:Lcom/naef/jnlua/JavaFunction;

.field final synthetic this$0:Lplugin/gpgs/Videos;


# direct methods
.method constructor <init>(Lplugin/gpgs/Videos;Lcom/google/android/gms/games/video/VideoCapabilities;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->this$0:Lplugin/gpgs/Videos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance p1, Lplugin/gpgs/Videos$VideoCapabilitiesBridge$1;

    invoke-direct {p1, p0}, Lplugin/gpgs/Videos$VideoCapabilitiesBridge$1;-><init>(Lplugin/gpgs/Videos$VideoCapabilitiesBridge;)V

    iput-object p1, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->supportsCapture:Lcom/naef/jnlua/JavaFunction;

    .line 328
    iput-object p2, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->capabilities:Lcom/google/android/gms/games/video/VideoCapabilities;

    return-void
.end method

.method static synthetic access$600(Lplugin/gpgs/Videos$VideoCapabilitiesBridge;)Lcom/google/android/gms/games/video/VideoCapabilities;
    .locals 0

    .line 324
    iget-object p0, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->capabilities:Lcom/google/android/gms/games/video/VideoCapabilities;

    return-object p0
.end method


# virtual methods
.method public push(Lcom/naef/jnlua/LuaState;)V
    .locals 3

    .line 332
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 333
    iget-object v1, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->capabilities:Lcom/google/android/gms/games/video/VideoCapabilities;

    invoke-virtual {v1}, Lcom/google/android/gms/games/video/VideoCapabilities;->isCameraSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isCameraSupported"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->capabilities:Lcom/google/android/gms/games/video/VideoCapabilities;

    invoke-virtual {v1}, Lcom/google/android/gms/games/video/VideoCapabilities;->isMicSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isMicSupported"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->capabilities:Lcom/google/android/gms/games/video/VideoCapabilities;

    invoke-virtual {v1}, Lcom/google/android/gms/games/video/VideoCapabilities;->isWriteStorageSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isWriteStorageSupported"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {p1, v0}, Lplugin/gpgs/Utils;->pushHashtable(Lcom/naef/jnlua/LuaState;Ljava/util/Hashtable;)V

    .line 339
    iget-object v0, p0, Lplugin/gpgs/Videos$VideoCapabilitiesBridge;->supportsCapture:Lcom/naef/jnlua/JavaFunction;

    const-string v1, "supportsCapture"

    invoke-static {p1, v1, v0}, Lplugin/gpgs/Utils;->setJavaFunctionAsField(Lcom/naef/jnlua/LuaState;Ljava/lang/String;Lcom/naef/jnlua/JavaFunction;)V

    return-void
.end method
