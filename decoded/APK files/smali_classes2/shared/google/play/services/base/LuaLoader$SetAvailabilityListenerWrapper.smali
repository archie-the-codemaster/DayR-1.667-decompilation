.class Lshared/google/play/services/base/LuaLoader$SetAvailabilityListenerWrapper;
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
    name = "SetAvailabilityListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/LuaLoader;


# direct methods
.method private constructor <init>(Lshared/google/play/services/base/LuaLoader;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lshared/google/play/services/base/LuaLoader$SetAvailabilityListenerWrapper;->this$0:Lshared/google/play/services/base/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lshared/google/play/services/base/LuaLoader;Lshared/google/play/services/base/LuaLoader$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lshared/google/play/services/base/LuaLoader$SetAvailabilityListenerWrapper;-><init>(Lshared/google/play/services/base/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "setAvailabilityListener"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shared.google.play.services.base."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lshared/google/play/services/base/LuaLoader$SetAvailabilityListenerWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {}, Lshared/google/play/services/base/LuaLoader;->access$300()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v1

    const-string v2, "ERROR: "

    const-string v3, "Corona"

    if-nez v1, :cond_0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot continue without a CoronaRuntime. User action or another thread may have destroyed it."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string v4, "sharedGooglePlayServicesBase"

    .line 101
    invoke-static {p1, v1, v4}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object v0

    .line 103
    invoke-static {}, Lshared/google/play/services/base/LuaLoader;->access$300()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->setSharedGooglePlayServicesBaseEventListener(Lcom/ansca/corona/CoronaRuntime;I)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Please provide a listener."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
