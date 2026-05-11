.class Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;
.super Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;
.source "GoogleCloudMessagingServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegisterOperation"
.end annotation


# instance fields
.field private fProjectNumbers:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;-><init>()V

    if-eqz p1, :cond_0

    .line 602
    iput-object p1, p0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->fProjectNumbers:Ljava/lang/String;

    return-void

    .line 600
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getProjectNumbers()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->fProjectNumbers:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 617
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gsf"

    .line 624
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 627
    invoke-static {v0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "app"

    .line 625
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 628
    iget-object v2, p0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->fProjectNumbers:Ljava/lang/String;

    const-string v3, "sender"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
