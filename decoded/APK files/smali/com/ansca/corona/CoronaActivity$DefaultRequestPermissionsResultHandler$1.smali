.class Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;->forwardRequestPermissionsResultToLua(Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;

.field final synthetic val$data:Lcom/ansca/corona/permissions/RequestPermissionsResultData;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;Lcom/ansca/corona/permissions/RequestPermissionsResultData;)V
    .locals 0

    .line 3707
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;->this$0:Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;->val$data:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 7

    .line 3712
    :try_start_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    .line 3715
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;->val$data:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    invoke-virtual {v0}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getPermissionsSettings()Lcom/ansca/corona/permissions/PermissionsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/permissions/PermissionsSettings;->getListener()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_4

    if-eqz v0, :cond_4

    const-string v1, "popup"

    .line 3718
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    const-string v1, "appPermissionRequest"

    .line 3721
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const-string v1, "type"

    const/4 v2, -0x2

    .line 3722
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 3726
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;->val$data:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getGrantedPermissions()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "grantedAppPermissions"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 3728
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 3729
    array-length v5, v1

    const-class v6, [Ljava/lang/String;

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;->access$1100(Lcom/naef/jnlua/LuaState;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 3731
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_0

    .line 3735
    :cond_0
    invoke-virtual {p1, v4, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 3736
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 3740
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;->val$data:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getDeniedPermissions()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "deniedAppPermissions"

    if-eqz v1, :cond_2

    .line 3742
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 3743
    array-length v5, v1

    const-class v6, [Ljava/lang/String;

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler;->access$1100(Lcom/naef/jnlua/LuaState;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 3745
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_1

    .line 3749
    :cond_2
    invoke-virtual {p1, v4, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 3750
    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 3754
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$DefaultRequestPermissionsResultHandler$1;->val$data:Lcom/ansca/corona/permissions/RequestPermissionsResultData;

    invoke-virtual {v1}, Lcom/ansca/corona/permissions/RequestPermissionsResultData;->getUserHitNeverAskAgain()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    const-string v1, "neverAskAgain"

    .line 3755
    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 3758
    invoke-static {p1, v0, v4}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V

    goto :goto_2

    :cond_4
    const-string p1, "Corona"

    const-string v0, "ERROR: CoronaActivity.DefaultRequestPermissiosnResultHandler.forwardRequestPermissionsResultToLua():Cannot forward results to Lua as no registry ID was found!"

    .line 3760
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3765
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
