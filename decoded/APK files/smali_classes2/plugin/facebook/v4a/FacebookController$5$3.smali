.class Lplugin/facebook/v4a/FacebookController$5$3;
.super Ljava/lang/Object;
.source "FacebookController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/FacebookController$5;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FacebookController$5;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookController$5$3;->this$0:Lplugin/facebook/v4a/FacebookController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "https://developers.facebook.com/"

    .line 504
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 506
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 507
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 508
    iget-object p1, p0, Lplugin/facebook/v4a/FacebookController$5$3;->this$0:Lplugin/facebook/v4a/FacebookController$5;

    iget-object p1, p1, Lplugin/facebook/v4a/FacebookController$5;->val$activity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {p1, p2}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    .line 511
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
