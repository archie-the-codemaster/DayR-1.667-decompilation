.class Lnetwork/NetworkRequest$NetworkRequestParameters;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestParameters"
.end annotation


# instance fields
.field public bBodyIsText:Ljava/lang/Boolean;

.field public bHandleRedirects:Ljava/lang/Boolean;

.field public callback:Lnetwork/NetworkRequest$LuaCallback;

.field public isDebug:Ljava/lang/Boolean;

.field public method:Ljava/lang/String;

.field public progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

.field public requestBody:Ljava/lang/Object;

.field public requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestURL:Ljava/net/URL;

.field public response:Lnetwork/NetworkRequest$CoronaFileSpec;

.field public successNotificationSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

.field final synthetic this$0:Lnetwork/NetworkRequest;

.field public timeout:I


# direct methods
.method private constructor <init>(Lnetwork/NetworkRequest;)V
    .locals 2

    .line 692
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    .line 695
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    .line 696
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 697
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    .line 698
    sget-object v0, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    const/4 v0, 0x1

    .line 699
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    .line 700
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    const/16 v1, 0x1e

    .line 701
    iput v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    const/4 v1, 0x0

    .line 702
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    .line 703
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    .line 704
    iput-object p1, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->successNotificationSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 705
    iput-object v0, p0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bHandleRedirects:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$1;)V
    .locals 0

    .line 692
    invoke-direct {p0, p1}, Lnetwork/NetworkRequest$NetworkRequestParameters;-><init>(Lnetwork/NetworkRequest;)V

    return-void
.end method


