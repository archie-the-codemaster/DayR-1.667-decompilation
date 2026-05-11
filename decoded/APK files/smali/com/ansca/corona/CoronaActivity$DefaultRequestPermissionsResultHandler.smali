.class Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultRequestPermissionsResultHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/naef/jnlua/LuaState;[Ljava/lang/String;)I
    .locals 0

    .line 3678
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;->createLuaTableFromStringArray(Lcom/naef/jnlua/LuaState;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static createLuaTableFromStringArray(Lcom/naef/jnlua/LuaState;[Ljava/lang/String;)I
    .locals 2

    .line 3687
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 3688
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 3690
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    add-int/lit8 v1, v1, 0x1

    .line 3694
    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public forwardRequestPermissionsResultToLua(Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V
    .locals 3

    .line 3707
    new-instance v0, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;-><init>(Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V

    const-string v1, "Corona"

    const-string v2, "Execute the lua listener task"

    .line 3771
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 3775
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/events/EventManager;->sendEvents()V

    .line 3776
    invoke-virtual {p1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getPermissionsSettings()Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    return-void
.end method

.method public onHandleRequestPermissionsResult(Lcom/ansca/corona/CoronaActivity;I[Ljava/lang/String;[I)V
    .locals 10

    .line 3782
    new-instance v0, Lcom/ansca/corona/permissions/PermissionsServices;

    invoke-direct {v0, p1}, Lcom/ansca/corona/permissions/PermissionsServices;-><init>(Landroid/content/Context;)V

    .line 3785
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3786
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3787
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3788
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3790
    :goto_0
    array-length v7, p3

    if-ge v6, v7, :cond_3

    .line 3793
    aget-object v7, p3, v6

    .line 3794
    invoke-virtual {v0, v7}, Lcom/ansca/corona/permissions/PermissionsServices;->isPartOfPAAppPermission(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3795
    invoke-virtual {v0, v7}, Lcom/ansca/corona/permissions/PermissionsServices;->getPAAppPermissionNameFromAndroidPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3799
    :cond_0
    aget v8, p4, v6

    if-nez v8, :cond_1

    .line 3801
    aget-object v8, p3, v6

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3803
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3804
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3805
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3809
    :cond_1
    aget-object v8, p3, v6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3811
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3812
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3813
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3819
    :cond_3
    invoke-virtual {p1, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterRequestPermissionsResultHandler(Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 3828
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_8

    .line 3829
    invoke-virtual {p3}, Lcom/ansca/corona/permissions/PermissionsSettings;->getUrgency()Lcom/ansca/corona/permissions/PermissionUrgency;

    move-result-object p4

    .line 3830
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3831
    invoke-virtual {p1, v1}, Lcom/ansca/corona/CoronaActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    .line 3833
    sget-object v6, Lcom/ansca/corona/permissions/PermissionUrgency;->LOW:Lcom/ansca/corona/permissions/PermissionUrgency;

    if-eq p4, v6, :cond_5

    if-eqz v2, :cond_5

    .line 3834
    invoke-virtual {p3}, Lcom/ansca/corona/permissions/PermissionsSettings;->needsService()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3837
    new-instance p4, Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    const/4 v6, 0x0

    move-object v2, p4

    move-object v3, p3

    move v7, p2

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;-><init>(Lcom/ansca/corona/permissions/PermissionsSettings;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    .line 3841
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    .line 3842
    invoke-virtual {p1, v1, p4}, Lcom/ansca/corona/Controller;->showPermissionRationaleAlert(Ljava/lang/String;Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V

    .line 3843
    invoke-virtual {p3}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    return-void

    :cond_5
    if-nez v2, :cond_4

    .line 3848
    sget-object v2, Lcom/ansca/corona/permissions/PermissionUrgency;->CRITICAL:Lcom/ansca/corona/permissions/PermissionUrgency;

    if-ne p4, v2, :cond_6

    .line 3851
    new-instance p4, Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    const/4 v6, 0x1

    move-object v2, p4

    move-object v3, p3

    move v7, p2

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;-><init>(Lcom/ansca/corona/permissions/PermissionsSettings;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    .line 3855
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaActivity;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    .line 3856
    invoke-virtual {p1, v1, p4}, Lcom/ansca/corona/Controller;->showSettingsRedirectForPermissionAlert(Ljava/lang/String;Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V

    .line 3857
    invoke-virtual {p3}, Lcom/ansca/corona/permissions/PermissionsSettings;->markAsServiced()V

    return-void

    :cond_6
    const/4 v1, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    move v6, v3

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    .line 3868
    :goto_3
    new-instance p4, Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    move-object v2, p4

    move-object v3, p3

    move v7, p2

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;-><init>(Lcom/ansca/corona/permissions/PermissionsSettings;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILcom/ansca/corona/CoronaActivity;Lcom/ansca/corona/CoronaActivity$OnRequestPermissionsResultHandler;)V

    .line 3870
    invoke-virtual {p0, p4}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;->forwardRequestPermissionsResultToLua(Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V

    :cond_9
    return-void
.end method
