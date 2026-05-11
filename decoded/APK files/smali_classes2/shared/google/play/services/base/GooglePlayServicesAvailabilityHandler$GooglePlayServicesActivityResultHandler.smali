.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GooglePlayServicesActivityResultHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$1;)V
    .locals 0

    .line 958
    invoke-direct {p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleActivityResult(Lcom/ansca/corona/CoronaActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 965
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)V

    .line 968
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object p1

    invoke-virtual {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesAvailability()V

    return-void
.end method
