.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4$1;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;


# direct methods
.method constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4$1;->this$1:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 616
    sget-object p1, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->ENV_REBOOT_COMPLETED:Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;

    invoke-static {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;->setState(Lshared/google/play/services/base/GooglePlayServicesAvailabilityState;)V

    .line 621
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getInstance()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    move-result-object p1

    invoke-virtual {p1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesAvailability()V

    return-void
.end method
