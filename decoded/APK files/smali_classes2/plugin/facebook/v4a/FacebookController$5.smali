.class final Lplugin/facebook/v4a/FacebookController$5;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController;->verifySetup(Lcom/ansca/corona/CoronaActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$facebookAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookController$5;->val$activity:Lcom/ansca/corona/CoronaActivity;

    iput-object p2, p0, Lplugin/facebook/v4a/FacebookController$5;->val$facebookAppId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 497
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookController$5;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0, v0}, Lcom/ansca/corona/CoronaActivity;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ERROR: Invalid Facebook App ID"

    .line 498
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To develop for Facebook Connect, you need to get a Facebook App ID and integrate it into your Corona project.\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lplugin/facebook/v4a/FacebookController$5;->val$facebookAppId:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "missing"

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lplugin/facebook/v4a/FacebookController$5$3;

    invoke-direct {v1, p0}, Lplugin/facebook/v4a/FacebookController$5$3;-><init>(Lplugin/facebook/v4a/FacebookController$5;)V

    const-string v2, "Get App ID"

    .line 500
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lplugin/facebook/v4a/FacebookController$5$2;

    invoke-direct {v1, p0}, Lplugin/facebook/v4a/FacebookController$5$2;-><init>(Lplugin/facebook/v4a/FacebookController$5;)V

    const-string v2, "Integrate in Corona"

    .line 514
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lplugin/facebook/v4a/FacebookController$5$1;

    invoke-direct {v1, p0}, Lplugin/facebook/v4a/FacebookController$5$1;-><init>(Lplugin/facebook/v4a/FacebookController$5;)V

    .line 530
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 537
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 538
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
