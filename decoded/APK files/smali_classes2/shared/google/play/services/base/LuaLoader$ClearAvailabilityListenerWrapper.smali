.class Lshared/google/play/services/base/LuaLoader$ClearAvailabilityListenerWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshared/google/play/services/base/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAvailabilityListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/LuaLoader;


# direct methods
.method private constructor <init>(Lshared/google/play/services/base/LuaLoader;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lshared/google/play/services/base/LuaLoader$ClearAvailabilityListenerWrapper;->this$0:Lshared/google/play/services/base/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lshared/google/play/services/base/LuaLoader;Lshared/google/play/services/base/LuaLoader$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lshared/google/play/services/base/LuaLoader$ClearAvailabilityListenerWrapper;-><init>(Lshared/google/play/services/base/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "clearAvailabilityListener"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 2

    .line 122
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getSharedGooglePlayServicesBaseEventListener()I

    move-result v1

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 124
    invoke-virtual {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->clearSharedGooglePlayServicesBaseEventListener()V

    const/4 p1, 0x0

    return p1
.end method