# virtual methods
.method public extractRequestParameters(Lcom/naef/jnlua/LuaState;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 711
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 715
    sget-object v4, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v7

    if-ne v4, v7, :cond_0

    .line 717
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 721
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v7, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_1

    :catch_0
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v4, "Malformed URL: %s"

    .line 725
    invoke-static {v1, v4, v7}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "First argument to network.request() should be a URL string"

    .line 731
    invoke-static {v1, v7, v4}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v4, v6

    .line 739
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v7, :cond_2

    .line 741
    sget-object v7, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v9}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v10

    if-ne v7, v10, :cond_1

    .line 744
    invoke-virtual {v1, v9}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const/4 v7, 0x3

    goto :goto_2

    :cond_1
    const-string v7, "GET"

    .line 749
    iput-object v7, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    :cond_2
    const/4 v7, 0x2

    .line 755
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "networkRequest"

    .line 757
    invoke-static {v1, v7, v10}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 761
    new-instance v10, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v10, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    .line 762
    invoke-virtual {v10}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->isRuntimeUnavailable()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 766
    iget-object v10, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    invoke-static {v10}, Lnetwork/NetworkRequest;->access$200(Lnetwork/NetworkRequest;)Lnetwork/LuaLoader;

    move-result-object v10

    invoke-virtual {v10}, Lnetwork/LuaLoader;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v10

    :cond_3
    if-eqz v10, :cond_4

    .line 771
    invoke-static {v1, v7}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v11

    .line 772
    new-instance v12, Lnetwork/NetworkRequest$LuaCallback;

    iget-object v13, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {v12, v13, v11, v10}, Lnetwork/NetworkRequest$LuaCallback;-><init>(Lnetwork/NetworkRequest;ILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V

    iput-object v12, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 782
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_34

    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v10

    if-nez v10, :cond_34

    .line 784
    sget-object v10, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v7}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v11

    const/4 v12, -0x1

    if-ne v10, v11, :cond_33

    const-string v10, "headers"

    .line 788
    invoke-virtual {v1, v7, v10}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 789
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v10

    const-string v13, "Content-Type"

    const/4 v14, -0x2

    if-nez v10, :cond_11

    .line 792
    sget-object v10, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v15

    if-ne v10, v15, :cond_10

    .line 794
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    move-object v10, v4

    move-object v4, v3

    :goto_3
    invoke-virtual {v1, v14}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 798
    invoke-virtual {v1, v14}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_6

    goto/16 :goto_7

    :cond_6
    const-string v11, "Content-Length"

    .line 805
    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_7

    .line 814
    :cond_7
    sget-object v11, Lnetwork/NetworkRequest$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v16

    aget v11, v11, v16

    if-eq v11, v5, :cond_b

    if-eq v11, v9, :cond_9

    if-eq v11, v8, :cond_8

    const/4 v11, 0x0

    goto :goto_4

    .line 831
    :cond_8
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 820
    :cond_9
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v16

    .line 821
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    cmpl-double v11, v18, v16

    if-nez v11, :cond_a

    .line 823
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 827
    :cond_a
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 817
    :cond_b
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v11

    :goto_4
    if-eqz v11, :cond_f

    .line 837
    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    if-nez v8, :cond_c

    .line 839
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 842
    :cond_c
    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 846
    invoke-static {v11}, Lnetwork/NetworkRequest;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 851
    :try_start_1
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v2

    const-string v4, "\'header\' value for Content-Type header contained an unsupported character encoding: %s"

    .line 855
    invoke-static {v1, v4, v8}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    move-object v10, v4

    goto :goto_6

    :cond_d
    :goto_5
    move-object v4, v6

    .line 861
    :cond_e
    :goto_6
    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    invoke-interface {v8, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v15, v8, v2

    aput-object v11, v8, v5

    const-string v11, "Header - %s: %s"

    .line 862
    invoke-static {v11, v8}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    :cond_f
    :goto_7
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/4 v8, 0x3

    goto/16 :goto_3

    :cond_10
    new-array v4, v5, [Ljava/lang/Object;

    .line 868
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v8, "\'headers\' value of params table, if provided, should be a table (got %s)"

    invoke-static {v1, v8, v4}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    move-object v10, v6

    goto :goto_8

    :cond_11
    move-object v10, v4

    move-object v4, v3

    .line 872
    :cond_12
    :goto_8
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 876
    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    if-nez v8, :cond_13

    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const-string v11, "POST"

    .line 877
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 878
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_13

    .line 880
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 881
    iget-object v4, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    const-string v8, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-interface {v4, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v6

    .line 888
    :cond_13
    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    const-string v11, "HEAD"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v8, v11, :cond_15

    .line 891
    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    if-nez v8, :cond_14

    .line 893
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 896
    :cond_14
    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    const-string v11, "Accept-Encoding"

    const-string v15, "identity"

    invoke-interface {v8, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_15
    iput-object v6, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bHandleRedirects:Ljava/lang/Boolean;

    const-string v8, "handleRedirects"

    .line 900
    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 901
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v8

    if-nez v8, :cond_18

    .line 903
    sget-object v8, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v11

    if-ne v8, v11, :cond_17

    .line 905
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bHandleRedirects:Ljava/lang/Boolean;

    new-array v8, v5, [Ljava/lang/Object;

    .line 906
    iget-object v11, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bHandleRedirects:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_16

    const-string v11, "true"

    goto :goto_9

    :cond_16
    const-string v11, "false"

    :goto_9
    aput-object v11, v8, v2

    const-string v11, "Redirect option provided, was: %s"

    invoke-static {v11, v8}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_17
    new-array v8, v5, [Ljava/lang/Object;

    .line 910
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v2

    const-string v10, "\'handleRedirects\' value of params table, if provided, should be a boolean value (got %s)"

    invoke-static {v1, v10, v8}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v10, v6

    .line 914
    :cond_18
    :goto_a
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 916
    iput-object v6, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    const-string v8, "bodyType"

    .line 917
    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 918
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 921
    sget-object v8, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v11

    if-ne v8, v11, :cond_1a

    .line 923
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "\\b(text)|(binary)\\b"

    .line 924
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string v11, "\\b(text)\\b"

    .line 926
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    new-array v8, v5, [Ljava/lang/Object;

    .line 927
    iget-object v11, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    aput-object v11, v8, v2

    const-string v11, "Request body is text: %b"

    invoke-static {v11, v8}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_19
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v8, v10, v2

    const-string v8, "\'bodyType\' value of params table was invalid, must be either \"text\" or \"binary\", but was: \"%s\""

    .line 931
    invoke-static {v1, v8, v10}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_1a
    new-array v8, v5, [Ljava/lang/Object;

    .line 937
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v2

    const-string v10, "\'bodyType\' value of params table, if provided, should be a string value (got %s)"

    invoke-static {v1, v10, v8}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    move-object v10, v6

    .line 941
    :cond_1b
    :goto_c
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v8, "body"

    .line 943
    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 944
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v8

    const-string v11, "pathForFile from LUA: %s - isResourceFile: %b"

    const-string v15, "_network_pathForFile"

    const-string v14, "baseDirectory"

    const-string v9, "filename"

    if-nez v8, :cond_25

    .line 949
    sget-object v8, Lnetwork/NetworkRequest$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v18

    aget v8, v8, v18

    if-eq v8, v5, :cond_20

    const/4 v13, 0x4

    if-eq v8, v13, :cond_1c

    new-array v3, v5, [Ljava/lang/Object;

    .line 1040
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    const-string v8, "Either body string or table specifying body file is required if \'body\' is specified (got %s)"

    invoke-static {v1, v8, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d
    move-object v10, v6

    goto/16 :goto_11

    .line 993
    :cond_1c
    iput-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    .line 997
    invoke-virtual {v1, v12, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 998
    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    if-ne v3, v8, :cond_1f

    .line 1004
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1007
    invoke-virtual {v1, v12, v14}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1008
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 1010
    const-class v8, Ljava/lang/Object;

    invoke-virtual {v1, v12, v8}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_e

    :cond_1d
    const/4 v8, 0x0

    .line 1012
    :goto_e
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1015
    invoke-virtual {v1, v15}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    if-eqz v8, :cond_1e

    .line 1019
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v5, 0x2

    const/4 v13, 0x2

    goto :goto_f

    :cond_1e
    const/4 v5, 0x2

    const/4 v13, 0x1

    .line 1023
    :goto_f
    invoke-virtual {v1, v13, v5}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 1024
    invoke-virtual {v1, v12}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/4 v13, -0x2

    .line 1025
    invoke-virtual {v1, v13}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 1026
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v3, v13, v2

    const/16 v18, 0x1

    aput-object v8, v13, v18

    const-string v12, "body filename: %s, baseDirectory: "

    .line 1028
    invoke-static {v12, v13}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v22, v12, v2

    aput-object v23, v12, v18

    .line 1029
    invoke-static {v11, v12}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    new-instance v5, Lnetwork/NetworkRequest$CoronaFileSpec;

    iget-object v12, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    invoke-direct/range {v18 .. v23}, Lnetwork/NetworkRequest$CoronaFileSpec;-><init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v5, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    goto :goto_11

    :cond_1f
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "body \'filename\' value is required and must be a string value"

    .line 1034
    invoke-static {v1, v5, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 952
    :cond_20
    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Request body from String (text)"

    .line 954
    invoke-static {v5, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, -0x1

    .line 955
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    .line 957
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_24

    .line 959
    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_21

    .line 961
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 966
    :cond_21
    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    const-string v4, "text/plain; charset=UTF-8"

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_22
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Request body from String (binary)"

    .line 972
    invoke-static {v5, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, -0x1

    .line 973
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->toByteArray(I)[B

    move-result-object v5

    iput-object v5, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    .line 975
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_24

    .line 977
    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_23

    .line 979
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    .line 984
    :cond_23
    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    const-string v4, "application/octet-stream"

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    move-object v4, v6

    .line 1045
    :cond_24
    :goto_11
    iget-object v3, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    if-eqz v3, :cond_25

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_25

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Request Content-Type header is required when request \'body\' is specified"

    .line 1047
    invoke-static {v1, v4, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v10, v6

    :cond_25
    const/4 v3, 0x1

    .line 1051
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "progress"

    .line 1053
    invoke-virtual {v1, v7, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v4, -0x1

    .line 1054
    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v5

    if-nez v5, :cond_27

    .line 1056
    sget-object v5, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    if-ne v5, v8, :cond_26

    .line 1058
    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1060
    invoke-static {v5}, Lnetwork/NetworkRequest$ProgressDirection;->fromString(Ljava/lang/String;)Lnetwork/NetworkRequest$ProgressDirection;

    move-result-object v4

    iput-object v4, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    new-array v4, v3, [Ljava/lang/Object;

    .line 1061
    iget-object v8, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    invoke-static {v8}, Lnetwork/NetworkRequest$ProgressDirection;->toString(Lnetwork/NetworkRequest$ProgressDirection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v8, "Progress was: %s"

    invoke-static {v8, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    iget-object v4, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    if-nez v4, :cond_27

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v5, v4, v2

    const-string v5, "\'progress\' value of params table was invalid, if provided, must be either \"upload\" or \"download\", but was: \"%s\""

    .line 1067
    invoke-static {v1, v5, v4}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v10, v6

    goto :goto_12

    :cond_26
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, -0x1

    .line 1073
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v8, "\'progress\' value of params table, if provided, should be a string value (got %s)"

    invoke-static {v1, v8, v4}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v10, v6

    goto :goto_13

    :cond_27
    :goto_12
    const/4 v5, -0x1

    .line 1077
    :goto_13
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v3, "response"

    .line 1079
    invoke-virtual {v1, v7, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1080
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1083
    sget-object v3, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    if-ne v3, v4, :cond_2d

    .line 1087
    invoke-virtual {v1, v5, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1088
    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    if-ne v3, v4, :cond_2c

    .line 1095
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1096
    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1098
    invoke-virtual {v1, v5, v14}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1099
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v8

    if-nez v8, :cond_28

    .line 1101
    const-class v8, Ljava/lang/Object;

    invoke-virtual {v1, v5, v8}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_14

    :cond_28
    const/4 v8, 0x0

    .line 1103
    :goto_14
    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 1106
    invoke-virtual {v1, v15}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    if-eqz v8, :cond_29

    .line 1110
    invoke-virtual {v1, v8}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v4, 0x2

    goto :goto_15

    :cond_29
    const/4 v4, 0x1

    :goto_15
    const/4 v9, 0x2

    .line 1114
    invoke-virtual {v1, v4, v9}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 1115
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/4 v4, -0x2

    .line 1116
    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1117
    invoke-virtual {v1, v9}, Lcom/naef/jnlua/LuaState;->pop(I)V

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const/4 v12, 0x1

    aput-object v8, v5, v12

    const-string v13, "response filename: %s, baseDirectory: %s"

    .line 1118
    invoke-static {v13, v5}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object v23, v5, v12

    .line 1119
    invoke-static {v11, v5}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2a

    if-eqz v4, :cond_2a

    .line 1128
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_16

    :catch_2
    :cond_2a
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_2b

    .line 1135
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2b

    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v11, 0x0

    .line 1138
    invoke-virtual {v5, v9, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_2b
    new-instance v5, Lnetwork/NetworkRequest$CoronaFileSpec;

    iget-object v9, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->this$0:Lnetwork/NetworkRequest;

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v4

    invoke-direct/range {v18 .. v23}, Lnetwork/NetworkRequest$CoronaFileSpec;-><init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v5, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    const/4 v3, 0x1

    const/4 v5, -0x1

    goto :goto_18

    :cond_2c
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, -0x1

    .line 1146
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v8, "response \'filename\' value is required and must be a string value (got %s)"

    invoke-static {v1, v8, v4}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_2d
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 1152
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v8, "\'response\' value of params table, if provided, should be a table specifying response location values (got %s)"

    invoke-static {v1, v8, v4}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_17
    move-object v10, v6

    goto :goto_18

    :cond_2e
    const/4 v3, 0x1

    .line 1156
    :goto_18
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "timeout"

    .line 1158
    invoke-virtual {v1, v7, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1159
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1161
    sget-object v4, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    if-ne v4, v8, :cond_2f

    .line 1163
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v4

    iput v4, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    new-array v4, v3, [Ljava/lang/Object;

    .line 1164
    iget v6, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "Request timeout provided, was: %d"

    invoke-static {v6, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_2f
    new-array v4, v3, [Ljava/lang/Object;

    .line 1168
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v8, "\'timeout\' value of params table, if provided, should be a numeric value (got %s)"

    invoke-static {v1, v8, v4}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_30
    :goto_19
    move-object v6, v10

    .line 1172
    :goto_1a
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v4, "debug"

    .line 1174
    invoke-virtual {v1, v7, v4}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 1175
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1177
    sget-object v4, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v8

    if-ne v4, v8, :cond_31

    .line 1179
    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    new-array v4, v3, [Ljava/lang/Object;

    .line 1180
    iget-object v5, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    const-string v2, "debug setting provided, was: %b"

    invoke-static {v2, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    :cond_31
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const-string v2, "successNotification"

    .line 1185
    invoke-virtual {v1, v7, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v4, -0x1

    .line 1186
    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1189
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1188
    invoke-static {v2, v1, v4}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->from(Landroid/content/Context;Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v2

    iput-object v2, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->successNotificationSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 1191
    :cond_32
    invoke-virtual {v1, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_1b

    :cond_33
    const/4 v3, 0x1

    const/4 v4, -0x1

    new-array v5, v3, [Ljava/lang/Object;

    .line 1195
    invoke-virtual {v1, v4}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "Fourth argument to network.request(), if provided, should be a params table (got %s)"

    invoke-static {v1, v2, v5}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    :cond_34
    move-object v6, v4

    .line 1200
    :goto_1b
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1
.end method
