.class Lplugin/admob/LuaLoader$Show;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/admob/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Show"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V
    .locals 0

    .line 1155
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$Show;-><init>(Lplugin/admob/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "show"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "admob.show(adType [, options ])"

    .line 1175
    invoke-static {v1}, Lplugin/admob/LuaLoader;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    iget-object v1, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v1}, Lplugin/admob/LuaLoader;->access$1700(Lplugin/admob/LuaLoader;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return v9

    .line 1182
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ERROR: "

    if-lt v1, v2, :cond_13

    const/4 v4, 0x2

    if-le v1, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    const-wide/16 v5, 0x0

    .line 1196
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    sget-object v7, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v1, v7, :cond_12

    .line 1197
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1205
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v1

    const/4 v10, 0x0

    const-string v11, "\'"

    if-nez v1, :cond_b

    .line 1206
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    sget-object v12, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v1, v12, :cond_a

    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    move-wide v12, v5

    move-object v5, v10

    move-object v6, v5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, -0x2

    .line 1209
    invoke-virtual {v0, v14}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "adUnitId"

    .line 1211
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v4, -0x1

    if-eqz v15, :cond_3

    .line 1212
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v6

    sget-object v14, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v6, v14, :cond_2

    .line 1213
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    .line 1216
    :cond_2
    iget-object v1, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.adUnitId (string) expected, got "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_3
    const-string v15, "y"

    .line 1220
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1223
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    sget-object v14, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v1, v14, :cond_4

    .line 1224
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v12

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 1226
    :cond_4
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    sget-object v10, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v1, v10, :cond_5

    .line 1227
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1230
    :cond_5
    iget-object v1, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.y (number) expected, got "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_6
    const-string v5, "bgColor"

    .line 1234
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1235
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v5

    sget-object v14, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v5, v14, :cond_7

    .line 1236
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 1208
    :goto_2
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/4 v4, 0x2

    goto/16 :goto_0

    .line 1239
    :cond_7
    iget-object v1, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.bgColor (string) expected, got "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 1244
    :cond_8
    iget-object v0, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_9
    move-object v2, v6

    move-wide/from16 v16, v12

    move-object v12, v5

    move-wide/from16 v5, v16

    goto :goto_3

    .line 1250
    :cond_a
    iget-object v1, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "options table expected, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_b
    move-object v2, v10

    move-object v12, v2

    const/4 v1, 0x0

    .line 1256
    :goto_3
    invoke-static {}, Lplugin/admob/LuaLoader;->access$900()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1257
    iget-object v0, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid adType \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_c
    const-string v0, "bottom"

    if-nez v1, :cond_d

    move-object v10, v0

    :cond_d
    if-eqz v10, :cond_e

    const-string v1, "top"

    .line 1267
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1268
    iget-object v0, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid yAlign \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_e
    if-eqz v12, :cond_10

    const-string v0, "#"

    .line 1274
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1275
    iget-object v0, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "options.bgColor: Invalid color string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Must start with \'#\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 1280
    :cond_f
    :try_start_0
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1283
    :catch_0
    iget-object v0, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "options.bgColor: Unknown color \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 1290
    :cond_10
    :goto_4
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v11

    double-to-int v6, v5

    if-eqz v11, :cond_11

    .line 1298
    new-instance v13, Lplugin/admob/LuaLoader$Show$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v7

    move-object v4, v11

    move-object v5, v10

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lplugin/admob/LuaLoader$Show$1;-><init>(Lplugin/admob/LuaLoader$Show;Ljava/lang/String;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v13}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_11
    return v9

    .line 1200
    :cond_12
    iget-object v1, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adType (string) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 1184
    :cond_13
    :goto_5
    iget-object v0, v8, Lplugin/admob/LuaLoader$Show;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 1 or 2 arguments, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method
