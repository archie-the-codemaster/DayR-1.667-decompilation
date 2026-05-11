.class Lcom/ansca/corona/Controller$11;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showPermissionGroupMissingFromManifestAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$permissionGroup:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Ljava/lang/String;)V
    .locals 0

    .line 1427
    iput-object p1, p0, Lcom/ansca/corona/Controller$11;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$11;->val$permissionGroup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1430
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1435
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$11;->this$0:Lcom/ansca/corona/Controller;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/Controller;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1436
    new-instance v1, Lcom/ansca/corona/Controller$11$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$11$1;-><init>(Lcom/ansca/corona/Controller$11;)V

    .line 1444
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    .line 1446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tried to request access to a permission group"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without having any permissions from that group in build.settings/AndroidManifest.xml!\n\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Before requesting access, please add a permission from the "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ansca/corona/Controller$11;->val$permissionGroup:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission group!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Corona"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Corona: Developer Error"

    .line 1452
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1453
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1454
    iget-object v2, p0, Lcom/ansca/corona/Controller$11;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v2}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/storage/ResourceServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Learn More"

    .line 1455
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 1457
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1458
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
