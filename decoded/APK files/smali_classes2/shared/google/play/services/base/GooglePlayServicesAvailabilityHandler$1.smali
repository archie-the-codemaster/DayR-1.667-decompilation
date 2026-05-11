.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesAvailability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;


# direct methods
.method constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
