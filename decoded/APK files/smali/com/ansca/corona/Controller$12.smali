.class Lcom/ansca/corona/Controller$12;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showLocationPermissionsMissingFromManifestAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 0

    .line 1468
    iput-object p1, p0, Lcom/ansca/corona/Controller$12;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1471
    iget-object v0, p0, Lcom/ansca/corona/Controller$12;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$300(Lcom/ansca/corona/Controller;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "This application does not have permission to read your current location.\n\nEnsure that your app is using at least one of the following permissions:\n - ACCESS_COARSE_LOCATION\n - ACCESS_FINE_LOCATION"

    .line 1479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Corona"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v2, p0, Lcom/ansca/corona/Controller$12;->this$0:Lcom/ansca/corona/Controller;

    invoke-virtual {v2, v0}, Lcom/ansca/corona/Controller;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Corona: Developer Error"

    .line 1482
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1483
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1484
    iget-object v1, p0, Lcom/ansca/corona/Controller$12;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/storage/ResourceServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/storage/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
