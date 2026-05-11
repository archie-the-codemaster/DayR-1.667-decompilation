.class Lcom/ansca/corona/Controller$7;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showStoreDeprecatedAlert()V
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

    .line 1207
    iput-object p1, p0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1210
    iget-object v0, p0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$300(Lcom/ansca/corona/Controller;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1215
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/Controller;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1216
    new-instance v1, Lcom/ansca/corona/Controller$7$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$7$1;-><init>(Lcom/ansca/corona/Controller$7;)V

    const-string v2, "store.* library removed on Android"

    .line 1222
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Due to Google removing In-App Billing Version 2 in January 2015, the Corona store.* library on Android is no longer active.\n\nPlease migrate to the Google IAP V3 plugin.\n\nSee our IAP Guide for more info."

    .line 1223
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1226
    iget-object v2, p0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

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

    .line 1227
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1228
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
