.class Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel23;
.super Ljava/lang/Object;
.source "PermissionsServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/permissions/PermissionsServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermissions(Lcom/ansca/corona/permissions/PermissionsSettings;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/PermissionsServices;)V
    .locals 7

    const-string v0, "Corona"

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1542
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "PermissionServices.ApiLevel23.requestPermissions(): Cannot request permissions with null CoronaActivity!"

    .line 1544
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1548
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/permissions/PermissionsSettings;->getPermissions()Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1549
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1556
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1557
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1558
    sget-object v5, Lcom/ansca/corona/permissions/PermissionsServices$1;->$SwitchMap$com$ansca$corona$permissions$PermissionState:[I

    invoke-virtual {p2, v4}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ansca/corona/permissions/PermissionState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 1561
    :cond_3
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object p0

    .line 1562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot request "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because it\'s missing from the build.settings/AndroidManifest.xml!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Lcom/ansca/corona/CoronaActivity;->showPermissionMissingFromManifestAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1565
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1574
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p0, "PermissionServices.ApiLevel23.requestPermissions(): All permissions that were requested have already been granted!"

    .line 1575
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1579
    :cond_6
    invoke-static {v3}, Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel11;->updatePreviouslyRequestedPermissions(Ljava/util/HashSet;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 1581
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1582
    invoke-virtual {v1, p1, p0}, Lcom/ansca/corona/CoronaActivity;->registerRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/PermissionsSettings;)I

    move-result p0

    .line 1581
    invoke-virtual {v1, p2, p0}, Lcom/ansca/corona/CoronaActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_7
    :goto_1
    const-string p0, "PermissionServices.ApiLevel23.requestPermissions(): No permissions to request!"

    .line 1551
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_2
    const-string p0, "WARNING: PermissionServices.ApiLevel23.requestPermissions(): Invalid arguments!"

    .line 1537
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shouldNeverAskAgain(Ljava/lang/String;Lcom/ansca/corona/permissions/PermissionsServices;)Z
    .locals 4

    .line 1593
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel23;

    monitor-enter v0

    .line 1594
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p0, "Corona"

    const-string p1, "PermissionServices.ApiLevel23.shouldNeverAskAgain(): CoronaActivity is null!"

    .line 1596
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    monitor-exit v0

    return v2

    .line 1599
    :cond_0
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$100()Ljava/util/HashSet;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "Corona"

    const-string p1, "PermissionServices.ApiLevel23.shouldNeverAskAgain(): Requested Permissions cache hasn\'t been initialized!"

    .line 1600
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    monitor-exit v0

    return v2

    .line 1604
    :cond_1
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$100()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1605
    invoke-virtual {p1, p0}, Lcom/ansca/corona/permissions/PermissionsServices;->getPermissionStateFor(Ljava/lang/String;)Lcom/ansca/corona/permissions/PermissionState;

    move-result-object p1

    sget-object v3, Lcom/ansca/corona/permissions/PermissionState;->DENIED:Lcom/ansca/corona/permissions/PermissionState;

    if-ne p1, v3, :cond_2

    .line 1606
    invoke-virtual {v1, p0}, Lcom/ansca/corona/CoronaActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 1607
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
