.class Lplugin/facebook/v4a/FacebookFragmentActivity$2;
.super Ljava/lang/Object;
.source "FacebookFragmentActivity.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugin/facebook/v4a/FacebookFragmentActivity;->pushPlaceSelection(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

.field final synthetic val$placeSelection:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lplugin/facebook/v4a/FacebookFragmentActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    iput-object p2, p0, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->val$placeSelection:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "longitude"

    const-string v2, "latitude"

    const-string v3, "zip"

    const-string v4, "street"

    const-string v5, "state"

    const-string v6, "country"

    const-string v7, "city"

    const-string v8, "name"

    const-string v9, "id"

    const-string v10, "category"

    const-string v11, "Corona"

    if-eqz p1, :cond_1

    .line 127
    iget-object v12, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->val$placeSelection:Lorg/json/JSONObject;

    if-eqz v12, :cond_1

    iget-object v12, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v12}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$000(Lplugin/facebook/v4a/FacebookFragmentActivity;)I

    move-result v12

    if-lez v12, :cond_1

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v13, "place"

    .line 130
    invoke-static {v12, v13}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    const/16 v13, 0xb

    const/4 v14, 0x0

    .line 133
    invoke-virtual {v12, v14, v13}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    const/4 v13, -0x2

    .line 137
    :try_start_0
    iget-object v15, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    iget-object v14, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->val$placeSelection:Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 137
    invoke-static {v15, v12, v14, v10}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v10, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    iget-object v14, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->val$placeSelection:Lorg/json/JSONObject;

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v12, v14, v9}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v9, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    iget-object v10, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->val$placeSelection:Lorg/json/JSONObject;

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v12, v10, v8}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v8, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->val$placeSelection:Lorg/json/JSONObject;

    const-string v9, "location"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 145
    iget-object v9, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v12, v10, v7}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v7, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v12, v9, v6}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v6, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v12, v7, v5}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v5, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v12, v6, v4}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v12, v5, v3}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$100(Lplugin/facebook/v4a/FacebookFragmentActivity;Lcom/naef/jnlua/LuaState;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 152
    invoke-virtual {v12, v13, v2}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 154
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 155
    invoke-virtual {v12, v13, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Facebook pushPlaceSelection: JSON error"

    .line 158
    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v0, "data"

    .line 161
    invoke-virtual {v12, v13, v0}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 164
    :try_start_1
    iget-object v0, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$000(Lplugin/facebook/v4a/FacebookFragmentActivity;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v12, v0, v2}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V

    .line 165
    iget-object v0, v1, Lplugin/facebook/v4a/FacebookFragmentActivity$2;->this$0:Lplugin/facebook/v4a/FacebookFragmentActivity;

    invoke-static {v0}, Lplugin/facebook/v4a/FacebookFragmentActivity;->access$000(Lplugin/facebook/v4a/FacebookFragmentActivity;)I

    move-result v0

    invoke-static {v12, v0}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Facebook pushPlaceSelection: failed to dispatch event"

    .line 167
    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
