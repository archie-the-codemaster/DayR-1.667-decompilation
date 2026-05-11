.class Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;
.super Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;
.source "GoogleCloudMessagingServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnregisterOperation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 637
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 644
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 650
    :cond_0
    new-instance v1, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v1, v0}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    .line 652
    invoke-virtual {v1, v2}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v1

    sget-object v2, Lcom/ansca/corona/permissions/PermissionState;->GRANTED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne v1, v2, :cond_1

    .line 654
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gsf"

    .line 655
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 658
    invoke-static {v0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "app"

    .line 656
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 659
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method
