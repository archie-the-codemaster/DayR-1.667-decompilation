.class public Lshared/google/play/services/base/PackageStateChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageStateChangedBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.android.gms"

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.vending"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 39
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 42
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getActivityResultHandler()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 46
    :cond_1
    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstanceWithContext(Landroid/content/Context;)Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->isExemptFromGooglePlayServicesAvailabilityHandling()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 48
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->dispatchSharedGooglePlayServicesBaseEvent()V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesAvailability()V

    :cond_3
    :goto_0
    return-void
.end method
