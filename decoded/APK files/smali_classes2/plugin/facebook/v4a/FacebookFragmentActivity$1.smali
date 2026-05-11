.class Lplugin/facebook/v4a/FacebookFragmentActivity$1;
.super Ljava/lang/Object;
.source "FacebookFragmentActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookFragmentActivity;->pushFriendSelection(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

.field final synthetic val$friendsSelection:Ljava/util/List;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FacebookFragmentActivity;Ljava/util/List;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    iput-object p2, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->val$friendsSelection:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pushGraphUser(Lcom/naef/jnlua/LuaState;Lorg/json/JSONObject;I)V
    .locals 4

    const-string v0, "id"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 107
    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 112
    :try_start_0
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    const-string v2, "name"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    invoke-static {v1, p1, v2, v3}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2, v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Corona"

    const-string v1, "Facebook pushGraphUser: JSON error"

    .line 115
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p2, -0x2

    .line 117
    invoke-virtual {p1, p2, p3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->val$friendsSelection:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$000(Lplugin/facebook/v4a/FacebookFragmentActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "friends"

    .line 80
    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->val$friendsSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->val$friendsSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 90
    invoke-direct {p0, p1, v4, v3}, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->pushGraphUser(Lcom/naef/jnlua/LuaState;Lorg/json/JSONObject;I)V

    add-int/2addr v3, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    const-string v1, "data"

    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 97
    :try_start_0
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$000(Lplugin/facebook/v4a/FacebookFragmentActivity;)I

    move-result v0

    invoke-static {p1, v0, v2}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V

    .line 98
    iget-object v0, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$1;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$000(Lplugin/facebook/v4a/FacebookFragmentActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Corona"

    const-string v1, "Facebook pushFriendSelection: failed to dispatch event"

    .line 100
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
