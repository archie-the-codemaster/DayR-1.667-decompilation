.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleGooglePlayStoreState(Lcom/ansca/corona/CoronaActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

.field final synthetic val$googlePlayPackageState:Lcom/ansca/corona/storage/PackageState;


# direct methods
.method constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/ansca/corona/storage/PackageState;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iput-object p2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->val$googlePlayPackageState:Lcom/ansca/corona/storage/PackageState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 456
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->getActivityResultHandler()Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$GooglePlayServicesActivityResultHandler;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->registerActivityResultHandler(Lcom/ansca/corona/CoronaActivity$OnActivityResultHandler;)I

    move-result v1

    .line 465
    iget-object v2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iget-object v3, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->val$googlePlayPackageState:Lcom/ansca/corona/storage/PackageState;

    invoke-static {v2, v0, v3, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$200(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/storage/PackageState;I)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 469
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->val$googlePlayPackageState:Lcom/ansca/corona/storage/PackageState;

    invoke-static {v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$400(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/ansca/corona/storage/PackageState;)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$3;->val$googlePlayPackageState:Lcom/ansca/corona/storage/PackageState;

    invoke-static {v0, v1}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$400(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Lcom/ansca/corona/storage/PackageState;)V

    :goto_0
    return-void
.end method
