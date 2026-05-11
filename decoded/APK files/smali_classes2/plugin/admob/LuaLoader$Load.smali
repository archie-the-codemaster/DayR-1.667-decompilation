.class Lplugin/admob/LuaLoader$Load;
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
    name = "Load"
.end annotation


# instance fields
.field final synthetic this$0:Lplugin/admob/LuaLoader;


# direct methods
.method private constructor <init>(Lplugin/admob/LuaLoader;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lplugin/admob/LuaLoader;Lplugin/admob/LuaLoader$1;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1}, Lplugin/admob/LuaLoader$Load;-><init>(Lplugin/admob/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "load"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "admob.load(adType, options)"

    .line 648
    invoke-static {v1}, Lplugin/admob/LuaLoader;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 650
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    invoke-static {v1}, Lplugin/admob/LuaLoader;->access$1700(Lplugin/admob/LuaLoader;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return v7

    .line 655
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "ERROR: "

    if-eq v1, v2, :cond_1

    .line 657
    iget-object v0, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 2 arguments, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 667
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    .line 671
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v5

    sget-object v8, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v5, v8, :cond_1d

    .line 672
    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 680
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    sget-object v9, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v8, v9, :cond_1c

    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v8, 0x0

    move-object v12, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v14

    const-string v15, "testMode"

    const-string v2, "\'"

    if-eqz v14, :cond_11

    const/4 v14, -0x2

    .line 683
    invoke-virtual {v0, v14}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v4, "adUnitId"

    .line 685
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, -0x1

    if-eqz v4, :cond_3

    .line 686
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v4, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, v4, :cond_2

    .line 687
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 690
    :cond_2
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "options.adUnitId (string) expected, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_3
    const-string v4, "childSafe"

    .line 694
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 695
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v4, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v2, v4, :cond_4

    .line 696
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    move v13, v2

    goto :goto_1

    .line 699
    :cond_4
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "options.childSafe (boolean) expected, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_5
    const-string v4, "designedForFamilies"

    .line 703
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 704
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v4, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v2, v4, :cond_6

    .line 705
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    move v11, v2

    goto :goto_1

    .line 708
    :cond_6
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "options.designedForFamilies (boolean) expected, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_7
    const-string v4, "keywords"

    .line 712
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 713
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v4, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v2, v4, :cond_b

    .line 715
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v2

    if-lez v2, :cond_a

    const/4 v4, 0x1

    :goto_2
    if-gt v4, v2, :cond_9

    .line 720
    invoke-virtual {v0, v7, v4}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    .line 723
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v14

    sget-object v15, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v14, v15, :cond_8

    .line 724
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    .line 730
    invoke-virtual {v0, v14}, Lcom/naef/jnlua/LuaState;->pop(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 727
    :cond_8
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.keywords["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] (string) expected, got: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    .line 734
    iget-object v0, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "options.keywords table cannot be empty"

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_b
    const/4 v2, 0x0

    .line 739
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options.keywords (table) expected, got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 743
    :cond_c
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 744
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v4, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v2, v4, :cond_d

    .line 745
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    move v10, v2

    const/4 v2, 0x1

    const/4 v9, 0x1

    goto :goto_3

    .line 749
    :cond_d
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "options.testMode (boolean) expected, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_e
    const-string v4, "hasUserConsent"

    .line 753
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 754
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    sget-object v4, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v2, v4, :cond_f

    .line 755
    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_1

    .line 682
    :goto_3
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 758
    :cond_f
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "options.hasUserConsent expected (boolean). Got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x0

    .line 763
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid option \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_11
    const/4 v0, 0x0

    if-nez v8, :cond_12

    .line 775
    iget-object v1, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    const-string v2, "options.adUnitId is required"

    invoke-static {v1, v3, v2}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 780
    :cond_12
    invoke-static {}, Lplugin/admob/LuaLoader;->access$900()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 781
    iget-object v0, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid adType \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 786
    :cond_13
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 789
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v9, :cond_14

    if-nez v4, :cond_14

    .line 794
    iget-object v0, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    const-string v1, "testMode should be specified during init(). Please remove from load()"

    invoke-static {v0, v3, v1}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_14
    if-eqz v9, :cond_15

    if-nez v10, :cond_16

    :cond_15
    if-nez v9, :cond_17

    if-eqz v4, :cond_17

    .line 799
    :cond_16
    invoke-static {}, Lplugin/admob/LuaLoader;->access$700()Ljava/util/Map;

    move-result-object v3

    const-string v4, "testDevice"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 800
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin.admob: Test mode active for device \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Corona"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_17
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v11, :cond_18

    const-string v3, "is_designed_for_families"

    const/4 v4, 0x1

    .line 807
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_18
    if-eqz v12, :cond_19

    .line 809
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "npa"

    const-string v4, "1"

    .line 810
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_19
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    const/4 v2, 0x0

    .line 817
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-lt v3, v4, :cond_1a

    .line 818
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move v2, v4

    goto :goto_4

    :cond_1a
    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 822
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 823
    invoke-virtual {v0, v13}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 825
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v7

    .line 828
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 834
    new-instance v10, Lplugin/admob/LuaLoader$Load$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v9

    move-object v4, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lplugin/admob/LuaLoader$Load$1;-><init>(Lplugin/admob/LuaLoader$Load;Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v9, v10}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1b
    const/4 v1, 0x0

    return v1

    :cond_1c
    const/4 v1, 0x0

    .line 769
    iget-object v2, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options table expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1d
    const/4 v1, 0x0

    .line 675
    iget-object v2, v6, Lplugin/admob/LuaLoader$Load;->this$0:Lplugin/admob/LuaLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adType (string) expected, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lplugin/admob/LuaLoader;->access$1300(Lplugin/admob/LuaLoader;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
