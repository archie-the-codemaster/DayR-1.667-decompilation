.class Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshared/google/play/services/base/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleGooglePlayServicesAvailabilityWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lshared/google/play/services/base/LuaLoader$1;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "handleGooglePlayServicesAvailability"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    const-string v0, "ERROR: "

    const-string v1, "Corona"

    const-string v2, "LuaLoader.HandleGooglePlayServicesAvailabilityWrapper.invoke()"

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": the Lua state has died! Abort!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object p1

    invoke-virtual {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->isExemptFromGooglePlayServicesAvailabilityHandling()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->dispatchSharedGooglePlayServicesBaseEvent()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getTargetedAppStoreName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "google"

    .line 155
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object p1

    invoke-virtual {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesAvailability()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p1

    if-nez p1, :cond_3

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot continue without a CoronaActivity. User action (hitting the back button) or another thread may have destroyed it."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper$1;

    invoke-direct {v0, p0}, Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper$1;-><init>(Lshared/google/play/services/base/LuaLoader$HandleGooglePlayServicesAvailabilityWrapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
