.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayServicesUserResolvableError(Lcom/ansca/corona/CoronaActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

.field final synthetic val$appResources:Landroid/content/res/Resources;

.field final synthetic val$availabilityChecker:Lcom/google/android/gms/common/GoogleApiAvailability;

.field final synthetic val$googlePlayServicesStatus:I


# direct methods
.method constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/google/android/gms/common/GoogleApiAvailability;ILandroid/content/res/Resources;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iput-object p2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$availabilityChecker:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput p3, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$googlePlayServicesStatus:I

    iput-object p4, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$appResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 766
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 771
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getActivityResultHandler()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    move-result-object v1

    .line 770
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v1

    .line 774
    iget-object v2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$availabilityChecker:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget v3, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$googlePlayServicesStatus:I

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 778
    iget v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$googlePlayServicesStatus:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 781
    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$appResources:Landroid/content/res/Resources;

    sget v4, Lshared/google/play/services/base/R$string;->common_google_play_services_install_text_device:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 782
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 781
    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    .line 785
    iget-object v2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$appResources:Landroid/content/res/Resources;

    sget v4, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_exit_button:I

    .line 786
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lshared/google/play/services/base/OnExitClickListener;

    invoke-direct {v4}, Lshared/google/play/services/base/OnExitClickListener;-><init>()V

    .line 785
    invoke-virtual {v0, v1, v2, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 791
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 792
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 795
    invoke-static {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 796
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 799
    :cond_2
    iget-object v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iget v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$5;->val$googlePlayServicesStatus:I

    invoke-static {v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$600(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;I)V

    :goto_1
    return-void
.end method
