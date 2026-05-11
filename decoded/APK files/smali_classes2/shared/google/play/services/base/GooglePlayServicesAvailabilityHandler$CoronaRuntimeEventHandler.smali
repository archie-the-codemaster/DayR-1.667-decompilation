.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$CoronaRuntimeEventHandler;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaRuntimeEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;


# direct methods
.method private constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$CoronaRuntimeEventHandler;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;)V
    .locals 0

    .line 973
    invoke-direct {p0, p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$CoronaRuntimeEventHandler;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;)V

    return-void
.end method


# virtual methods
.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    .line 1030
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object p1

    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$700(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;)V

    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0

    return-void
.end method
