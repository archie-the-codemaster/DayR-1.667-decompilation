.class Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;
.super Ljava/lang/Object;
.source "GooglePlayServicesAvailabilityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->handleNeedingReboot(Lcom/ansca/corona/CoronaActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

.field final synthetic val$bootCompletePermissionState:Lcom/ansca/corona/permissions/PermissionState;

.field final synthetic val$needRebootText:Ljava/lang/String;

.field final synthetic val$needRebootTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Ljava/lang/String;Ljava/lang/String;Lcom/ansca/corona/permissions/PermissionState;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iput-object p2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootTitle:Ljava/lang/String;

    iput-object p3, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootText:Ljava/lang/String;

    iput-object p4, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$bootCompletePermissionState:Lcom/ansca/corona/permissions/PermissionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 592
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 593
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 596
    invoke-virtual {v0, v0}, Lcom/ansca/corona/CoronaActivity;->createLightAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 601
    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 604
    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$bootCompletePermissionState:Lcom/ansca/corona/permissions/PermissionState;

    sget-object v2, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v1, v2, :cond_0

    .line 606
    sget v1, Lshared/google/play/services/base/R$string;->shared_google_play_services_base_exit_button:I

    new-instance v2, Lshared/google/play/services/base/OnExitClickListener;

    invoke-direct {v2}, Lshared/google/play/services/base/OnExitClickListener;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v1, 0x104000a

    .line 611
    new-instance v2, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4$1;

    invoke-direct {v2, p0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4$1;-><init>(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 628
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 629
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 630
    invoke-static {v0}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 631
    invoke-static {}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 633
    :cond_1
    iget-object v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootTitle:Ljava/lang/String;

    iget-object v2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$500(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :cond_2
    iget-object v0, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->this$0:Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;

    iget-object v1, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootTitle:Ljava/lang/String;

    iget-object v2, p0, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler$4;->val$needRebootText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;->access$500(Lshared/google/play/services/base/GooglePlayServicesAvailabilityHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
