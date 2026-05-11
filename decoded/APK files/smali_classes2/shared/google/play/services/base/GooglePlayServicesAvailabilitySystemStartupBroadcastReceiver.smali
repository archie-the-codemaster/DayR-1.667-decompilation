.class public Lshared/google/play/services/base/GooglePlayServicesAvailabilitySystemStartupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GooglePlayServicesAvailabilitySystemStartupBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->loadRecentStateHistory(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->getCurrentState()Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    move-result-object p2

    sget-object v0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_NEED_REBOOT:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    if-ne p2, v0, :cond_0

    .line 37
    sget-object p2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_REBOOT_COMPLETED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    invoke-static {p2}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->setState(Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;)V

    .line 40
    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstanceWithContext(Landroid/content/Context;)Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object p1

    invoke-virtual {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesAvailability()V

    :cond_0
    return-void
.end method
