.class Lcom/ansca/corona/Controller$9;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showSettingsRedirectForPermissionAlert(Ljava/lang/String;Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$requestPermissionsResultData:Lcom/ansca/corona/permissions/RequestPermissionsResultData;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/permissions/RequestPermissionsResultData;Ljava/lang/String;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Lcom/ansca/corona/Controller$9;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$9;->val$requestPermissionsResultData:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    iput-object p3, p0, Lcom/ansca/corona/Controller$9;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1320
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$9;->val$requestPermissionsResultData:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getPermissionsSettings()Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object v1

    .line 1327
    iget-object v2, p0, Lcom/ansca/corona/Controller$9;->this$0:Lcom/ansca/corona/Controller;

    invoke-virtual {v2, v0}, Lcom/ansca/corona/Controller;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1328
    new-instance v3, Lcom/ansca/corona/Controller$9$1;

    invoke-direct {v3, p0, v0}, Lcom/ansca/corona/Controller$9$1;-><init>(Lcom/ansca/corona/Controller$9;Lcom/ansca/corona/CoronaActivity;)V

    .line 1341
    new-instance v4, Lcom/ansca/corona/Controller$9$2;

    invoke-direct {v4, p0}, Lcom/ansca/corona/Controller$9$2;-><init>(Lcom/ansca/corona/Controller$9;)V

    .line 1354
    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->getSettingsRedirectTitle()Ljava/lang/String;

    move-result-object v5

    .line 1355
    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->getSettingsRedirectDescription()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eqz v5, :cond_1

    .line 1356
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v6, :cond_1

    .line 1357
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1360
    :cond_1
    new-instance v8, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v8, v0}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 1363
    iget-object v0, p0, Lcom/ansca/corona/Controller$9;->val$permission:Ljava/lang/String;

    .line 1364
    invoke-virtual {v8, v0}, Lcom/ansca/corona/permissions/PermissionsServices;->isPartOfPAAppPermission(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/ansca/corona/Controller$9;->val$permission:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/ansca/corona/permissions/PermissionsServices;->getPAAppPermissionNameFromAndroidPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    :cond_2
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_3

    .line 1372
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1373
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Access To "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is Critical!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ansca/corona/permissions/PermissionsSettings;->setSettingsRedirectTitle(Ljava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_5

    .line 1375
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1376
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cannot continue!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Please enable access to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in App Settings."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ansca/corona/permissions/PermissionsSettings;->setSettingsRedirectDescription(Ljava/lang/String;)V

    .line 1381
    :cond_6
    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->getSettingsRedirectTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1382
    invoke-virtual {v1}, Lcom/ansca/corona/permissions/PermissionsSettings;->getSettingsRedirectDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Settings"

    .line 1383
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1384
    iget-object v0, p0, Lcom/ansca/corona/Controller$9;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/storage/ResourceServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1385
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 1386
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1387
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
