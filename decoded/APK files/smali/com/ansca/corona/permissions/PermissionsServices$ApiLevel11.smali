.class Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel11;
.super Ljava/lang/Object;
.source "PermissionsServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/permissions/PermissionsServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiLevel11"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializePreviouslyRequestedPermissions(Landroid/content/Context;)V
    .locals 3

    .line 1467
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel11;

    monitor-enter v0

    :try_start_0
    const-string v1, "CoronaPermissionsState"

    const/4 v2, 0x0

    .line 1469
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/ansca/corona/permissions/PermissionsServices;->access$002(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 1471
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$000()Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1473
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$000()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "PreviouslyRequestedPermissions"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/ansca/corona/permissions/PermissionsServices;->access$102(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 1477
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$100()Ljava/util/HashSet;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1478
    new-instance p0, Ljava/util/HashSet;

    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$100()Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/ansca/corona/permissions/PermissionsServices;->access$102(Ljava/util/HashSet;)Ljava/util/HashSet;

    goto :goto_0

    .line 1480
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Lcom/ansca/corona/permissions/PermissionsServices;->access$102(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 1483
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updatePreviouslyRequestedPermissions(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1491
    const-class v0, Lcom/ansca/corona/permissions/PermissionsServices$ApiLevel11;

    monitor-enter v0

    .line 1493
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1494
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$100()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1495
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$100()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1500
    :cond_1
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$000()Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1501
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$000()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "PreviouslyRequestedPermissions"

    .line 1502
    invoke-static {}, Lcom/ansca/corona/permissions/PermissionsServices;->access$100()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1503
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1505
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
